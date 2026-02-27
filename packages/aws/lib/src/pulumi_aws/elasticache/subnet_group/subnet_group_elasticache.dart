import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_group_elasticache_args.dart';

/// Provides an ElastiCache Subnet Group resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache Subnet Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/subnetGroup:SubnetGroup bar tf-test-cache-subnet
/// ```
class SubnetGroupElasticache extends pulumi.CustomResource {
  late final pulumi.Output<String> arn;

  /// Description for the cache subnet group. Defaults to "Managed by Pulumi".
  late final pulumi.Output<String> description;

  /// Name for the cache subnet group. ElastiCache converts this name to lowercase.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of VPC Subnet IDs for the cache subnet group
  late final pulumi.Output<List<String>> subnetIds;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The Amazon Virtual Private Cloud identifier (VPC ID) of the cache subnet group.
  late final pulumi.Output<String> vpcId;

  SubnetGroupElasticache(
    String name, {
    SubnetGroupElasticacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/subnetGroup:SubnetGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
