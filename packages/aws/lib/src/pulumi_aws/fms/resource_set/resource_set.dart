import 'package:pulumi/pulumi.dart' as pulumi;
import '../resource_set_resource_set/resource_set_resource_set.dart';
import '../resource_set_timeouts/resource_set_timeouts.dart';
import 'resource_set_args.dart';

/// Resource for managing an AWS FMS (Firewall Manager) Resource Set.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import FMS (Firewall Manager) Resource Set using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fms/resourceSet:ResourceSet example resource_set-id-12345678
/// ```
class ResourceSet extends pulumi.CustomResource {
  /// ARN of the Resource Set.
  late final pulumi.Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Details about the resource set to be created or updated. See `resource_set` Attribute Reference below.
  late final pulumi.Output<List<ResourceSetResourceSet>?> resourceSets;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ResourceSetTimeouts?> timeouts;

  ResourceSet(
    String name, {
    ResourceSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fms/resourceSet:ResourceSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.resourceSets =
        registerOutput<List<ResourceSetResourceSet>?>('resourceSets');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ResourceSetTimeouts?>('timeouts');
  }
}
