import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_binding_args.dart';

/// A TagBinding represents a connection between a TagValue and a cloud resource (currently project, folder, or organization). Once a TagBinding is created, the TagValue is applied to all the descendants of the cloud resource.
///
///
/// To get more information about TagBinding, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest/v3/tagBindings)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing)
///
/// ## Example Usage
///
/// ### Tag Binding Basic
///
///
///
/// ### Tag Binding Using Dynamic Tag Value
///
///
///
///
/// ## Import
///
/// TagBinding can be imported using any of these accepted formats:
///
/// * `tagBindings/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TagBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:tags/tagBinding:TagBinding default tagBindings/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:tags/tagBinding:TagBinding default {{name}}
/// ```
class TagBinding extends pulumi.CustomResource {
  /// The generated id for the TagBinding. This is a string of the form `tagBindings/{full-resource-name}/{tag-value-name}` or `tagBindings/{full-resource-name}/{tag-key-name}`
  late final pulumi.Output<String> name;

  /// The full resource name of the resource the TagValue is bound to. E.g. //cloudresourcemanager.googleapis.com/projects/123
  late final pulumi.Output<String> parent;

  /// The TagValue of the TagBinding. Must be either in id format `tagValues/{tag-value-id}`, or namespaced format `{parent-id}/{tag-key-short-name}/{tag-value-short-name}`.
  late final pulumi.Output<String> tagValue;

  TagBinding(
    String name, {
    TagBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:tags/tagBinding:TagBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.tagValue = registerOutput<String>('tagValue');
  }
}
