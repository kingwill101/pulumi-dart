import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_config_response_cloudfunctions_v2beta.dart';
import 'event_trigger_response_cloudfunctions_v2beta.dart';
import 'function_cloudfunctions_v2beta_args.dart';
import 'google_cloud_functions_v2beta_state_message_response.dart';
import 'service_config_response_cloudfunctions_v2beta.dart';

/// Creates a new function. If a function with the given name already exists in the specified project, the long running operation will return `ALREADY_EXISTS` error.
class FunctionCloudfunctionsV2beta extends pulumi.CustomResource {
  /// Describes the Build step of the function that builds a container from the given source.
  late final pulumi.Output<BuildConfigResponseCloudfunctionsV2beta> buildConfig;

  /// User-provided description of a function.
  late final pulumi.Output<String> description;

  /// Describe whether the function is 1st Gen or 2nd Gen.
  late final pulumi.Output<String> environment;

  /// An Eventarc trigger managed by Google Cloud Functions that fires events in response to a condition in another service.
  late final pulumi.Output<EventTriggerResponseCloudfunctionsV2beta>
      eventTrigger;

  /// The ID to use for the function, which will become the final component of the function's resource name. This value should be 4-63 characters, and valid characters are /a-z-/.
  late final pulumi.Output<String?> functionId;

  /// [Preview] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  late final pulumi.Output<String> kmsKeyName;

  /// Labels associated with this Cloud Function.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Reserved for future use.
  late final pulumi.Output<bool> satisfiesPzs;

  /// Describes the Service being deployed. Currently deploys services to Cloud Run (fully managed).
  late final pulumi.Output<ServiceConfigResponseCloudfunctionsV2beta>
      serviceConfig;

  /// State of the function.
  late final pulumi.Output<String> state;

  /// State Messages for this Cloud Function.
  late final pulumi.Output<List<GoogleCloudFunctionsV2betaStateMessageResponse>>
      stateMessages;

  /// The last update timestamp of a Cloud Function.
  late final pulumi.Output<String> updateTime;

  /// The deployed url for the function.
  late final pulumi.Output<String> url;

  /// Creates a new [FunctionCloudfunctionsV2beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionCloudfunctionsV2beta]. {@macro pulumi_cloudfunctions_v2beta_function_cloudfunctions_v2beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionCloudfunctionsV2beta(
    String name, {
    FunctionCloudfunctionsV2betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudfunctions/v2beta:Function',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.buildConfig =
        registerOutput<BuildConfigResponseCloudfunctionsV2beta>('buildConfig');
    this.description = registerOutput<String>('description');
    this.environment = registerOutput<String>('environment');
    this.eventTrigger =
        registerOutput<EventTriggerResponseCloudfunctionsV2beta>(
            'eventTrigger');
    this.functionId = registerOutput<String?>('functionId');
    this.kmsKeyName = registerOutput<String>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    this.serviceConfig =
        registerOutput<ServiceConfigResponseCloudfunctionsV2beta>(
            'serviceConfig');
    this.state = registerOutput<String>('state');
    this.stateMessages =
        registerOutput<List<GoogleCloudFunctionsV2betaStateMessageResponse>>(
            'stateMessages');
    this.updateTime = registerOutput<String>('updateTime');
    this.url = registerOutput<String>('url');
  }
}
