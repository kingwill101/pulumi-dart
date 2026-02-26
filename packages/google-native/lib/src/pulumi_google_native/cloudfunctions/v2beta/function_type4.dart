import 'package:pulumi/pulumi.dart';
import 'build_config_response3.dart';
import 'event_trigger_response4.dart';
import 'function_args4.dart';
import 'google_cloud_functions_v2beta_state_message_response.dart';
import 'service_config_response3.dart';

/// Creates a new function. If a function with the given name already exists in the specified project, the long running operation will return `ALREADY_EXISTS` error.
class FunctionType4 extends CustomResource {
  /// Describes the Build step of the function that builds a container from the given source.
  late final Output<BuildConfigResponse3> buildConfig;

  /// User-provided description of a function.
  late final Output<String> description;

  /// Describe whether the function is 1st Gen or 2nd Gen.
  late final Output<String> environment;

  /// An Eventarc trigger managed by Google Cloud Functions that fires events in response to a condition in another service.
  late final Output<EventTriggerResponse4> eventTrigger;

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
  late final Output<ServiceConfigResponse3> serviceConfig;

  /// State of the function.
  late final Output<String> state;

  /// State Messages for this Cloud Function.
  late final Output<List<GoogleCloudFunctionsV2betaStateMessageResponse>>
      stateMessages;

  /// The last update timestamp of a Cloud Function.
  late final Output<String> updateTime;

  /// The deployed url for the function.
  late final Output<String> url;

  FunctionType4(
    String name, {
    FunctionArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudfunctions/v2beta:Function',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.buildConfig = Output.createUnknown<BuildConfigResponse3>();
    this.description = Output.createUnknown<String>();
    this.environment = Output.createUnknown<String>();
    this.eventTrigger = Output.createUnknown<EventTriggerResponse4>();
    this.functionId = Output.createUnknown<String?>();
    this.kmsKeyName = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.satisfiesPzs = Output.createUnknown<bool>();
    this.serviceConfig = Output.createUnknown<ServiceConfigResponse3>();
    this.state = Output.createUnknown<String>();
    this.stateMessages = Output.createUnknown<
        List<GoogleCloudFunctionsV2betaStateMessageResponse>>();
    this.updateTime = Output.createUnknown<String>();
    this.url = Output.createUnknown<String>();
  }
}
