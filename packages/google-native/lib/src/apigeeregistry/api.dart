import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_args.dart';

/// Creates a specified API.
class Api extends pulumi.CustomResource {
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  late final pulumi.Output<Map<String, String>> annotations;

  /// Required. The ID to use for the API, which will become the final component of the API's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  late final pulumi.Output<String> apiId;

  /// A user-definable description of the availability of this service. Format: free-form, but we expect single words that describe availability, e.g., "NONE", "TESTING", "PREVIEW", "GENERAL", "DEPRECATED", "SHUTDOWN".
  late final pulumi.Output<String> availability;

  /// Creation timestamp.
  late final pulumi.Output<String> createTime;

  /// A detailed description.
  late final pulumi.Output<String> description;

  /// Human-meaningful name.
  late final pulumi.Output<String> displayName;

  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores, and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Resource name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The recommended deployment of the API. Format: `projects/{project}/locations/{location}/apis/{api}/deployments/{deployment}`
  late final pulumi.Output<String> recommendedDeployment;

  /// The recommended version of the API. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{version}`
  late final pulumi.Output<String> recommendedVersion;

  /// Last update timestamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Api].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Api]. {@macro pulumi_apigeeregistry_v1_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Api(
    String name, {
    ApiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigeeregistry/v1:Api',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.apiId = registerOutput<String>('apiId');
    this.availability = registerOutput<String>('availability');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.recommendedDeployment =
        registerOutput<String>('recommendedDeployment');
    this.recommendedVersion = registerOutput<String>('recommendedVersion');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
