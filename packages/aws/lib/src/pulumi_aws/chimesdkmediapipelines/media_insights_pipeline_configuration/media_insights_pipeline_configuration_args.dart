// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../media_insights_pipeline_configuration_element/media_insights_pipeline_configuration_element.dart';
import '../media_insights_pipeline_configuration_real_time_alert_configuration/media_insights_pipeline_configuration_real_time_alert_configuration.dart';

/// The set of arguments for MediaInsightsPipelineConfiguration.
class MediaInsightsPipelineConfigurationArgs {
  /// Collection of processors and sinks to transform media and deliver data.
  final Input<List<MediaInsightsPipelineConfigurationElement>> elements;

  /// Configuration name.
  final Input<String>? name;

  /// Configuration for real-time alert rules to send EventBridge notifications when certain conditions are met.
  final Input<MediaInsightsPipelineConfigurationRealTimeAlertConfiguration>?
      realTimeAlertConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of IAM Role used by service to invoke processors and sinks specified by configuration elements.
  final Input<String> resourceAccessRoleArn;

  /// Key-value map of tags for the resource.
  final Input<Map<String, String>>? tags;

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
    map['elements'] = Input.mapInputValue<
            List<MediaInsightsPipelineConfigurationElement>,
            List<Map<String, dynamic>>>(
        elements,
        (value) => Input.encodeList<MediaInsightsPipelineConfigurationElement,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final realTimeAlertConfigurationValue = realTimeAlertConfiguration;
    if (realTimeAlertConfigurationValue != null) {
      map['realTimeAlertConfiguration'] = Input.mapOptionalInputValue<
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
      elements: Input.asInput<List<MediaInsightsPipelineConfigurationElement>>(
          map['elements']),
      name: Input.asOptionalInput<String>(map['name']),
      realTimeAlertConfiguration: Input.asOptionalInput<
              MediaInsightsPipelineConfigurationRealTimeAlertConfiguration>(
          map['realTimeAlertConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceAccessRoleArn:
          Input.asInput<String>(map['resourceAccessRoleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
