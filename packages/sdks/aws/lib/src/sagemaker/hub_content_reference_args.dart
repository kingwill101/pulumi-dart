// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_content_reference_timeouts.dart';

/// {@template pulumi_sagemaker_hub_content_reference_hub_content_reference_args_doc}
/// The set of arguments for HubContentReference.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_hub_content_reference_hub_content_reference_args_doc}
class HubContentReferenceArgs {
  /// Name of the hub content reference.
  final pulumi.Input<String> hubContentName;
  /// Name of the private SageMaker Hub to add the content reference to.
  final pulumi.Input<String> hubName;
  /// Minimum version of the hub content to reference. Use `"1.0.0"` to support all versions. Changing this value to an empty string forces replacement of the resource.
  final pulumi.Input<String>? minVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the public SageMaker JumpStart hub content to reference. The ARN must not include a version suffix.
  final pulumi.Input<String> sagemakerPublicHubContentArn;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<HubContentReferenceTimeouts>? timeouts;

  /// Creates a new [HubContentReferenceArgs].
  /// [hubContentName] Name of the hub content reference.
  /// [hubName] Name of the private SageMaker Hub to add the content reference to.
  /// [minVersion] Minimum version of the hub content to reference. Use `"1.0.0"` to support all versions. Changing this value to an empty string forces replacement of the resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sagemakerPublicHubContentArn] ARN of the public SageMaker JumpStart hub content to reference. The ARN must not include a version suffix.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const HubContentReferenceArgs({
    required this.hubContentName,
    required this.hubName,
    this.minVersion,
    this.region,
    required this.sagemakerPublicHubContentArn,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubContentName': hubContentName,
      'hubName': hubName,
      'minVersion': ?minVersion,
      'region': ?region,
      'sagemakerPublicHubContentArn': sagemakerPublicHubContentArn,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<HubContentReferenceTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory HubContentReferenceArgs.fromMap(Map<String, dynamic> map) {
    return HubContentReferenceArgs(
      hubContentName: pulumi.Input.fromValue(map['hubContentName'] as String),
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      minVersion: (() { final guardedValue = map['minVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sagemakerPublicHubContentArn: pulumi.Input.fromValue(map['sagemakerPublicHubContentArn'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HubContentReferenceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
