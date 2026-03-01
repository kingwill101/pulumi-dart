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
    pulumi.Output<String>? creationTime,
    pulumi.Output<String>? deletionTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? lastUpdatedTime,
    pulumi.Output<String>? owner,
    pulumi.Output<String>? policyDocument,
    pulumi.Output<String>? region,
    pulumi.Output<GroupSseConfiguration>? sseConfiguration,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? verifiedaccessGroupArn,
    pulumi.Output<String>? verifiedaccessGroupId,
    pulumi.Output<String>? verifiedaccessInstanceId,
  }) :
      creationTime = pulumi.Input.asOptionalInput<String>(creationTime),
      deletionTime = pulumi.Input.asOptionalInput<String>(deletionTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      lastUpdatedTime = pulumi.Input.asOptionalInput<String>(lastUpdatedTime),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      policyDocument = pulumi.Input.asOptionalInput<String>(policyDocument),
      region = pulumi.Input.asOptionalInput<String>(region),
      sseConfiguration = pulumi.Input.asOptionalInput<GroupSseConfiguration>(sseConfiguration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      verifiedaccessGroupArn = pulumi.Input.asOptionalInput<String>(verifiedaccessGroupArn),
      verifiedaccessGroupId = pulumi.Input.asOptionalInput<String>(verifiedaccessGroupId),
      verifiedaccessInstanceId = pulumi.Input.asOptionalInput<String>(verifiedaccessInstanceId);

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
      creationTime: map['creationTime'] == null ? null : pulumi.Output.create<String>(map['creationTime'] as String),
      deletionTime: map['deletionTime'] == null ? null : pulumi.Output.create<String>(map['deletionTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedTime'] as String),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      policyDocument: map['policyDocument'] == null ? null : pulumi.Output.create<String>(map['policyDocument'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sseConfiguration: map['sseConfiguration'] == null ? null : pulumi.Output.create<GroupSseConfiguration>(GroupSseConfiguration.fromMap((map['sseConfiguration'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      verifiedaccessGroupArn: map['verifiedaccessGroupArn'] == null ? null : pulumi.Output.create<String>(map['verifiedaccessGroupArn'] as String),
      verifiedaccessGroupId: map['verifiedaccessGroupId'] == null ? null : pulumi.Output.create<String>(map['verifiedaccessGroupId'] as String),
      verifiedaccessInstanceId: map['verifiedaccessInstanceId'] == null ? null : pulumi.Output.create<String>(map['verifiedaccessInstanceId'] as String),
    );
  }
}

