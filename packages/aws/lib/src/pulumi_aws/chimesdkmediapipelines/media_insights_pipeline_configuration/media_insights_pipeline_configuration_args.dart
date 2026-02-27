// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../media_insights_pipeline_configuration_element/media_insights_pipeline_configuration_element.dart';
import '../media_insights_pipeline_configuration_real_time_alert_configuration/media_insights_pipeline_configuration_real_time_alert_configuration.dart';

/// The set of arguments for MediaInsightsPipelineConfiguration.
class MediaInsightsPipelineConfigurationArgs {
  /// Collection of processors and sinks to transform media and deliver data.
  final pulumi.Input<List<MediaInsightsPipelineConfigurationElement>> elements;

  /// Configuration name.
  final pulumi.Input<String>? name;

  /// Configuration for real-time alert rules to send EventBridge notifications when certain conditions are met.
  final pulumi
      .Input<MediaInsightsPipelineConfigurationRealTimeAlertConfiguration>?
      realTimeAlertConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of IAM Role used by service to invoke processors and sinks specified by configuration elements.
  final pulumi.Input<String> resourceAccessRoleArn;

  /// Key-value map of tags for the resource.
  final pulumi.Input<Map<String, String>>? tags;

  MediaInsightsPipelineConfigurationArgs({
    required this.elements,
    this.name,
    this.realTimeAlertConfiguration,
    this.region,
    required this.resourceAccessRoleArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['elements'] = pulumi.Input.mapInputValue<
            List<MediaInsightsPipelineConfigurationElement>,
            List<Map<String, dynamic>>>(
        elements,
        (value) => pulumi.Input.encodeList<
            MediaInsightsPipelineConfigurationElement,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final realTimeAlertConfigurationValue = realTimeAlertConfiguration;
    if (realTimeAlertConfigurationValue != null) {
      map['realTimeAlertConfiguration'] = pulumi.Input.mapOptionalInputValue<
              MediaInsightsPipelineConfigurationRealTimeAlertConfiguration,
              Map<String, dynamic>>(
          realTimeAlertConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceAccessRoleArn'] = resourceAccessRoleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory MediaInsightsPipelineConfigurationArgs.fromMap(
      Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationArgs(
      elements:
          pulumi.Input.asInput<List<MediaInsightsPipelineConfigurationElement>>(
              map['elements']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      realTimeAlertConfiguration: pulumi.Input.asOptionalInput<
              MediaInsightsPipelineConfigurationRealTimeAlertConfiguration>(
          map['realTimeAlertConfiguration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceAccessRoleArn:
          pulumi.Input.asInput<String>(map['resourceAccessRoleArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
