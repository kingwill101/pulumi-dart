import 'package:pulumi/pulumi.dart' hide Config;
import 'tag_template_args2.dart';

/// Creates a tag template. The user should enable the Data Catalog API in the project identified by the `parent` parameter (see [Data Catalog Resource Project](https://cloud.google.com/data-catalog/docs/concepts/resource-project) for more information).
class TagTemplate2 extends CustomResource {
  /// The display name for this template. Defaults to an empty string.
  late final Output<String> displayName;

  /// Map of tag template field IDs to the settings for the field. This map is an exhaustive list of the allowed fields. This map must contain at least one field and at most 500 fields. The keys to this map are tag template field IDs. Field IDs can contain letters (both uppercase and lowercase), numbers (0-9) and underscores (_). Field IDs must be at least 1 character long and at most 64 characters long. Field IDs must start with a letter or underscore.
  late final Output<Map<String, String>> fields;
  late final Output<String> location;

  /// The resource name of the tag template in URL format. Example: * projects/{project_id}/locations/{location}/tagTemplates/{tag_template_id} Note that this TagTemplate and its child resources may not actually be stored in the location in this name.
  late final Output<String> name;
  late final Output<String> project;

  /// Required. The id of the tag template to create.
  late final Output<String> tagTemplateId;

  TagTemplate2(
    String name, {
    TagTemplateArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datacatalog/v1beta1:TagTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.fields = registerOutput<Map<String, String>>('fields');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.tagTemplateId = registerOutput<String>('tagTemplateId');
  }
}
