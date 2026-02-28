import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_trace_sampling_config_response.dart';
import 'override_args.dart';

/// Creates a trace configuration override. The response contains a system-generated UUID, that can be used to view, update, or delete the configuration override. Use the List API to view the existing trace configuration overrides.
class Override extends pulumi.CustomResource {
  /// ID of the API proxy that will have its trace configuration overridden.
  late final pulumi.Output<String> apiProxy;
  late final pulumi.Output<String> environmentId;

  /// ID of the trace configuration override specified as a system-generated UUID.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Trace configuration to override.
  late final pulumi.Output<GoogleCloudApigeeV1TraceSamplingConfigResponse>
      samplingConfig;

  /// Creates a new [Override].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Override]. {@macro pulumi_apigee_v1_override_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Override(
    String name, {
    OverrideArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Override',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiProxy = registerOutput<String>('apiProxy');
    this.environmentId = registerOutput<String>('environmentId');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.samplingConfig =
        registerOutput<GoogleCloudApigeeV1TraceSamplingConfigResponse>(
            'samplingConfig');
  }
}
