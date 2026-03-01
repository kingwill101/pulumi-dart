// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DelegatedAdministrator resources.
class DelegatedAdministratorState {
  /// The account ID number of the member account in the organization to register as a delegated administrator.
  final pulumi.Input<String>? accountId;
  /// The Amazon Resource Name (ARN) of the delegated administrator's account.
  final pulumi.Input<String>? arn;
  /// The date when the account was made a delegated administrator.
  final pulumi.Input<String>? delegationEnabledDate;
  /// The email address that is associated with the delegated administrator's AWS account.
  final pulumi.Input<String>? email;
  /// The method by which the delegated administrator's account joined the organization.
  final pulumi.Input<String>? joinedMethod;
  /// The date when the delegated administrator's account became a part of the organization.
  final pulumi.Input<String>? joinedTimestamp;
  /// The friendly name of the delegated administrator's account.
  final pulumi.Input<String>? name;
  /// The service principal of the AWS service for which you want to make the member account a delegated administrator.
  final pulumi.Input<String>? servicePrincipal;
  /// The status of the delegated administrator's account in the organization.
  final pulumi.Input<String>? status;

  /// Creates a new [DelegatedAdministratorState].
  /// [accountId] The account ID number of the member account in the organization to register as a delegated administrator.
  /// [arn] The Amazon Resource Name (ARN) of the delegated administrator's account.
  /// [delegationEnabledDate] The date when the account was made a delegated administrator.
  /// [email] The email address that is associated with the delegated administrator's AWS account.
  /// [joinedMethod] The method by which the delegated administrator's account joined the organization.
  /// [joinedTimestamp] The date when the delegated administrator's account became a part of the organization.
  /// [name] The friendly name of the delegated administrator's account.
  /// [servicePrincipal] The service principal of the AWS service for which you want to make the member account a delegated administrator.
  /// [status] The status of the delegated administrator's account in the organization.
  DelegatedAdministratorState({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? delegationEnabledDate,
    pulumi.Output<String>? email,
    pulumi.Output<String>? joinedMethod,
    pulumi.Output<String>? joinedTimestamp,
    pulumi.Output<String>? name,
    pulumi.Output<String>? servicePrincipal,
    pulumi.Output<String>? status,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      delegationEnabledDate = pulumi.Input.asOptionalInput<String>(delegationEnabledDate),
      email = pulumi.Input.asOptionalInput<String>(email),
      joinedMethod = pulumi.Input.asOptionalInput<String>(joinedMethod),
      joinedTimestamp = pulumi.Input.asOptionalInput<String>(joinedTimestamp),
      name = pulumi.Input.asOptionalInput<String>(name),
      servicePrincipal = pulumi.Input.asOptionalInput<String>(servicePrincipal),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      delegationEnabledDate: map['delegationEnabledDate'] == null ? null : pulumi.Output.create<String>(map['delegationEnabledDate'] as String),
      email: map['email'] == null ? null : pulumi.Output.create<String>(map['email'] as String),
      joinedMethod: map['joinedMethod'] == null ? null : pulumi.Output.create<String>(map['joinedMethod'] as String),
      joinedTimestamp: map['joinedTimestamp'] == null ? null : pulumi.Output.create<String>(map['joinedTimestamp'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      servicePrincipal: map['servicePrincipal'] == null ? null : pulumi.Output.create<String>(map['servicePrincipal'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

