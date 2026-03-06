// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_master_instance_fleet_instance_type_config_configuration.dart';
import 'cluster_master_instance_fleet_instance_type_config_ebs_config.dart';

class ClusterMasterInstanceFleetInstanceTypeConfig {
  /// Bid price for each EC2 Spot instance type as defined by `instance_type`. Expressed in USD. If neither `bid_price` nor `bid_price_as_percentage_of_on_demand_price` is provided, `bid_price_as_percentage_of_on_demand_price` defaults to 100%.
  final pulumi.Input<String>? bidPrice;
  /// Bid price, as a percentage of On-Demand price, for each EC2 Spot instance as defined by `instance_type`. Expressed as a number (for example, 20 specifies 20%). If neither `bid_price` nor `bid_price_as_percentage_of_on_demand_price` is provided, `bid_price_as_percentage_of_on_demand_price` defaults to 100%.
  final pulumi.Input<double>? bidPriceAsPercentageOfOnDemandPrice;
  /// Configuration classification that applies when provisioning cluster instances, which can include configurations for applications and software that run on the cluster. List of `configuration` blocks.
  final pulumi.Input<List<ClusterMasterInstanceFleetInstanceTypeConfigConfiguration>>? configurations;
  /// Configuration block(s) for EBS volumes attached to each instance in the instance group. Detailed below.
  final pulumi.Input<List<ClusterMasterInstanceFleetInstanceTypeConfigEbsConfig>>? ebsConfigs;
  /// EC2 instance type, such as m4.xlarge.
  final pulumi.Input<String> instanceType;
  /// Number of units that a provisioned instance of this type provides toward fulfilling the target capacities defined in `aws.emr.InstanceFleet`.
  final pulumi.Input<int>? weightedCapacity;

  /// Creates a new [ClusterMasterInstanceFleetInstanceTypeConfig].
  /// [bidPrice] Bid price for each EC2 Spot instance type as defined by `instance_type`. Expressed in USD. If neither `bid_price` nor `bid_price_as_percentage_of_on_demand_price` is provided, `bid_price_as_percentage_of_on_demand_price` defaults to 100%.
  /// [bidPriceAsPercentageOfOnDemandPrice] Bid price, as a percentage of On-Demand price, for each EC2 Spot instance as defined by `instance_type`. Expressed as a number (for example, 20 specifies 20%). If neither `bid_price` nor `bid_price_as_percentage_of_on_demand_price` is provided, `bid_price_as_percentage_of_on_demand_price` defaults to 100%.
  /// [configurations] Configuration classification that applies when provisioning cluster instances, which can include configurations for applications and software that run on the cluster. List of `configuration` blocks.
  /// [ebsConfigs] Configuration block(s) for EBS volumes attached to each instance in the instance group. Detailed below.
  /// [instanceType] EC2 instance type, such as m4.xlarge.
  /// [weightedCapacity] Number of units that a provisioned instance of this type provides toward fulfilling the target capacities defined in `aws.emr.InstanceFleet`.
  const ClusterMasterInstanceFleetInstanceTypeConfig({
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
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<ClusterMasterInstanceFleetInstanceTypeConfigConfiguration>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<ClusterMasterInstanceFleetInstanceTypeConfigConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ebsConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterMasterInstanceFleetInstanceTypeConfigEbsConfig>, List<Map<String, dynamic>>>(ebsConfigs, (value) => pulumi.Input.encodeList<ClusterMasterInstanceFleetInstanceTypeConfigEbsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceType': instanceType,
      'weightedCapacity': ?weightedCapacity,
    };
  }

  factory ClusterMasterInstanceFleetInstanceTypeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterMasterInstanceFleetInstanceTypeConfig(
      bidPrice: (() { final guardedValue = map['bidPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bidPriceAsPercentageOfOnDemandPrice: (() { final guardedValue = map['bidPriceAsPercentageOfOnDemandPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      configurations: (() { final guardedValue = map['configurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterMasterInstanceFleetInstanceTypeConfigConfiguration>(guardedValue, (value) => ClusterMasterInstanceFleetInstanceTypeConfigConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ebsConfigs: (() { final guardedValue = map['ebsConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterMasterInstanceFleetInstanceTypeConfigEbsConfig>(guardedValue, (value) => ClusterMasterInstanceFleetInstanceTypeConfigEbsConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      weightedCapacity: (() { final guardedValue = map['weightedCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

