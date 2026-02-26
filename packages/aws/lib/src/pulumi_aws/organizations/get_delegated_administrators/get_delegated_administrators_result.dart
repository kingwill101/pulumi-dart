// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_delegated_administrators_delegated_administrator/get_delegated_administrators_delegated_administrator.dart';

/// Result data returned by getDelegatedAdministrators.
class GetDelegatedAdministratorsResult {
  /// The list of delegated administrators in your organization, which have the following attributes:
  final List<GetDelegatedAdministratorsDelegatedAdministrator>
      delegatedAdministrators;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? servicePrincipal;

  GetDelegatedAdministratorsResult({
    required this.delegatedAdministrators,
    required this.id,
    this.servicePrincipal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['delegatedAdministrators'] = Input.encodeList<
            GetDelegatedAdministratorsDelegatedAdministrator,
            Map<String, dynamic>>(
        delegatedAdministrators, (value) => value.toMap());
    map['id'] = id;
    final servicePrincipalValue = servicePrincipal;
    if (servicePrincipalValue != null) {
      map['servicePrincipal'] = servicePrincipalValue;
    }
    return map;
  }

  factory GetDelegatedAdministratorsResult.fromMap(Map<String, dynamic> map) {
    return GetDelegatedAdministratorsResult(
      delegatedAdministrators:
          Input.decodeList<GetDelegatedAdministratorsDelegatedAdministrator>(
              map['delegatedAdministrators'],
              (value) =>
                  GetDelegatedAdministratorsDelegatedAdministrator.fromMap(
                      (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      servicePrincipal: map['servicePrincipal'] == null
          ? null
          : map['servicePrincipal'] as String,
    );
  }
}
