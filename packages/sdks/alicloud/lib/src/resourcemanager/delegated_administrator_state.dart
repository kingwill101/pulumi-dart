// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DelegatedAdministrator resources.
class DelegatedAdministratorState {
  /// The Alibaba Cloud account ID of the member in the resource directory.
  final pulumi.Input<String>? accountId;
  /// The identifier of the trusted service.
  final pulumi.Input<String>? servicePrincipal;

  /// Creates a new [DelegatedAdministratorState].
  /// [accountId] The Alibaba Cloud account ID of the member in the resource directory.
  /// [servicePrincipal] The identifier of the trusted service.
  DelegatedAdministratorState({
    this.accountId,
    this.servicePrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'servicePrincipal': ?servicePrincipal,
    };
  }

  factory DelegatedAdministratorState.fromMap(Map<String, dynamic> map) {
    return DelegatedAdministratorState(
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      servicePrincipal: map['servicePrincipal'] == null ? null : (map['servicePrincipal']! as String).input(),
    );
  }
}

