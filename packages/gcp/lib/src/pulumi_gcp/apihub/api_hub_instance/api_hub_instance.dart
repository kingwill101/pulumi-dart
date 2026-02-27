import 'package:pulumi/pulumi.dart' as pulumi;
import '../api_hub_instance_config/api_hub_instance_config.dart';
import 'api_hub_instance_args.dart';

/// An ApiHubInstance represents the instance resources of the API Hub.
/// Currently, only one ApiHub instance is allowed for each project.
/// Currently, updation/deletion of ApiHub instance is not allowed.
///
///
///
/// ## Example Usage
///
/// ### Apihub Api Hub Instance Basic
///
///
///
/// ### Apihub Api Hub Instance Full
///
///
///
///
/// ## Import
///
/// ApiHubInstance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apiHubInstances/{{api_hub_instance_id}}`
///
/// * `{{project}}/{{location}}/{{api_hub_instance_id}}`
///
/// * `{{location}}/{{api_hub_instance_id}}`
///
/// When using the `pulumi import` command, ApiHubInstance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apihub/apiHubInstance:ApiHubInstance default projects/{{project}}/locations/{{location}}/apiHubInstances/{{api_hub_instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/apiHubInstance:ApiHubInstance default {{project}}/{{location}}/{{api_hub_instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/apiHubInstance:ApiHubInstance default {{location}}/{{api_hub_instance_id}}
/// ```
class ApiHubInstance extends pulumi.CustomResource {
  /// Optional. Identifier to assign to the Api Hub instance. Must be unique within
  /// scope of the parent resource. If the field is not provided,
  /// system generated id will be used.
  /// This value should be 4-40 characters, and valid characters
  /// are `/a-z[0-9]-_/`.
  late final pulumi.Output<String?> apiHubInstanceId;

  /// Available configurations to provision an ApiHub Instance.
  /// Structure is documented below.
  late final pulumi.Output<ApiHubInstanceConfig> config;

  /// Output only. Creation timestamp.
  late final pulumi.Output<String> createTime;

  /// Optional. Description of the ApiHub instance.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional. Instance labels to represent user-provided metadata.
  /// Refer to cloud documentation on labels for more details.
  /// https://cloud.google.com/compute/docs/labeling-resources
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. Format:
  /// `projects/{project}/locations/{location}/apiHubInstances/{apiHubInstance}`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Output only. The current state of the ApiHub instance.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// INACTIVE
  /// CREATING
  /// ACTIVE
  /// UPDATING
  /// DELETING
  /// FAILED
  late final pulumi.Output<String> state;

  /// Output only. Extra information about ApiHub instance state. Currently the message
  /// would be populated when state is `FAILED`.
  late final pulumi.Output<String> stateMessage;

  /// Output only. Last update timestamp.
  late final pulumi.Output<String> updateTime;

  ApiHubInstance(
    String name, {
    ApiHubInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apihub/apiHubInstance:ApiHubInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiHubInstanceId = registerOutput<String?>('apiHubInstanceId');
    this.config = registerOutput<ApiHubInstanceConfig>('config');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.stateMessage = registerOutput<String>('stateMessage');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
