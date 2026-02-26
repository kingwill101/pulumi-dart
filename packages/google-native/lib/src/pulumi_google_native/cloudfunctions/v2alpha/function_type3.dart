import 'package:pulumi/pulumi.dart';
import 'build_config_response2.dart';
import 'event_trigger_response3.dart';
import 'function_args3.dart';
import 'google_cloud_functions_v2alpha_state_message_response.dart';
import 'service_config_response2.dart';

/// Creates a new function. If a function with the given name already exists in the specified project, the long running operation will return `ALREADY_EXISTS` error.
class FunctionType3 extends CustomResource {
  /// Describes the Build step of the function that builds a container from the given source.
  late final Output<BuildConfigResponse2> buildConfig;

  /// User-provided description of a function.
  late final Output<String> description;

  /// Describe whether the function is 1st Gen or 2nd Gen.
  late final Output<String> environment;

  /// An Eventarc trigger managed by Google Cloud Functions that fires events in response to a condition in another service.
  late final Output<EventTriggerResponse3> eventTrigger;

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
  late final Output<ServiceConfigResponse2> serviceConfig;

  /// State of the function.
  late final Output<String> state;

  /// State Messages for this Cloud Function.
  late final Output<List<GoogleCloudFunctionsV2alphaStateMessageResponse>>
      stateMessages;

  /// The last update timestamp of a Cloud Function.
  late final Output<String> updateTime;

  /// The deployed url for the function.
  late final Output<String> url;

  FunctionType3(
    String name, {
    FunctionArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudfunctions/v2alpha:Function',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.buildConfig = Output.createUnknown<BuildConfigResponse2>();
    this.description = Output.createUnknown<String>();
    this.environment = Output.createUnknown<String>();
    this.eventTrigger = Output.createUnknown<EventTriggerResponse3>();
    this.functionId = Output.createUnknown<String?>();
    this.kmsKeyName = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.satisfiesPzs = Output.createUnknown<bool>();
    this.serviceConfig = Output.createUnknown<ServiceConfigResponse2>();
    this.state = Output.createUnknown<String>();
    this.stateMessages = Output.createUnknown<
        List<GoogleCloudFunctionsV2alphaStateMessageResponse>>();
    this.updateTime = Output.createUnknown<String>();
    this.url = Output.createUnknown<String>();
  }
}
