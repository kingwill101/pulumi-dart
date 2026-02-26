import 'package:pulumi/pulumi.dart';
import 'environment_args4.dart';
import 'google_cloud_dataplex_v1_environment_endpoints_response.dart';
import 'google_cloud_dataplex_v1_environment_infrastructure_spec_response.dart';
import 'google_cloud_dataplex_v1_environment_session_spec_response.dart';
import 'google_cloud_dataplex_v1_environment_session_status_response.dart';

/// Create an environment resource.
/// Auto-naming is currently not supported for this resource.
class Environment7 extends CustomResource {
  /// Environment creation time.
  late final Output<String> createTime;

  /// Optional. Description of the environment.
  late final Output<String> description;

  /// Optional. User friendly display name.
  late final Output<String> displayName;

  /// URI Endpoints to access sessions associated with the Environment.
  late final Output<GoogleCloudDataplexV1EnvironmentEndpointsResponse>
      endpoints;

  /// Required. Environment identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the lake.
  late final Output<String> environmentId;

  /// Infrastructure specification for the Environment.
  late final Output<GoogleCloudDataplexV1EnvironmentInfrastructureSpecResponse>
      infrastructureSpec;

  /// Optional. User defined labels for the environment.
  late final Output<Map<String, String>> labels;
  late final Output<String> lakeId;
  late final Output<String> location;

  /// The relative resource name of the environment, of the form: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environment/{environment_id}
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. Configuration for sessions created for this environment.
  late final Output<GoogleCloudDataplexV1EnvironmentSessionSpecResponse>
      sessionSpec;

  /// Status of sessions created for this environment.
  late final Output<GoogleCloudDataplexV1EnvironmentSessionStatusResponse>
      sessionStatus;

  /// Current state of the environment.
  late final Output<String> state;

  /// System generated globally unique ID for the environment. This ID will be different if the environment is deleted and re-created with the same name.
  late final Output<String> uid;

  /// The time when the environment was last updated.
  late final Output<String> updateTime;

  Environment7(
    String name, {
    EnvironmentArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataplex/v1:Environment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.endpoints = Output.createUnknown<
        GoogleCloudDataplexV1EnvironmentEndpointsResponse>();
    this.environmentId = Output.createUnknown<String>();
    this.infrastructureSpec = Output.createUnknown<
        GoogleCloudDataplexV1EnvironmentInfrastructureSpecResponse>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.lakeId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.sessionSpec = Output.createUnknown<
        GoogleCloudDataplexV1EnvironmentSessionSpecResponse>();
    this.sessionStatus = Output.createUnknown<
        GoogleCloudDataplexV1EnvironmentSessionStatusResponse>();
    this.state = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
