import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_args.dart';
import 'restrictions_response.dart';

/// Creates a new API key. NOTE: Key is a global resource; hence the only supported value for location is `global`.
/// Auto-naming is currently not supported for this resource.
class Key extends pulumi.CustomResource {
  /// Annotations is an unstructured key-value map stored with a policy that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  late final pulumi.Output<Map<String, String>> annotations;

  /// A timestamp identifying the time this key was originally created.
  late final pulumi.Output<String> createTime;

  /// A timestamp when this key was deleted. If the resource is not deleted, this must be empty.
  late final pulumi.Output<String> deleteTime;

  /// Human-readable display name of this key that you can modify. The maximum length is 63 characters.
  late final pulumi.Output<String> displayName;

  /// A checksum computed by the server based on the current value of the Key resource. This may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. See https://google.aip.dev/154.
  late final pulumi.Output<String> etag;

  /// User specified key id (optional). If specified, it will become the final component of the key resource name. The id must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the id must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`. The id must NOT be a UUID-like string.
  late final pulumi.Output<String?> keyId;

  /// An encrypted and signed value held by this key. This field can be accessed only through the `GetKeyString` method.
  late final pulumi.Output<String> keyString;
  late final pulumi.Output<String> location;

  /// The resource name of the key. The `name` has the form: `projects//locations/global/keys/`. For example: `projects/123456867718/locations/global/keys/b7ff1f9f-8275-410a-94dd-3855ee9b5dd2` NOTE: Key is a global resource; hence the only supported value for location is `global`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Key restrictions.
  late final pulumi.Output<RestrictionsResponse> restrictions;

  /// Unique id in UUID4 format.
  late final pulumi.Output<String> uid;

  /// A timestamp identifying the time this key was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Key].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Key]. {@macro pulumi_apikeys_v2_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Key(String name, {KeyArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:apikeys/v2:Key',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.keyId = registerOutput<String?>('keyId');
    this.keyString = registerOutput<String>('keyString');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.restrictions = registerOutput<RestrictionsResponse>('restrictions');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
