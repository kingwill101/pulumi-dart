// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_fleet_instance_type_config_configuration/instance_fleet_instance_type_config_configuration.dart';
import '../instance_fleet_instance_type_config_ebs_config/instance_fleet_instance_type_config_ebs_config.dart';

class InstanceFleetInstanceTypeConfig {
  /// The bid price for each EC2 Spot instance type as defined by `instance_type`. Expressed in USD. If neither `bid_price` nor `bid_price_as_percentage_of_on_demand_price` is provided, `bid_price_as_percentage_of_on_demand_price` defaults to 100%.
  final String? bidPrice;

  /// The bid price, as a percentage of On-Demand price, for each EC2 Spot instance as defined by `instance_type`. Expressed as a number (for example, 20 specifies 20%). If neither `bid_price` nor `bid_price_as_percentage_of_on_demand_price` is provided, `bid_price_as_percentage_of_on_demand_price` defaults to 100%.
  final double? bidPriceAsPercentageOfOnDemandPrice;

  /// A configuration classification that applies when provisioning cluster instances, which can include configurations for applications and software that run on the cluster. List of `configuration` blocks.
  final List<InstanceFleetInstanceTypeConfigConfiguration>? configurations;

  /// Configuration block(s) for EBS volumes attached to each instance in the instance group. Detailed below.
  final List<InstanceFleetInstanceTypeConfigEbsConfig>? ebsConfigs;

  /// An EC2 instance type, such as m4.xlarge.
  final String instanceType;

  /// The number of units that a provisioned instance of this type provides toward fulfilling the target capacities defined in `aws.emr.InstanceFleet`.
  final int? weightedCapacity;

  InstanceFleetInstanceTypeConfig({
    this.bidPrice,
    this.bidPriceAsPercentageOfOnDemandPrice,
    this.configurations,
    this.ebsConfigs,
    required this.instanceType,
    this.weightedCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bidPriceValue = bidPrice;
    if (bidPriceValue != null) {
      map['bidPrice'] = bidPriceValue;
    }
    final bidPriceAsPercentageOfOnDemandPriceValue =
        bidPriceAsPercentageOfOnDemandPrice;
    if (bidPriceAsPercentageOfOnDemandPriceValue != null) {
      map['bidPriceAsPercentageOfOnDemandPrice'] =
          bidPriceAsPercentageOfOnDemandPriceValue;
    }
    final configurationsValue = configurations;
    if (configurationsValue != null) {
      map['configurations'] = Input.encodeList<
          InstanceFleetInstanceTypeConfigConfiguration,
          Map<String, dynamic>>(configurationsValue, (value) => value.toMap());
    }
    final ebsConfigsValue = ebsConfigs;
    if (ebsConfigsValue != null) {
      map['ebsConfigs'] = Input.encodeList<
          InstanceFleetInstanceTypeConfigEbsConfig,
          Map<String, dynamic>>(ebsConfigsValue, (value) => value.toMap());
    }
    map['instanceType'] = instanceType;
    final weightedCapacityValue = weightedCapacity;
    if (weightedCapacityValue != null) {
      map['weightedCapacity'] = weightedCapacityValue;
    }
    return map;
  }

  factory InstanceFleetInstanceTypeConfig.fromMap(Map<String, dynamic> map) {
    return InstanceFleetInstanceTypeConfig(
      bidPrice: map['bidPrice'] == null ? null : map['bidPrice'] as String,
      bidPriceAsPercentageOfOnDemandPrice:
          map['bidPriceAsPercentageOfOnDemandPrice'] == null
              ? null
              : map['bidPriceAsPercentageOfOnDemandPrice'] as double,
      configurations: map['configurations'] == null
          ? null
          : Input.decodeList<InstanceFleetInstanceTypeConfigConfiguration>(
              map['configurations'],
              (value) => InstanceFleetInstanceTypeConfigConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ebsConfigs: map['ebsConfigs'] == null
          ? null
          : Input.decodeList<InstanceFleetInstanceTypeConfigEbsConfig>(
              map['ebsConfigs'],
              (value) => InstanceFleetInstanceTypeConfigEbsConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      instanceType: map['instanceType'] as String,
      weightedCapacity: map['weightedCapacity'] == null
          ? null
          : map['weightedCapacity'] as int,
    );
  }
}
