// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_group_ebs_config/instance_group_ebs_config.dart';

/// The set of arguments for InstanceGroup.
class InstanceGroupArgs {
  /// The autoscaling policy document. This is a JSON formatted string. See [EMR Auto Scaling](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-automatic-scaling.html)
  final Input<String>? autoscalingPolicy;

  /// If set, the bid price for each EC2 instance in the instance group, expressed in USD. By setting this attribute, the instance group is being declared as a Spot Instance, and will implicitly create a Spot request. Leave this blank to use On-Demand Instances.
  final Input<String>? bidPrice;

  /// ID of the EMR Cluster to attach to. Changing this forces a new resource to be created.
  final Input<String> clusterId;

  /// A JSON string for supplying list of configurations specific to the EMR instance group. Note that this can only be changed when using EMR release 5.21 or later.
  final Input<String>? configurationsJson;

  /// One or more `ebs_config` blocks as defined below. Changing this forces a new resource to be created.
  final Input<List<InstanceGroupEbsConfig>>? ebsConfigs;

  /// Indicates whether an Amazon EBS volume is EBS-optimized. Changing this forces a new resource to be created.
  final Input<bool>? ebsOptimized;

  /// target number of instances for the instance group. defaults to 0.
  final Input<int>? instanceCount;

  /// The EC2 instance type for all instances in the instance group. Changing this forces a new resource to be created.
  final Input<String> instanceType;

  /// Human friendly name given to the instance group. Changing this forces a new resource to be created.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      map['ebsConfigs'] = Input.mapOptionalInputValue<
              List<InstanceGroupEbsConfig>, List<Map<String, dynamic>>>(
          ebsConfigsValue,
          (value) =>
              Input.encodeList<InstanceGroupEbsConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
          Input.asOptionalInput<String>(map['autoscalingPolicy']),
      bidPrice: Input.asOptionalInput<String>(map['bidPrice']),
      clusterId: Input.asInput<String>(map['clusterId']),
      configurationsJson:
          Input.asOptionalInput<String>(map['configurationsJson']),
      ebsConfigs: Input.asOptionalInput<List<InstanceGroupEbsConfig>>(
          map['ebsConfigs']),
      ebsOptimized: Input.asOptionalInput<bool>(map['ebsOptimized']),
      instanceCount: Input.asOptionalInput<int>(map['instanceCount']),
      instanceType: Input.asInput<String>(map['instanceType']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
