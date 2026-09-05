// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_delegated_administrators_delegated_administrator.dart';

/// Result data returned by getDelegatedAdministrators.
class GetDelegatedAdministratorsResult {
  /// The list of delegated administrators in your organization, which have the following attributes:
  final List<GetDelegatedAdministratorsDelegatedAdministrator>? delegatedAdministrators;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? servicePrincipal;

  /// Creates a new [GetDelegatedAdministratorsResult].
  /// [delegatedAdministrators] The list of delegated administrators in your organization, which have the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [servicePrincipal] Optional.
  const GetDelegatedAdministratorsResult({
    this.delegatedAdministrators,
    this.id,
    this.servicePrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegatedAdministrators': ?(() { final guardedValue = delegatedAdministrators; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDelegatedAdministratorsDelegatedAdministrator, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'servicePrincipal': ?servicePrincipal,
    };
  }

  factory GetDelegatedAdministratorsResult.fromMap(Map<String, dynamic> map) {
    return GetDelegatedAdministratorsResult(
      delegatedAdministrators: (() { final guardedValue = map['delegatedAdministrators']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDelegatedAdministratorsDelegatedAdministrator>(guardedValue, (value) => GetDelegatedAdministratorsDelegatedAdministrator.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      servicePrincipal: (() { final guardedValue = map['servicePrincipal']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
