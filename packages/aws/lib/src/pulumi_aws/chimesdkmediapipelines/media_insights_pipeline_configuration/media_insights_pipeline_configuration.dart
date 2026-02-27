import 'package:pulumi/pulumi.dart' as pulumi;
import '../media_insights_pipeline_configuration_element/media_insights_pipeline_configuration_element.dart';
import '../media_insights_pipeline_configuration_real_time_alert_configuration/media_insights_pipeline_configuration_real_time_alert_configuration.dart';
import 'media_insights_pipeline_configuration_args.dart';

/// Resource for managing an AWS Chime SDK Media Pipelines Media Insights Pipeline Configuration.
/// Consult the [Call analytics developer guide](https://docs.aws.amazon.com/chime-sdk/latest/dg/call-analytics.html) for more detailed information about usage.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// - The required policies on `call_analytics_role` will vary based on the selected processors. See [Call analytics resource access role](https://docs.aws.amazon.com/chime-sdk/latest/dg/ca-resource-access-role.html) for directions on choosing appropriate policies.
///
/// ### Transcribe Call Analytics processor usage
///
///
///
/// ### Real time alerts usage
///
///
///
/// ### Transcribe processor usage
///
///
///
/// ### Voice analytics processor usage
///
///
///
/// ### S3 Recording sink usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Chime SDK media insights pipeline configuration.
///
///
/// Using `pulumi import`, import Chime SDK Media Pipelines Media Insights Pipeline Configuration using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:chimesdkmediapipelines/mediaInsightsPipelineConfiguration:MediaInsightsPipelineConfiguration example abcdef123456
/// ```
class MediaInsightsPipelineConfiguration extends pulumi.CustomResource {
  /// ARN of the Media Insights Pipeline Configuration.
  late final pulumi.Output<String> arn;

  /// Collection of processors and sinks to transform media and deliver data.
  late final pulumi.Output<List<MediaInsightsPipelineConfigurationElement>>
      elements;

  /// Configuration name.
  late final pulumi.Output<String> name;

  /// Configuration for real-time alert rules to send EventBridge notifications when certain conditions are met.
  late final pulumi
      .Output<MediaInsightsPipelineConfigurationRealTimeAlertConfiguration?>
      realTimeAlertConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of IAM Role used by service to invoke processors and sinks specified by configuration elements.
  late final pulumi.Output<String> resourceAccessRoleArn;

  /// Key-value map of tags for the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  MediaInsightsPipelineConfiguration(
    String name, {
    MediaInsightsPipelineConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chimesdkmediapipelines/mediaInsightsPipelineConfiguration:MediaInsightsPipelineConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.elements =
        registerOutput<List<MediaInsightsPipelineConfigurationElement>>(
            'elements');
    this.name = registerOutput<String>('name');
    this.realTimeAlertConfiguration = registerOutput<
            MediaInsightsPipelineConfigurationRealTimeAlertConfiguration?>(
        'realTimeAlertConfiguration');
    this.region = registerOutput<String>('region');
    this.resourceAccessRoleArn =
        registerOutput<String>('resourceAccessRoleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
