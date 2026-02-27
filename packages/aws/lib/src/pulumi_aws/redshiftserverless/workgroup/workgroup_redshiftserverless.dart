import 'package:pulumi/pulumi.dart' as pulumi;
import '../workgroup_config_parameter/workgroup_config_parameter.dart';
import '../workgroup_endpoint/workgroup_endpoint.dart';
import '../workgroup_price_performance_target/workgroup_price_performance_target.dart';
import 'workgroup_redshiftserverless_args.dart';

/// Creates a new Amazon Redshift Serverless Workgroup.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Serverless Workgroups using the `workgroup_name`. For example:
///
/// ```sh
/// $ pulumi import aws:redshiftserverless/workgroup:Workgroup example example
/// ```
class WorkgroupRedshiftserverless extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Redshift Serverless Workgroup.
  late final pulumi.Output<String> arn;

  /// The base data warehouse capacity of the workgroup in Redshift Processing Units (RPUs).
  late final pulumi.Output<int> baseCapacity;

  /// An array of parameters to set for more control over a serverless database. See `Config Parameter` below.
  late final pulumi.Output<List<WorkgroupConfigParameter>> configParameters;

  /// The endpoint that is created from the workgroup. See `Endpoint` below.
  late final pulumi.Output<List<WorkgroupEndpoint>> endpoints;

  /// The value that specifies whether to turn on enhanced virtual private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC instead of over the internet.
  late final pulumi.Output<bool?> enhancedVpcRouting;

  /// The maximum data-warehouse capacity Amazon Redshift Serverless uses to serve queries, specified in Redshift Processing Units (RPUs).
  late final pulumi.Output<int?> maxCapacity;

  /// The name of the namespace.
  late final pulumi.Output<String> namespaceName;

  /// The port number on which the cluster accepts incoming connections.
  late final pulumi.Output<int> port;

  /// Price-performance scaling for the workgroup. See `Price Performance Target` below.
  late final pulumi.Output<WorkgroupPricePerformanceTarget>
      pricePerformanceTarget;

  /// A value that specifies whether the workgroup can be accessed from a public network.
  late final pulumi.Output<bool?> publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// An array of security group IDs to associate with the workgroup.
  late final pulumi.Output<List<String>> securityGroupIds;

  /// An array of VPC subnet IDs to associate with the workgroup. When set, must contain at least three subnets spanning three Availability Zones. A minimum number of IP addresses is required and scales with the Base Capacity. For more information, see the following [AWS document](https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-known-issues.html).
  late final pulumi.Output<List<String>> subnetIds;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The name of the track for the workgroup. If it is `current`, you get the most up-to-date certified release version with the latest features, security updates, and performance enhancements. If it is `trailing`, you will be on the previous certified release. For more information, see the following [AWS document](https://docs.aws.amazon.com/redshift/latest/mgmt/tracks.html).
  late final pulumi.Output<String> trackName;

  /// The Redshift Workgroup ID.
  late final pulumi.Output<String> workgroupId;

  /// The name of the workgroup.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> workgroupName;

  WorkgroupRedshiftserverless(
    String name, {
    WorkgroupRedshiftserverlessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/workgroup:Workgroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.baseCapacity = registerOutput<int>('baseCapacity');
    this.configParameters =
        registerOutput<List<WorkgroupConfigParameter>>('configParameters');
    this.endpoints = registerOutput<List<WorkgroupEndpoint>>('endpoints');
    this.enhancedVpcRouting = registerOutput<bool?>('enhancedVpcRouting');
    this.maxCapacity = registerOutput<int?>('maxCapacity');
    this.namespaceName = registerOutput<String>('namespaceName');
    this.port = registerOutput<int>('port');
    this.pricePerformanceTarget =
        registerOutput<WorkgroupPricePerformanceTarget>(
            'pricePerformanceTarget');
    this.publiclyAccessible = registerOutput<bool?>('publiclyAccessible');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trackName = registerOutput<String>('trackName');
    this.workgroupId = registerOutput<String>('workgroupId');
    this.workgroupName = registerOutput<String>('workgroupName');
  }
}
