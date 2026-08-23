import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_pipeline_args.dart';
import 'telemetry_pipeline_configuration.dart';
import 'telemetry_pipeline_state.dart';
import 'telemetry_pipeline_timeouts.dart';

/// Manages an AWS CloudWatch Observability Admin Telemetry Pipeline.
///
/// Telemetry pipelines allow you to collect, transform, and route telemetry data from AWS services. Each pipeline defines a source, optional processors, and one or more sinks for the telemetry data.
///
/// For more information, see the [AWS CloudWatch Observability Admin Telemetry Pipelines documentation](https://docs.aws.amazon.com/cloudwatch/latest/observabilityadmin/what-is-observabilityadmin.html).
///
/// &gt; **NOTE:** Only one telemetry pipeline per data source type is allowed per account. For example, you can have one pipeline for `amazon_api_gateway/access` and another for `amazon_vpc/flow`, but not two pipelines for the same data source type.
///
/// ## Example Usage
///
/// #### Required
///
/// - `arn` (String) ARN of the telemetry pipeline.
///
///
/// Using `pulumi import`, import CloudWatch Observability Admin Telemetry Pipelines using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:observabilityadmin/telemetryPipeline:TelemetryPipeline example arn:aws:observabilityadmin:us-west-2:1234567890:telemetry-pipeline/id
/// ```
class TelemetryPipeline extends pulumi.CustomResource {
  /// ARN of the telemetry pipeline.
  late final pulumi.Output<String> arn;
  /// Configuration block for the telemetry pipeline. See `configuration` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<TelemetryPipelineConfiguration> configuration;
  /// Name of the telemetry pipeline. Must be between 3 and 28 characters, start with a lowercase letter, and contain only lowercase letters, digits, and hyphens.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<TelemetryPipelineTimeouts?> timeouts;

  /// Creates a new [TelemetryPipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TelemetryPipeline]. {@macro pulumi_observabilityadmin_telemetry_pipeline_telemetry_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TelemetryPipeline(
    String name, {
    TelemetryPipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:observabilityadmin/telemetryPipeline:TelemetryPipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<TelemetryPipelineConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryPipelineConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<TelemetryPipelineTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryPipelineTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [TelemetryPipeline] resource's state with the given [name] and [id].
  static TelemetryPipeline get(
    String name,
    pulumi.Input<String> id, {
    TelemetryPipelineState? state,
  }) {
    return TelemetryPipeline._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TelemetryPipeline._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:observabilityadmin/telemetryPipeline:TelemetryPipeline',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<TelemetryPipelineConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryPipelineConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<TelemetryPipelineTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TelemetryPipelineTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
