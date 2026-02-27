import 'package:pulumi/pulumi.dart' hide Config;
import 'build_config_response.dart';
import 'event_trigger_response2.dart';
import 'function_args2.dart';
import 'google_cloud_functions_v2_state_message_response.dart';
import 'service_config_response.dart';

/// Creates a new function. If a function with the given name already exists in the specified project, the long running operation will return `ALREADY_EXISTS` error.
class FunctionType2 extends CustomResource {
  /// Describes the Build step of the function that builds a container from the given source.
  late final Output<BuildConfigResponse> buildConfig;

  /// User-provided description of a function.
  late final Output<String> description;

  /// Describe whether the function is 1st Gen or 2nd Gen.
  late final Output<String> environment;

  /// An Eventarc trigger managed by Google Cloud Functions that fires events in response to a condition in another service.
  late final Output<EventTriggerResponse2> eventTrigger;

  /// The ID to use for the function, which will become the final component of the function's resource name. This value should be 4-63 characters, and valid characters are /a-z-/.
  late final Output<String?> functionId;

  /// [Preview] Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  late final Output<String> kmsKeyName;

  /// Labels associated with this Cloud Function.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  late final Output<String> name;
  late final Output<String> project;

  /// Reserved for future use.
  late final Output<bool> satisfiesPzs;

  /// Describes the Service being deployed. Currently deploys services to Cloud Run (fully managed).
  late final Output<ServiceConfigResponse> serviceConfig;

  /// State of the function.
  late final Output<String> state;

  /// State Messages for this Cloud Function.
  late final Output<List<GoogleCloudFunctionsV2StateMessageResponse>>
      stateMessages;

  /// The last update timestamp of a Cloud Function.
  late final Output<String> updateTime;

  /// The deployed url for the function.
  late final Output<String> url;

  FunctionType2(
    String name, {
    FunctionArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudfunctions/v2:Function',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.buildConfig = registerOutput<BuildConfigResponse>('buildConfig');
    this.description = registerOutput<String>('description');
    this.environment = registerOutput<String>('environment');
    this.eventTrigger = registerOutput<EventTriggerResponse2>('eventTrigger');
    this.functionId = registerOutput<String?>('functionId');
    this.kmsKeyName = registerOutput<String>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    this.serviceConfig = registerOutput<ServiceConfigResponse>('serviceConfig');
    this.state = registerOutput<String>('state');
    this.stateMessages =
        registerOutput<List<GoogleCloudFunctionsV2StateMessageResponse>>(
            'stateMessages');
    this.updateTime = registerOutput<String>('updateTime');
    this.url = registerOutput<String>('url');
  }
}
