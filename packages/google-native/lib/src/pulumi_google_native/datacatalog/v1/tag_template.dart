import 'package:pulumi/pulumi.dart';
import 'tag_template_args.dart';

/// Creates a tag template. You must enable the Data Catalog API in the project identified by the `parent` parameter. For more information, see [Data Catalog resource project] (https://cloud.google.com/data-catalog/docs/concepts/resource-project).
class TagTemplate extends CustomResource {
  /// Display name for this template. Defaults to an empty string. The name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and can't start or end with spaces. The maximum length is 200 characters.
  late final Output<String> displayName;

  /// Map of tag template field IDs to the settings for the field. This map is an exhaustive list of the allowed fields. The map must contain at least one field and at most 500 fields. The keys to this map are tag template field IDs. The IDs have the following limitations: * Can contain uppercase and lowercase letters, numbers (0-9) and underscores (_). * Must be at least 1 character and at most 64 characters long. * Must start with a letter or underscore.
  late final Output<Map<String, String>> fields;

  /// Indicates whether tags created with this template are public. Public tags do not require tag template access to appear in ListTags API response. Additionally, you can search for a public tag by value with a simple search query in addition to using a ``tag:`` predicate.
  late final Output<bool> isPubliclyReadable;
  late final Output<String> location;

  /// The resource name of the tag template in URL format. Note: The tag template itself and its child resources might not be stored in the location specified in its name.
  late final Output<String> name;
  late final Output<String> project;

  /// Required. The ID of the tag template to create. The ID must contain only lowercase letters (a-z), numbers (0-9), or underscores (_), and must start with a letter or underscore. The maximum size is 64 bytes when encoded in UTF-8.
  late final Output<String> tagTemplateId;

  TagTemplate(
    String name, {
    TagTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datacatalog/v1:TagTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.displayName = Output.createUnknown<String>();
    this.fields = Output.createUnknown<Map<String, String>>();
    this.isPubliclyReadable = Output.createUnknown<bool>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.tagTemplateId = Output.createUnknown<String>();
  }
}
