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
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [verifiedaccessGroupArn] ARN of this verified acess group.
  /// [verifiedaccessGroupId] ID of this verified access group.
  /// [verifiedaccessInstanceId] The id of the verified access instance this group is associated with.
  const GroupState({
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
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionTime: (() { final guardedValue = map['deletionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyDocument: (() { final guardedValue = map['policyDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sseConfiguration: (() { final guardedValue = map['sseConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupSseConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      verifiedaccessGroupArn: (() { final guardedValue = map['verifiedaccessGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verifiedaccessGroupId: (() { final guardedValue = map['verifiedaccessGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verifiedaccessInstanceId: (() { final guardedValue = map['verifiedaccessInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
