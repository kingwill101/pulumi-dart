// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_delegated_administrators_delegated_administrator.dart';

/// Result data returned by getDelegatedAdministrators.
class GetDelegatedAdministratorsResult {
  /// The list of delegated administrators in your organization, which have the following attributes:
  final List<GetDelegatedAdministratorsDelegatedAdministrator> delegatedAdministrators;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? servicePrincipal;

  /// Creates a new [GetDelegatedAdministratorsResult].
  /// [delegatedAdministrators] The list of delegated administrators in your organization, which have the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [servicePrincipal] Optional.
  const GetDelegatedAdministratorsResult({
    required this.delegatedAdministrators,
    required this.id,
    this.servicePrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegatedAdministrators': pulumi.Input.encodeList<GetDelegatedAdministratorsDelegatedAdministrator, Map<String, dynamic>>(delegatedAdministrators, (value) => value.toMap()),
      'id': id,
      'servicePrincipal': ?servicePrincipal,
    };
  }

  factory GetDelegatedAdministratorsResult.fromMap(Map<String, dynamic> map) {
    return GetDelegatedAdministratorsResult(
      delegatedAdministrators: pulumi.Input.decodeList<GetDelegatedAdministratorsDelegatedAdministrator>(map['delegatedAdministrators']!, (value) => GetDelegatedAdministratorsDelegatedAdministrator.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      servicePrincipal: (() { final guardedValue = map['servicePrincipal']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
