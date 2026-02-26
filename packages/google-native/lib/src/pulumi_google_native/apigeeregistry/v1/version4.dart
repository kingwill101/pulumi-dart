import 'package:pulumi/pulumi.dart';
import 'version_args.dart';

/// Creates a specified version.
class Version4 extends CustomResource {
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  late final Output<Map<String, String>> annotations;
  late final Output<String> apiId;

  /// Required. The ID to use for the version, which will become the final component of the version's resource name. This value should be 1-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  late final Output<String> apiVersionId;

  /// Creation timestamp.
  late final Output<String> createTime;

  /// A detailed description.
  late final Output<String> description;

  /// Human-meaningful name.
  late final Output<String> displayName;

  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Resource name.
  late final Output<String> name;

  /// The primary spec for this version. Format: projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec}
  late final Output<String> primarySpec;
  late final Output<String> project;

  /// A user-definable description of the lifecycle phase of this API version. Format: free-form, but we expect single words that describe API maturity, e.g., "CONCEPT", "DESIGN", "DEVELOPMENT", "STAGING", "PRODUCTION", "DEPRECATED", "RETIRED".
  late final Output<String> state;

  /// Last update timestamp.
  late final Output<String> updateTime;

  Version4(
    String name, {
    VersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigeeregistry/v1:Version',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.apiId = registerOutput<String>('apiId');
    this.apiVersionId = registerOutput<String>('apiVersionId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.primarySpec = registerOutput<String>('primarySpec');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
