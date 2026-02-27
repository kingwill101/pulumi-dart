import 'package:pulumi/pulumi.dart';
import 'replication_subnet_group_args.dart';

/// Provides a DMS (Data Migration Service) replication subnet group resource. DMS replication subnet groups can be created, updated, deleted, and imported.
///
/// > **Note:** AWS requires a special IAM role called `dms-vpc-role` when using this resource. See the example below to create it as part of your configuration.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### Creating special IAM role
///
/// If your account does not already include the `dms-vpc-role` IAM role, you will need to create it to allow DMS to manage subnets in the VPC.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import replication subnet groups using the `replication_subnet_group_id`. For example:
///
/// ```sh
/// $ pulumi import aws:dms/replicationSubnetGroup:ReplicationSubnetGroup test test-dms-replication-subnet-group-tf
/// ```
class ReplicationSubnetGroup extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<String> replicationSubnetGroupArn;

  /// Description for the subnet group.
  late final Output<String> replicationSubnetGroupDescription;

  /// Name for the replication subnet group. This value is stored as a lowercase string. It must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens and cannot be `default`.
  late final Output<String> replicationSubnetGroupId;

  /// List of at least 2 EC2 subnet IDs for the subnet group. The subnets must cover at least 2 availability zones.
  late final Output<List<String>> subnetIds;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The ID of the VPC the subnet group is in.
  late final Output<String> vpcId;

  ReplicationSubnetGroup(
    String name, {
    ReplicationSubnetGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dms/replicationSubnetGroup:ReplicationSubnetGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.replicationSubnetGroupArn =
        registerOutput<String>('replicationSubnetGroupArn');
    this.replicationSubnetGroupDescription =
        registerOutput<String>('replicationSubnetGroupDescription');
    this.replicationSubnetGroupId =
        registerOutput<String>('replicationSubnetGroupId');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
