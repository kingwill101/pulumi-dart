import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_region_vpc_settings/service_region_vpc_settings.dart';
import 'service_region_args.dart';

/// Manages a replicated Region and directory for Multi-Region replication.
/// Multi-Region replication is only supported for the Enterprise Edition of AWS Managed Microsoft AD.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Replicated Regions using directory ID,Region name. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/serviceRegion:ServiceRegion example d-9267651497,us-east-2
/// ```
class ServiceRegion extends pulumi.CustomResource {
  /// The number of domain controllers desired in the replicated directory. Minimum value of `2`.
  late final pulumi.Output<int> desiredNumberOfDomainControllers;

  /// The identifier of the directory to which you want to add Region replication.
  late final pulumi.Output<String> directoryId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The name of the Region where you want to add domain controllers for replication.
  late final pulumi.Output<String> regionName;

  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// VPC information in the replicated Region. Detailed below.
  late final pulumi.Output<ServiceRegionVpcSettings> vpcSettings;

  ServiceRegion(
    String name, {
    ServiceRegionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/serviceRegion:ServiceRegion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.desiredNumberOfDomainControllers =
        registerOutput<int>('desiredNumberOfDomainControllers');
    this.directoryId = registerOutput<String>('directoryId');
    this.region = registerOutput<String>('region');
    this.regionName = registerOutput<String>('regionName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcSettings = registerOutput<ServiceRegionVpcSettings>('vpcSettings');
  }
}
