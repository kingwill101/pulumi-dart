import 'package:pulumi/pulumi.dart';
import 'key_args.dart';
import 'v2_restrictions_response.dart';

/// Creates a new API key. NOTE: Key is a global resource; hence the only supported value for location is `global`.
/// Auto-naming is currently not supported for this resource.
class Key extends CustomResource {
  /// Annotations is an unstructured key-value map stored with a policy that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  late final Output<Map<String, String>> annotations;

  /// A timestamp identifying the time this key was originally created.
  late final Output<String> createTime;

  /// A timestamp when this key was deleted. If the resource is not deleted, this must be empty.
  late final Output<String> deleteTime;

  /// Human-readable display name of this key that you can modify. The maximum length is 63 characters.
  late final Output<String> displayName;

  /// A checksum computed by the server based on the current value of the Key resource. This may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. See https://google.aip.dev/154.
  late final Output<String> etag;

  /// User specified key id (optional). If specified, it will become the final component of the key resource name. The id must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the id must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`. The id must NOT be a UUID-like string.
  late final Output<String?> keyId;

  /// An encrypted and signed value held by this key. This field can be accessed only through the `GetKeyString` method.
  late final Output<String> keyString;
  late final Output<String> location;

  /// The resource name of the key. The `name` has the form: `projects//locations/global/keys/`. For example: `projects/123456867718/locations/global/keys/b7ff1f9f-8275-410a-94dd-3855ee9b5dd2` NOTE: Key is a global resource; hence the only supported value for location is `global`.
  late final Output<String> name;
  late final Output<String> project;

  /// Key restrictions.
  late final Output<V2RestrictionsResponse> restrictions;

  /// Unique id in UUID4 format.
  late final Output<String> uid;

  /// A timestamp identifying the time this key was last updated.
  late final Output<String> updateTime;

  Key(
    String name, {
    KeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apikeys/v2:Key',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = Output.createUnknown<Map<String, String>>();
    this.createTime = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.keyId = Output.createUnknown<String?>();
    this.keyString = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.restrictions = Output.createUnknown<V2RestrictionsResponse>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
