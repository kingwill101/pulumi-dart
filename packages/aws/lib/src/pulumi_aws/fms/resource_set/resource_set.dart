import 'package:pulumi/pulumi.dart';
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
class ResourceSet extends CustomResource {
  /// ARN of the Resource Set.
  late final Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Details about the resource set to be created or updated. See `resource_set` Attribute Reference below.
  late final Output<List<ResourceSetResourceSet>?> resourceSets;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;
  late final Output<ResourceSetTimeouts?> timeouts;

  ResourceSet(
    String name, {
    ResourceSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:fms/resourceSet:ResourceSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
