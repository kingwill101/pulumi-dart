// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_sse_configuration.dart';

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// Timestamp when the access group was created.
  final pulumi.Input<String>? creationTime;
  /// Timestamp when the access group was deleted.
  final pulumi.Input<String>? deletionTime;
  /// Description of the verified access group.
  final pulumi.Input<String>? description;
  /// Timestamp when the access group was last updated.
  final pulumi.Input<String>? lastUpdatedTime;
  /// AWS account number owning this resource.
  final pulumi.Input<String>? owner;
  /// The policy document that is associated with this resource.
  final pulumi.Input<String>? policyDocument;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block to use KMS keys for server-side encryption.
  final pulumi.Input<GroupSseConfiguration>? sseConfiguration;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ARN of this verified acess group.
  final pulumi.Input<String>? verifiedaccessGroupArn;
  /// ID of this verified access group.
  final pulumi.Input<String>? verifiedaccessGroupId;
  /// The id of the verified access instance this group is associated with.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? verifiedaccessInstanceId;

  /// Creates a new [GroupState].
  /// [creationTime] Timestamp when the access group was created.
  /// [deletionTime] Timestamp when the access group was deleted.
  /// [description] Description of the verified access group.
  /// [lastUpdatedTime] Timestamp when the access group was last updated.
  /// [owner] AWS account number owning this resource.
  /// [policyDocument] The policy document that is associated with this resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sseConfiguration] Configuration block to use KMS keys for server-side encryption.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [verifiedaccessGroupArn] ARN of this verified acess group.
  /// [verifiedaccessGroupId] ID of this verified access group.
  /// [verifiedaccessInstanceId] The id of the verified access instance this group is associated with.
  GroupState({
    this.creationTime,
    this.deletionTime,
    this.description,
    this.lastUpdatedTime,
    this.owner,
    this.policyDocument,
    this.region,
    this.sseConfiguration,
    this.tags,
    this.tagsAll,
    this.verifiedaccessGroupArn,
    this.verifiedaccessGroupId,
    this.verifiedaccessInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': ?creationTime,
      'deletionTime': ?deletionTime,
      'description': ?description,
      'lastUpdatedTime': ?lastUpdatedTime,
      'owner': ?owner,
      'policyDocument': ?policyDocument,
      'region': ?region,
      'sseConfiguration': ?pulumi.Input.mapOptionalInputValue<GroupSseConfiguration, Map<String, dynamic>>(sseConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'verifiedaccessGroupArn': ?verifiedaccessGroupArn,
      'verifiedaccessGroupId': ?verifiedaccessGroupId,
      'verifiedaccessInstanceId': ?verifiedaccessInstanceId,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      creationTime: map['creationTime'] == null ? null : (map['creationTime'] as String).input(),
      deletionTime: map['deletionTime'] == null ? null : (map['deletionTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : (map['lastUpdatedTime'] as String).input(),
      owner: map['owner'] == null ? null : (map['owner'] as String).input(),
      policyDocument: map['policyDocument'] == null ? null : (map['policyDocument'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sseConfiguration: map['sseConfiguration'] == null ? null : (GroupSseConfiguration.fromMap((map['sseConfiguration'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      verifiedaccessGroupArn: map['verifiedaccessGroupArn'] == null ? null : (map['verifiedaccessGroupArn'] as String).input(),
      verifiedaccessGroupId: map['verifiedaccessGroupId'] == null ? null : (map['verifiedaccessGroupId'] as String).input(),
      verifiedaccessInstanceId: map['verifiedaccessInstanceId'] == null ? null : (map['verifiedaccessInstanceId'] as String).input(),
    );
  }
}

