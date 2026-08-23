// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_fleet_instance_type_config_configuration.dart';
import 'instance_fleet_instance_type_config_ebs_config.dart';

class InstanceFleetInstanceTypeConfig {
  /// The bid price for each EC2 Spot instance type as defined by `instanceType`. Expressed in USD. If neither `bidPrice` nor `bidPriceAsPercentageOfOnDemandPrice` is provided, `bidPriceAsPercentageOfOnDemandPrice` defaults to 100%.
  final pulumi.Input<String>? bidPrice;
  /// The bid price, as a percentage of On-Demand price, for each EC2 Spot instance as defined by `instanceType`. Expressed as a number (for example, 20 specifies 20%). If neither `bidPrice` nor `bidPriceAsPercentageOfOnDemandPrice` is provided, `bidPriceAsPercentageOfOnDemandPrice` defaults to 100%.
  final pulumi.Input<double>? bidPriceAsPercentageOfOnDemandPrice;
  /// A configuration classification that applies when provisioning cluster instances, which can include configurations for applications and software that run on the cluster. List of `configuration` blocks.
  final pulumi.Input<List<InstanceFleetInstanceTypeConfigConfiguration>>? configurations;
  /// Configuration block(s) for EBS volumes attached to each instance in the instance group. Detailed below.
  final pulumi.Input<List<InstanceFleetInstanceTypeConfigEbsConfig>>? ebsConfigs;
  /// An EC2 instance type, such as m4.xlarge.
  final pulumi.Input<String> instanceType;
  /// The number of units that a provisioned instance of this type provides toward fulfilling the target capacities defined in `aws.emr.InstanceFleet`.
  final pulumi.Input<int>? weightedCapacity;

  /// Creates a new [InstanceFleetInstanceTypeConfig].
  /// [bidPrice] The bid price for each EC2 Spot instance type as defined by `instanceType`. Expressed in USD. If neither `bidPrice` nor `bidPriceAsPercentageOfOnDemandPrice` is provided, `bidPriceAsPercentageOfOnDemandPrice` defaults to 100%.
  /// [bidPriceAsPercentageOfOnDemandPrice] The bid price, as a percentage of On-Demand price, for each EC2 Spot instance as defined by `instanceType`. Expressed as a number (for example, 20 specifies 20%). If neither `bidPrice` nor `bidPriceAsPercentageOfOnDemandPrice` is provided, `bidPriceAsPercentageOfOnDemandPrice` defaults to 100%.
  /// [configurations] A configuration classification that applies when provisioning cluster instances, which can include configurations for applications and software that run on the cluster. List of `configuration` blocks.
  /// [ebsConfigs] Configuration block(s) for EBS volumes attached to each instance in the instance group. Detailed below.
  /// [instanceType] An EC2 instance type, such as m4.xlarge.
  /// [weightedCapacity] The number of units that a provisioned instance of this type provides toward fulfilling the target capacities defined in `aws.emr.InstanceFleet`.
  const InstanceFleetInstanceTypeConfig({
    this.bidPrice,
    this.bidPriceAsPercentageOfOnDemandPrice,
    this.configurations,
    this.ebsConfigs,
    required this.instanceType,
    this.weightedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bidPrice': ?bidPrice,
      'bidPriceAsPercentageOfOnDemandPrice': ?bidPriceAsPercentageOfOnDemandPrice,
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<InstanceFleetInstanceTypeConfigConfiguration>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<InstanceFleetInstanceTypeConfigConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ebsConfigs': ?pulumi.Input.mapOptionalInputValue<List<InstanceFleetInstanceTypeConfigEbsConfig>, List<Map<String, dynamic>>>(ebsConfigs, (value) => pulumi.Input.encodeList<InstanceFleetInstanceTypeConfigEbsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceType': instanceType,
      'weightedCapacity': ?weightedCapacity,
    };
  }

  factory InstanceFleetInstanceTypeConfig.fromMap(Map<String, dynamic> map) {
    return InstanceFleetInstanceTypeConfig(
      bidPrice: (() { final guardedValue = map['bidPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bidPriceAsPercentageOfOnDemandPrice: (() { final guardedValue = map['bidPriceAsPercentageOfOnDemandPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      configurations: (() { final guardedValue = map['configurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceFleetInstanceTypeConfigConfiguration>(guardedValue, (value) => InstanceFleetInstanceTypeConfigConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ebsConfigs: (() { final guardedValue = map['ebsConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceFleetInstanceTypeConfigEbsConfig>(guardedValue, (value) => InstanceFleetInstanceTypeConfigEbsConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      weightedCapacity: (() { final guardedValue = map['weightedCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
