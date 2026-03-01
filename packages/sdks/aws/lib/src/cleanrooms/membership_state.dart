// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_default_result_configuration.dart';
import 'membership_payment_configuration.dart';

/// Input properties used for looking up and filtering Membership resources.
class MembershipState {
  /// The ARN of the membership.
  final pulumi.Input<String>? arn;
  /// The ARN of the joined collaboration.
  final pulumi.Input<String>? collaborationArn;
  /// The account ID of the collaboration's creator.
  final pulumi.Input<String>? collaborationCreatorAccountId;
  /// The display name of the collaboration's creator.
  final pulumi.Input<String>? collaborationCreatorDisplayName;
  /// The ID of the collaboration to which the member was invited.
  final pulumi.Input<String>? collaborationId;
  /// The name of the joined collaboration.
  final pulumi.Input<String>? collaborationName;
  /// The date and time the membership was created.
  final pulumi.Input<String>? createTime;
  /// The default configuration for a query result.
  final pulumi.Input<MembershipDefaultResultConfiguration>? defaultResultConfiguration;
  /// The list of abilities for the invited member.
  final pulumi.Input<List<String>>? memberAbilities;
  final pulumi.Input<MembershipPaymentConfiguration>? paymentConfiguration;
  /// An indicator as to whether query logging has been enabled or disabled for the membership.
  final pulumi.Input<String>? queryLogStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The status of the membership.
  final pulumi.Input<String>? status;
  /// Key value pairs which tag the membership.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The date and time the membership was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MembershipState].
  /// [arn] The ARN of the membership.
  /// [collaborationArn] The ARN of the joined collaboration.
  /// [collaborationCreatorAccountId] The account ID of the collaboration's creator.
  /// [collaborationCreatorDisplayName] The display name of the collaboration's creator.
  /// [collaborationId] The ID of the collaboration to which the member was invited.
  /// [collaborationName] The name of the joined collaboration.
  /// [createTime] The date and time the membership was created.
  /// [defaultResultConfiguration] The default configuration for a query result.
  /// [memberAbilities] The list of abilities for the invited member.
  /// [paymentConfiguration] Optional.
  /// [queryLogStatus] An indicator as to whether query logging has been enabled or disabled for the membership.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The status of the membership.
  /// [tags] Key value pairs which tag the membership.
  /// [tagsAll] Optional.
  /// [updateTime] The date and time the membership was last updated.
  MembershipState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? collaborationArn,
    pulumi.Output<String>? collaborationCreatorAccountId,
    pulumi.Output<String>? collaborationCreatorDisplayName,
    pulumi.Output<String>? collaborationId,
    pulumi.Output<String>? collaborationName,
    pulumi.Output<String>? createTime,
    pulumi.Output<MembershipDefaultResultConfiguration>? defaultResultConfiguration,
    pulumi.Output<List<String>>? memberAbilities,
    pulumi.Output<MembershipPaymentConfiguration>? paymentConfiguration,
    pulumi.Output<String>? queryLogStatus,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? updateTime,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      collaborationArn = pulumi.Input.asOptionalInput<String>(collaborationArn),
      collaborationCreatorAccountId = pulumi.Input.asOptionalInput<String>(collaborationCreatorAccountId),
      collaborationCreatorDisplayName = pulumi.Input.asOptionalInput<String>(collaborationCreatorDisplayName),
      collaborationId = pulumi.Input.asOptionalInput<String>(collaborationId),
      collaborationName = pulumi.Input.asOptionalInput<String>(collaborationName),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      defaultResultConfiguration = pulumi.Input.asOptionalInput<MembershipDefaultResultConfiguration>(defaultResultConfiguration),
      memberAbilities = pulumi.Input.asOptionalInput<List<String>>(memberAbilities),
      paymentConfiguration = pulumi.Input.asOptionalInput<MembershipPaymentConfiguration>(paymentConfiguration),
      queryLogStatus = pulumi.Input.asOptionalInput<String>(queryLogStatus),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'collaborationArn': ?collaborationArn,
      'collaborationCreatorAccountId': ?collaborationCreatorAccountId,
      'collaborationCreatorDisplayName': ?collaborationCreatorDisplayName,
      'collaborationId': ?collaborationId,
      'collaborationName': ?collaborationName,
      'createTime': ?createTime,
      'defaultResultConfiguration': ?pulumi.Input.mapOptionalInputValue<MembershipDefaultResultConfiguration, Map<String, dynamic>>(defaultResultConfiguration, (value) => value.toMap()),
      'memberAbilities': ?memberAbilities,
      'paymentConfiguration': ?pulumi.Input.mapOptionalInputValue<MembershipPaymentConfiguration, Map<String, dynamic>>(paymentConfiguration, (value) => value.toMap()),
      'queryLogStatus': ?queryLogStatus,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'updateTime': ?updateTime,
    };
  }

  factory MembershipState.fromMap(Map<String, dynamic> map) {
    return MembershipState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      collaborationArn: map['collaborationArn'] == null ? null : pulumi.Output.create<String>(map['collaborationArn'] as String),
      collaborationCreatorAccountId: map['collaborationCreatorAccountId'] == null ? null : pulumi.Output.create<String>(map['collaborationCreatorAccountId'] as String),
      collaborationCreatorDisplayName: map['collaborationCreatorDisplayName'] == null ? null : pulumi.Output.create<String>(map['collaborationCreatorDisplayName'] as String),
      collaborationId: map['collaborationId'] == null ? null : pulumi.Output.create<String>(map['collaborationId'] as String),
      collaborationName: map['collaborationName'] == null ? null : pulumi.Output.create<String>(map['collaborationName'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      defaultResultConfiguration: map['defaultResultConfiguration'] == null ? null : pulumi.Output.create<MembershipDefaultResultConfiguration>(MembershipDefaultResultConfiguration.fromMap((map['defaultResultConfiguration'] as Map).cast<String, dynamic>())),
      memberAbilities: map['memberAbilities'] == null ? null : pulumi.Output.create<List<String>>((map['memberAbilities'] as List).cast<String>()),
      paymentConfiguration: map['paymentConfiguration'] == null ? null : pulumi.Output.create<MembershipPaymentConfiguration>(MembershipPaymentConfiguration.fromMap((map['paymentConfiguration'] as Map).cast<String, dynamic>())),
      queryLogStatus: map['queryLogStatus'] == null ? null : pulumi.Output.create<String>(map['queryLogStatus'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

