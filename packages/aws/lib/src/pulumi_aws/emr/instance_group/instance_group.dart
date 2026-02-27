import 'package:pulumi/pulumi.dart';
import '../instance_group_ebs_config/instance_group_ebs_config.dart';
import 'instance_group_args.dart';

/// Provides an Elastic MapReduce Cluster Instance Group configuration.
/// See [Amazon Elastic MapReduce Documentation](https://aws.amazon.com/documentation/emr/) for more information.
///
/// > **NOTE:** At this time, Instance Groups cannot be destroyed through the API nor
/// web interface. Instance Groups are destroyed when the EMR Cluster is destroyed.
/// this provider will resize any Instance Group to zero when destroying the resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EMR task instance group using their EMR Cluster id and Instance Group id separated by a forward-slash `/`. For example:
///
/// ```sh
/// $ pulumi import aws:emr/instanceGroup:InstanceGroup task_group j-123456ABCDEF/ig-15EK4O09RZLNR
/// ```
class InstanceGroup extends CustomResource {
  /// The autoscaling policy document. This is a JSON formatted string. See [EMR Auto Scaling](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-automatic-scaling.html)
  late final Output<String?> autoscalingPolicy;

  /// If set, the bid price for each EC2 instance in the instance group, expressed in USD. By setting this attribute, the instance group is being declared as a Spot Instance, and will implicitly create a Spot request. Leave this blank to use On-Demand Instances.
  late final Output<String?> bidPrice;

  /// ID of the EMR Cluster to attach to. Changing this forces a new resource to be created.
  late final Output<String> clusterId;

  /// A JSON string for supplying list of configurations specific to the EMR instance group. Note that this can only be changed when using EMR release 5.21 or later.
  late final Output<String?> configurationsJson;

  /// One or more `ebs_config` blocks as defined below. Changing this forces a new resource to be created.
  late final Output<List<InstanceGroupEbsConfig>> ebsConfigs;

  /// Indicates whether an Amazon EBS volume is EBS-optimized. Changing this forces a new resource to be created.
  late final Output<bool?> ebsOptimized;

  /// target number of instances for the instance group. defaults to 0.
  late final Output<int> instanceCount;

  /// The EC2 instance type for all instances in the instance group. Changing this forces a new resource to be created.
  late final Output<String> instanceType;

  /// Human friendly name given to the instance group. Changing this forces a new resource to be created.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The number of instances currently running in this instance group.
  late final Output<int> runningInstanceCount;

  /// The current status of the instance group.
  late final Output<String> status;

  InstanceGroup(
    String name, {
    InstanceGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:emr/instanceGroup:InstanceGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoscalingPolicy = registerOutput<String?>('autoscalingPolicy');
    this.bidPrice = registerOutput<String?>('bidPrice');
    this.clusterId = registerOutput<String>('clusterId');
    this.configurationsJson = registerOutput<String?>('configurationsJson');
    this.ebsConfigs =
        registerOutput<List<InstanceGroupEbsConfig>>('ebsConfigs');
    this.ebsOptimized = registerOutput<bool?>('ebsOptimized');
    this.instanceCount = registerOutput<int>('instanceCount');
    this.instanceType = registerOutput<String>('instanceType');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.runningInstanceCount = registerOutput<int>('runningInstanceCount');
    this.status = registerOutput<String>('status');
  }
}
