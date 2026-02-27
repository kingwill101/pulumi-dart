import 'package:pulumi/pulumi.dart' as pulumi;
import '../function_build_config/function_build_config.dart';
import '../function_event_trigger/function_event_trigger_cloudfunctionsv2.dart';
import '../function_service_config/function_service_config.dart';
import 'function_cloudfunctionsv2_args.dart';

/// A Cloud Function that contains user computation executed in response to an event.
///
///
/// To get more information about function, see:
///
/// * [API documentation](https://cloud.google.com/functions/docs/reference/rest/v2beta/projects.locations.functions)
///
/// ## Example Usage
///
/// ### Cloudfunctions2 Basic
///
///
///
/// ### Cloudfunctions2 Full
///
///
///
/// ### Cloudfunctions2 Scheduler Auth
///
///
///
/// ### Cloudfunctions2 Basic Gcs
///
///
///
/// ### Cloudfunctions2 Basic Auditlogs
///
///
///
/// ### Cloudfunctions2 Basic Builder
///
///
///
/// ### Cloudfunctions2 Secret Env
///
///
///
/// ### Cloudfunctions2 Secret Volume
///
///
///
/// ### Cloudfunctions2 Private Workerpool
///
///
///
/// ### Cloudfunctions2 Cmek Docs
///
///
///
/// ### Cloudfunctions2 Automatic Base Image Update
///
///
///
/// ### Cloudfunctions2 On Deploy Base Image Update
///
///
///
/// ### Cloudfunctions2 Directvpc
///
///
///
///
/// ## Import
///
/// function can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/functions/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, function can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudfunctionsv2/function:Function default projects/{{project}}/locations/{{location}}/functions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudfunctionsv2/function:Function default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudfunctionsv2/function:Function default {{location}}/{{name}}
/// ```
class FunctionCloudfunctionsv2 extends pulumi.CustomResource {
  /// Describes the Build step of the function that builds a container
  /// from the given source.
  /// Structure is documented below.
  late final pulumi.Output<FunctionBuildConfig?> buildConfig;

  /// User-provided description of a function.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The environment the function is hosted on.
  late final pulumi.Output<String> environment;

  /// An Eventarc trigger managed by Google Cloud Functions that fires events in
  /// response to a condition in another service.
  /// Structure is documented below.
  late final pulumi.Output<FunctionEventTriggerCloudfunctionsv2?> eventTrigger;

  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources.
  /// It must match the pattern projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}.
  late final pulumi.Output<String?> kmsKeyName;

  /// A set of key/value label pairs associated with this Cloud Function.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of this cloud function.
  late final pulumi.Output<String> location;

  /// A user-defined name of the function. Function names must
  /// be unique globally and match pattern `projects/*/locations/*/functions/*`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Describes the Service being deployed.
  /// Structure is documented below.
  late final pulumi.Output<FunctionServiceConfig?> serviceConfig;

  /// Describes the current state of the function.
  late final pulumi.Output<String> state;

  /// The last update timestamp of a Cloud Function.
  late final pulumi.Output<String> updateTime;

  /// Output only. The deployed url for the function.
  late final pulumi.Output<String> url;

  FunctionCloudfunctionsv2(
    String name, {
    FunctionCloudfunctionsv2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudfunctionsv2/function:Function',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.buildConfig = registerOutput<FunctionBuildConfig?>('buildConfig');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.environment = registerOutput<String>('environment');
    this.eventTrigger =
        registerOutput<FunctionEventTriggerCloudfunctionsv2?>('eventTrigger');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serviceConfig =
        registerOutput<FunctionServiceConfig?>('serviceConfig');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.url = registerOutput<String>('url');
  }
}
