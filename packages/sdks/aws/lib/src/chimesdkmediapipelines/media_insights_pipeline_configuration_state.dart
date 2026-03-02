// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'media_insights_pipeline_configuration_element.dart';
import 'media_insights_pipeline_configuration_real_time_alert_configuration.dart';

/// Input properties used for looking up and filtering MediaInsightsPipelineConfiguration resources.
class MediaInsightsPipelineConfigurationState {
  /// ARN of the Media Insights Pipeline Configuration.
  final pulumi.Input<String>? arn;
  /// Collection of processors and sinks to transform media and deliver data.
  final pulumi.Input<List<MediaInsightsPipelineConfigurationElement>>? elements;
  /// Configuration name.
  final pulumi.Input<String>? name;
  /// Configuration for real-time alert rules to send EventBridge notifications when certain conditions are met.
  final pulumi.Input<MediaInsightsPipelineConfigurationRealTimeAlertConfiguration>? realTimeAlertConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of IAM Role used by service to invoke processors and sinks specified by configuration elements.
  final pulumi.Input<String>? resourceAccessRoleArn;
  /// Key-value map of tags for the resource.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [MediaInsightsPipelineConfigurationState].
  /// [arn] ARN of the Media Insights Pipeline Configuration.
  /// [elements] Collection of processors and sinks to transform media and deliver data.
  /// [name] Configuration name.
  /// [realTimeAlertConfiguration] Configuration for real-time alert rules to send EventBridge notifications when certain conditions are met.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceAccessRoleArn] ARN of IAM Role used by service to invoke processors and sinks specified by configuration elements.
  /// [tags] Key-value map of tags for the resource.
  /// [tagsAll] Optional.
  MediaInsightsPipelineConfigurationState({
    this.arn,
    this.elements,
    this.name,
    this.realTimeAlertConfiguration,
    this.region,
    this.resourceAccessRoleArn,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'elements': ?pulumi.Input.mapOptionalInputValue<List<MediaInsightsPipelineConfigurationElement>, List<Map<String, dynamic>>>(elements, (value) => pulumi.Input.encodeList<MediaInsightsPipelineConfigurationElement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'realTimeAlertConfiguration': ?pulumi.Input.mapOptionalInputValue<MediaInsightsPipelineConfigurationRealTimeAlertConfiguration, Map<String, dynamic>>(realTimeAlertConfiguration, (value) => value.toMap()),
      'region': ?region,
      'resourceAccessRoleArn': ?resourceAccessRoleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory MediaInsightsPipelineConfigurationState.fromMap(Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      elements: map['elements'] == null ? null : (pulumi.Input.decodeList<MediaInsightsPipelineConfigurationElement>(map['elements'], (value) => MediaInsightsPipelineConfigurationElement.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      realTimeAlertConfiguration: map['realTimeAlertConfiguration'] == null ? null : (MediaInsightsPipelineConfigurationRealTimeAlertConfiguration.fromMap((map['realTimeAlertConfiguration'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceAccessRoleArn: map['resourceAccessRoleArn'] == null ? null : (map['resourceAccessRoleArn'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

