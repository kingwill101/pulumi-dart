import 'package:pulumi/pulumi.dart';
import 'tag_value_args.dart';

/// Creates a TagValue as a child of the specified TagKey. If a another request with the same parameters is sent while the original request is in process the second request will receive an error. A maximum of 1000 TagValues can exist under a TagKey at any given time.
class TagValue extends CustomResource {
  /// Creation time.
  late final Output<String> createTime;

  /// Optional. User-assigned description of the TagValue. Must not exceed 256 characters. Read-write.
  late final Output<String> description;

  /// Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagValueRequest for details.
  late final Output<String> etag;

  /// Immutable. Resource name for TagValue in the format `tagValues/456`.
  late final Output<String> name;

  /// The namespaced name of the TagValue. Can be in the form `{organization_id}/{tag_key_short_name}/{tag_value_short_name}` or `{project_id}/{tag_key_short_name}/{tag_value_short_name}` or `{project_number}/{tag_key_short_name}/{tag_value_short_name}`.
  late final Output<String> namespacedName;

  /// Immutable. The resource name of the new TagValue's parent TagKey. Must be of the form `tagKeys/{tag_key_id}`.
  late final Output<String> parent;

  /// Immutable. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey. The short name must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
  late final Output<String> shortName;

  /// Update time.
  late final Output<String> updateTime;

  TagValue(
    String name, {
    TagValueArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudresourcemanager/v3:TagValue',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.namespacedName = registerOutput<String>('namespacedName');
    this.parent = registerOutput<String>('parent');
    this.shortName = registerOutput<String>('shortName');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
