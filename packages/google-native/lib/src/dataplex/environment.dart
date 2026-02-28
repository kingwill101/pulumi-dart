import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_args.dart';
import 'google_cloud_dataplex_v1_environment_endpoints_response.dart';
import 'google_cloud_dataplex_v1_environment_infrastructure_spec_response.dart';
import 'google_cloud_dataplex_v1_environment_session_spec_response.dart';
import 'google_cloud_dataplex_v1_environment_session_status_response.dart';

/// Create an environment resource.
/// Auto-naming is currently not supported for this resource.
class Environment extends pulumi.CustomResource {
  /// Environment creation time.
  late final pulumi.Output<String> createTime;
  /// Optional. Description of the environment.
  late final pulumi.Output<String> description;
  /// Optional. User friendly display name.
  late final pulumi.Output<String> displayName;
  /// URI Endpoints to access sessions associated with the Environment.
  late final pulumi.Output<GoogleCloudDataplexV1EnvironmentEndpointsResponse> endpoints;
  /// Required. Environment identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the lake.
  late final pulumi.Output<String> environmentId;
  /// Infrastructure specification for the Environment.
  late final pulumi.Output<GoogleCloudDataplexV1EnvironmentInfrastructureSpecResponse> infrastructureSpec;
  /// Optional. User defined labels for the environment.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> lakeId;
  late final pulumi.Output<String> location;
  /// The relative resource name of the environment, of the form: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environment/{environment_id}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Optional. Configuration for sessions created for this environment.
  late final pulumi.Output<GoogleCloudDataplexV1EnvironmentSessionSpecResponse> sessionSpec;
  /// Status of sessions created for this environment.
  late final pulumi.Output<GoogleCloudDataplexV1EnvironmentSessionStatusResponse> sessionStatus;
  /// Current state of the environment.
  late final pulumi.Output<String> state;
  /// System generated globally unique ID for the environment. This ID will be different if the environment is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;
  /// The time when the environment was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_dataplex_v1_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dataplex/v1:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.endpoints = registerOutput<GoogleCloudDataplexV1EnvironmentEndpointsResponse>('endpoints');
    this.environmentId = registerOutput<String>('environmentId');
    this.infrastructureSpec = registerOutput<GoogleCloudDataplexV1EnvironmentInfrastructureSpecResponse>('infrastructureSpec');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.lakeId = registerOutput<String>('lakeId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.sessionSpec = registerOutput<GoogleCloudDataplexV1EnvironmentSessionSpecResponse>('sessionSpec');
    this.sessionStatus = registerOutput<GoogleCloudDataplexV1EnvironmentSessionStatusResponse>('sessionStatus');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
