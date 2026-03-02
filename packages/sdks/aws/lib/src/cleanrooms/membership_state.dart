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
    this.arn,
    this.collaborationArn,
    this.collaborationCreatorAccountId,
    this.collaborationCreatorDisplayName,
    this.collaborationId,
    this.collaborationName,
    this.createTime,
    this.defaultResultConfiguration,
    this.memberAbilities,
    this.paymentConfiguration,
    this.queryLogStatus,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
    this.updateTime,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      collaborationArn: map['collaborationArn'] == null ? null : (map['collaborationArn'] as String).input(),
      collaborationCreatorAccountId: map['collaborationCreatorAccountId'] == null ? null : (map['collaborationCreatorAccountId'] as String).input(),
      collaborationCreatorDisplayName: map['collaborationCreatorDisplayName'] == null ? null : (map['collaborationCreatorDisplayName'] as String).input(),
      collaborationId: map['collaborationId'] == null ? null : (map['collaborationId'] as String).input(),
      collaborationName: map['collaborationName'] == null ? null : (map['collaborationName'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      defaultResultConfiguration: map['defaultResultConfiguration'] == null ? null : (MembershipDefaultResultConfiguration.fromMap((map['defaultResultConfiguration'] as Map).cast<String, dynamic>())).input(),
      memberAbilities: map['memberAbilities'] == null ? null : ((map['memberAbilities'] as List).cast<String>()).input(),
      paymentConfiguration: map['paymentConfiguration'] == null ? null : (MembershipPaymentConfiguration.fromMap((map['paymentConfiguration'] as Map).cast<String, dynamic>())).input(),
      queryLogStatus: map['queryLogStatus'] == null ? null : (map['queryLogStatus'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

