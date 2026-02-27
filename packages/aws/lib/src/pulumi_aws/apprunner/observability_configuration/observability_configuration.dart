import 'package:pulumi/pulumi.dart';
import '../observability_configuration_trace_configuration/observability_configuration_trace_configuration.dart';
import 'observability_configuration_args.dart';

/// Manages an App Runner Observability Configuration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the App Runner observability configuration.
///
///
/// Using `pulumi import`, import App Runner Observability Configuration using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/observabilityConfiguration:ObservabilityConfiguration example arn:aws:apprunner:us-east-1:1234567890:observabilityconfiguration/example/1/d75bc7ea55b71e724fe5c23452fe22a1
/// ```
class ObservabilityConfiguration extends CustomResource {
  /// ARN of this observability configuration.
  late final Output<String> arn;

  /// Whether the observability configuration has the highest `observability_configuration_revision` among all configurations that share the same `observability_configuration_name`.
  late final Output<bool> latest;

  /// Name of the observability configuration.
  late final Output<String> observabilityConfigurationName;

  /// The revision of this observability configuration.
  late final Output<int> observabilityConfigurationRevision;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Current state of the observability configuration. An INACTIVE configuration revision has been deleted and can't be used. It is permanently removed some time after deletion.
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration of the tracing feature within this observability configuration. If you don't specify it, App Runner doesn't enable tracing. See Trace Configuration below for more details.
  late final Output<ObservabilityConfigurationTraceConfiguration?>
      traceConfiguration;

  ObservabilityConfiguration(
    String name, {
    ObservabilityConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/observabilityConfiguration:ObservabilityConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.latest = registerOutput<bool>('latest');
    this.observabilityConfigurationName =
        registerOutput<String>('observabilityConfigurationName');
    this.observabilityConfigurationRevision =
        registerOutput<int>('observabilityConfigurationRevision');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.traceConfiguration =
        registerOutput<ObservabilityConfigurationTraceConfiguration?>(
            'traceConfiguration');
  }
}
