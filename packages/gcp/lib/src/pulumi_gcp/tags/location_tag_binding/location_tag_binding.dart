import 'package:pulumi/pulumi.dart';
import 'location_tag_binding_args.dart';

/// A LocationTagBinding represents a connection between a TagValue and a non-global target such as a Cloud Run Service or Compute Instance. Once a LocationTagBinding is created, the TagValue is applied to all the descendants of the cloud resource.
///
/// To get more information about LocationTagBinding, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest/v3/tagBindings)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing)
///
/// ## Example Usage
///
/// ### Cloud Run Service
///
/// To bind a tag to a Cloud Run service:
///
///
///
/// ### Compute Instance
///
///
///
/// ### Compute Instance With Dynamic Tag Value
///
///
///
/// ## Import
///
/// LocationTagBinding can be imported using any of these accepted formats:
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, TagBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:tags/locationTagBinding:LocationTagBinding default {{location}}/{{name}}
/// ```
class LocationTagBinding extends CustomResource {
  /// Location of the target resource.
  ///
  /// - - -
  late final Output<String?> location;

  /// The generated id for the TagBinding. This is a string of the form `tagBindings/{full-resource-name}/{tag-value-name}` or `tagBindings/{full-resource-name}/{tag-key-name}`
  late final Output<String> name;

  /// The full resource name of the resource the TagValue is bound to. E.g. //cloudresourcemanager.googleapis.com/projects/123
  late final Output<String> parent;

  /// The TagValue of the TagBinding. Must be either in id format `tagValues/{tag-value-id}`, or namespaced format `{parent-id}/{tag-key-short-name}/{tag-value-short-name}`.
  late final Output<String> tagValue;

  LocationTagBinding(
    String name, {
    LocationTagBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:tags/locationTagBinding:LocationTagBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.tagValue = registerOutput<String>('tagValue');
  }
}
