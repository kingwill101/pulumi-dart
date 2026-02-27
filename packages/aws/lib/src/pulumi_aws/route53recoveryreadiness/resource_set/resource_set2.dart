import 'package:pulumi/pulumi.dart';
import '../resource_set_resource/resource_set_resource.dart';
import 'resource_set_args2.dart';

/// Provides an AWS Route 53 Recovery Readiness Resource Set.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Recovery Readiness resource set name using the resource set name. For example:
///
/// ```sh
/// $ pulumi import aws:route53recoveryreadiness/resourceSet:ResourceSet my-cw-alarm-set example
/// ```
class ResourceSet2 extends CustomResource {
  /// ARN of the resource set
  /// * `resources.#.component_id` - Unique identified for DNS Target Resources, use for readiness checks.
  late final Output<String> arn;

  /// Unique name describing the resource set.
  late final Output<String> resourceSetName;

  /// Type of the resources in the resource set.
  late final Output<String> resourceSetType;

  /// List of resources to add to this resource set. See below.
  ///
  /// The following arguments are optional:
  late final Output<List<ResourceSetResource>> resources;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  ResourceSet2(
    String name, {
    ResourceSetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53recoveryreadiness/resourceSet:ResourceSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.resourceSetName = registerOutput<String>('resourceSetName');
    this.resourceSetType = registerOutput<String>('resourceSetType');
    this.resources = registerOutput<List<ResourceSetResource>>('resources');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
