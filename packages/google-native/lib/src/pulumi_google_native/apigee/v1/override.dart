import 'package:pulumi/pulumi.dart';
import 'google_cloud_apigee_v1_trace_sampling_config_response.dart';
import 'override_args.dart';

/// Creates a trace configuration override. The response contains a system-generated UUID, that can be used to view, update, or delete the configuration override. Use the List API to view the existing trace configuration overrides.
class Override extends CustomResource {
  /// ID of the API proxy that will have its trace configuration overridden.
  late final Output<String> apiProxy;
  late final Output<String> environmentId;

  /// ID of the trace configuration override specified as a system-generated UUID.
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Trace configuration to override.
  late final Output<GoogleCloudApigeeV1TraceSamplingConfigResponse>
      samplingConfig;

  Override(
    String name, {
    OverrideArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Override',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
