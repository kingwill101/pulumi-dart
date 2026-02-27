// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_group_ebs_config/instance_group_ebs_config.dart';

/// The set of arguments for InstanceGroup.
class InstanceGroupArgs {
  /// The autoscaling policy document. This is a JSON formatted string. See [EMR Auto Scaling](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-automatic-scaling.html)
  final pulumi.Input<String>? autoscalingPolicy;

  /// If set, the bid price for each EC2 instance in the instance group, expressed in USD. By setting this attribute, the instance group is being declared as a Spot Instance, and will implicitly create a Spot request. Leave this blank to use On-Demand Instances.
  final pulumi.Input<String>? bidPrice;

  /// ID of the EMR Cluster to attach to. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterId;

  /// A JSON string for supplying list of configurations specific to the EMR instance group. Note that this can only be changed when using EMR release 5.21 or later.
  final pulumi.Input<String>? configurationsJson;

  /// One or more `ebs_config` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<InstanceGroupEbsConfig>>? ebsConfigs;

  /// Indicates whether an Amazon EBS volume is EBS-optimized. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? ebsOptimized;

  /// target number of instances for the instance group. defaults to 0.
  final pulumi.Input<int>? instanceCount;

  /// The EC2 instance type for all instances in the instance group. Changing this forces a new resource to be created.
  final pulumi.Input<String> instanceType;

  /// Human friendly name given to the instance group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  InstanceGroupArgs({
    this.autoscalingPolicy,
    this.bidPrice,
    required this.clusterId,
    this.configurationsJson,
    this.ebsConfigs,
    this.ebsOptimized,
    this.instanceCount,
    required this.instanceType,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingPolicyValue = autoscalingPolicy;
    if (autoscalingPolicyValue != null) {
      map['autoscalingPolicy'] = autoscalingPolicyValue;
    }
    final bidPriceValue = bidPrice;
    if (bidPriceValue != null) {
      map['bidPrice'] = bidPriceValue;
    }
    map['clusterId'] = clusterId;
    final configurationsJsonValue = configurationsJson;
    if (configurationsJsonValue != null) {
      map['configurationsJson'] = configurationsJsonValue;
    }
    final ebsConfigsValue = ebsConfigs;
    if (ebsConfigsValue != null) {
      map['ebsConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<InstanceGroupEbsConfig>, List<Map<String, dynamic>>>(
          ebsConfigsValue,
          (value) => pulumi.Input.encodeList<InstanceGroupEbsConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final ebsOptimizedValue = ebsOptimized;
    if (ebsOptimizedValue != null) {
      map['ebsOptimized'] = ebsOptimizedValue;
    }
    final instanceCountValue = instanceCount;
    if (instanceCountValue != null) {
      map['instanceCount'] = instanceCountValue;
    }
    map['instanceType'] = instanceType;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory InstanceGroupArgs.fromMap(Map<String, dynamic> map) {
    return InstanceGroupArgs(
      autoscalingPolicy:
          pulumi.Input.asOptionalInput<String>(map['autoscalingPolicy']),
      bidPrice: pulumi.Input.asOptionalInput<String>(map['bidPrice']),
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      configurationsJson:
          pulumi.Input.asOptionalInput<String>(map['configurationsJson']),
      ebsConfigs: pulumi.Input.asOptionalInput<List<InstanceGroupEbsConfig>>(
          map['ebsConfigs']),
      ebsOptimized: pulumi.Input.asOptionalInput<bool>(map['ebsOptimized']),
      instanceCount: pulumi.Input.asOptionalInput<int>(map['instanceCount']),
      instanceType: pulumi.Input.asInput<String>(map['instanceType']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
