// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'media_insights_pipeline_configuration_element.dart';
import 'media_insights_pipeline_configuration_real_time_alert_configuration.dart';

/// {@template pulumi_chimesdkmediapipelines_media_insights_pipeline_configuration_media_insights_pipeline_configuration_args_doc}
/// The set of arguments for MediaInsightsPipelineConfiguration.
/// {@endtemplate}
/// {@macro pulumi_chimesdkmediapipelines_media_insights_pipeline_configuration_media_insights_pipeline_configuration_args_doc}
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

  /// Creates a new [MediaInsightsPipelineConfigurationArgs].
  /// [elements] Collection of processors and sinks to transform media and deliver data.
  /// [name] Configuration name.
  /// [realTimeAlertConfiguration] Configuration for real-time alert rules to send EventBridge notifications when certain conditions are met.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceAccessRoleArn] ARN of IAM Role used by service to invoke processors and sinks specified by configuration elements.
  /// [tags] Key-value map of tags for the resource.
  MediaInsightsPipelineConfigurationArgs({
    required List<MediaInsightsPipelineConfigurationElement> elements,
    String? name,
    MediaInsightsPipelineConfigurationRealTimeAlertConfiguration?
        realTimeAlertConfiguration,
    String? region,
    required String resourceAccessRoleArn,
    Map<String, String>? tags,
  })  : elements = pulumi.Input.asInput<
            List<MediaInsightsPipelineConfigurationElement>>(elements),
        name = pulumi.Input.asOptionalInput<String>(name),
        realTimeAlertConfiguration = pulumi.Input.asOptionalInput<
                MediaInsightsPipelineConfigurationRealTimeAlertConfiguration>(
            realTimeAlertConfiguration),
        region = pulumi.Input.asOptionalInput<String>(region),
        resourceAccessRoleArn =
            pulumi.Input.asInput<String>(resourceAccessRoleArn),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
          pulumi.Input.decodeList<MediaInsightsPipelineConfigurationElement>(
              map['elements'],
              (value) => MediaInsightsPipelineConfigurationElement.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      realTimeAlertConfiguration: map['realTimeAlertConfiguration'] == null
          ? null
          : MediaInsightsPipelineConfigurationRealTimeAlertConfiguration
              .fromMap((map['realTimeAlertConfiguration'] as Map)
                  .cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      resourceAccessRoleArn: map['resourceAccessRoleArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
