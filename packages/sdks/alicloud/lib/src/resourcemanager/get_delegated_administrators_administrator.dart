// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDelegatedAdministratorsAdministrator {
  /// The ID of the member account.
  final pulumi.Input<String> accountId;
  /// The time when the member was specified as a delegated administrator account.
  final pulumi.Input<String> delegationEnabledTime;
  /// The ID of the Delegated Administrator.
  final pulumi.Input<String> id;
  /// The identity of the trusted service.
  final pulumi.Input<String> servicePrincipal;

  /// Creates a new [GetDelegatedAdministratorsAdministrator].
  /// [accountId] The ID of the member account.
  /// [delegationEnabledTime] The time when the member was specified as a delegated administrator account.
  /// [id] The ID of the Delegated Administrator.
  /// [servicePrincipal] The identity of the trusted service.
  const GetDelegatedAdministratorsAdministrator({
    required this.accountId,
    required this.delegationEnabledTime,
    required this.id,
    required this.servicePrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'delegationEnabledTime': delegationEnabledTime,
      'id': id,
      'servicePrincipal': servicePrincipal,
    };
  }

  factory GetDelegatedAdministratorsAdministrator.fromMap(Map<String, dynamic> map) {
    return GetDelegatedAdministratorsAdministrator(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      delegationEnabledTime: pulumi.Input.fromValue(map['delegationEnabledTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      servicePrincipal: pulumi.Input.fromValue(map['servicePrincipal'] as String),
    );
  }
}

