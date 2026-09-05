// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DelegatedAdministrator resources.
class DelegatedAdministratorState {
  /// The account ID number of the member account in the organization to register as a delegated administrator.
  final pulumi.Input<String?>? accountId;
  /// ARN of the delegated administrator's account.
  final pulumi.Input<String?>? arn;
  /// The date when the account was made a delegated administrator.
  final pulumi.Input<String?>? delegationEnabledDate;
  /// The email address that is associated with the delegated administrator's AWS account.
  final pulumi.Input<String?>? email;
  /// The method by which the delegated administrator's account joined the organization.
  final pulumi.Input<String?>? joinedMethod;
  /// The date when the delegated administrator's account became a part of the organization.
  final pulumi.Input<String?>? joinedTimestamp;
  /// The friendly name of the delegated administrator's account.
  final pulumi.Input<String?>? name;
  /// The service principal of the AWS service for which you want to make the member account a delegated administrator.
  final pulumi.Input<String?>? servicePrincipal;
  /// The status of the delegated administrator's account in the organization.
  final pulumi.Input<String?>? status;

  /// Creates a new [DelegatedAdministratorState].
  /// [accountId] The account ID number of the member account in the organization to register as a delegated administrator.
  /// [arn] ARN of the delegated administrator's account.
  /// [delegationEnabledDate] The date when the account was made a delegated administrator.
  /// [email] The email address that is associated with the delegated administrator's AWS account.
  /// [joinedMethod] The method by which the delegated administrator's account joined the organization.
  /// [joinedTimestamp] The date when the delegated administrator's account became a part of the organization.
  /// [name] The friendly name of the delegated administrator's account.
  /// [servicePrincipal] The service principal of the AWS service for which you want to make the member account a delegated administrator.
  /// [status] The status of the delegated administrator's account in the organization.
  const DelegatedAdministratorState({
    this.accountId,
    this.arn,
    this.delegationEnabledDate,
    this.email,
    this.joinedMethod,
    this.joinedTimestamp,
    this.name,
    this.servicePrincipal,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'arn': ?arn,
      'delegationEnabledDate': ?delegationEnabledDate,
      'email': ?email,
      'joinedMethod': ?joinedMethod,
      'joinedTimestamp': ?joinedTimestamp,
      'name': ?name,
      'servicePrincipal': ?servicePrincipal,
      'status': ?status,
    };
  }

  factory DelegatedAdministratorState.fromMap(Map<String, dynamic> map) {
    return DelegatedAdministratorState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      delegationEnabledDate: (() { final guardedValue = map['delegationEnabledDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      joinedMethod: (() { final guardedValue = map['joinedMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      joinedTimestamp: (() { final guardedValue = map['joinedTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipal: (() { final guardedValue = map['servicePrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
