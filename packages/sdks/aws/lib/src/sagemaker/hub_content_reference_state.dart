// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_content_reference_timeouts.dart';

/// Input properties used for looking up and filtering HubContentReference resources.
class HubContentReferenceState {
  /// ARN of the private SageMaker Hub that contains the content reference.
  final pulumi.Input<String>? hubArn;
  /// ARN of the hub content reference (without version suffix). The minVersion is stripped off from the end of this ARN to make it usable to list tags.
  final pulumi.Input<String>? hubContentArn;
  /// Name of the hub content reference.
  final pulumi.Input<String>? hubContentName;
  /// Status of the hub content reference. Valid values include `Available`, `Importing`, `Deleting`, `ImportFailed`, `DeleteFailed`.
  final pulumi.Input<String>? hubContentStatus;
  /// Version of the hub content reference.
  final pulumi.Input<String>? hubContentVersion;
  /// Name of the private SageMaker Hub to add the content reference to.
  final pulumi.Input<String>? hubName;
  /// Minimum version of the hub content to reference. Use `"1.0.0"` to support all versions. Changing this value to an empty string forces replacement of the resource.
  final pulumi.Input<String>? minVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the public SageMaker JumpStart hub content to reference. The ARN must not include a version suffix.
  final pulumi.Input<String>? sagemakerPublicHubContentArn;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<HubContentReferenceTimeouts>? timeouts;

  /// Creates a new [HubContentReferenceState].
  /// [hubArn] ARN of the private SageMaker Hub that contains the content reference.
  /// [hubContentArn] ARN of the hub content reference (without version suffix). The minVersion is stripped off from the end of this ARN to make it usable to list tags.
  /// [hubContentName] Name of the hub content reference.
  /// [hubContentStatus] Status of the hub content reference. Valid values include `Available`, `Importing`, `Deleting`, `ImportFailed`, `DeleteFailed`.
  /// [hubContentVersion] Version of the hub content reference.
  /// [hubName] Name of the private SageMaker Hub to add the content reference to.
  /// [minVersion] Minimum version of the hub content to reference. Use `"1.0.0"` to support all versions. Changing this value to an empty string forces replacement of the resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sagemakerPublicHubContentArn] ARN of the public SageMaker JumpStart hub content to reference. The ARN must not include a version suffix.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const HubContentReferenceState({
    this.hubArn,
    this.hubContentArn,
    this.hubContentName,
    this.hubContentStatus,
    this.hubContentVersion,
    this.hubName,
    this.minVersion,
    this.region,
    this.sagemakerPublicHubContentArn,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubArn': ?hubArn,
      'hubContentArn': ?hubContentArn,
      'hubContentName': ?hubContentName,
      'hubContentStatus': ?hubContentStatus,
      'hubContentVersion': ?hubContentVersion,
      'hubName': ?hubName,
      'minVersion': ?minVersion,
      'region': ?region,
      'sagemakerPublicHubContentArn': ?sagemakerPublicHubContentArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<HubContentReferenceTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory HubContentReferenceState.fromMap(Map<String, dynamic> map) {
    return HubContentReferenceState(
      hubArn: (() { final guardedValue = map['hubArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hubContentArn: (() { final guardedValue = map['hubContentArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hubContentName: (() { final guardedValue = map['hubContentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hubContentStatus: (() { final guardedValue = map['hubContentStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hubContentVersion: (() { final guardedValue = map['hubContentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hubName: (() { final guardedValue = map['hubName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minVersion: (() { final guardedValue = map['minVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sagemakerPublicHubContentArn: (() { final guardedValue = map['sagemakerPublicHubContentArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HubContentReferenceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
