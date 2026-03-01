// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_master_instance_fleet_instance_type_config_configuration.dart';
import 'cluster_master_instance_fleet_instance_type_config_ebs_config.dart';

class ClusterMasterInstanceFleetInstanceTypeConfig {
  /// Bid price for each EC2 Spot instance type as defined by `instance_type`. Expressed in USD. If neither `bid_price` nor `bid_price_as_percentage_of_on_demand_price` is provided, `bid_price_as_percentage_of_on_demand_price` defaults to 100%.
  final String? bidPrice;

  /// Bid price, as a percentage of On-Demand price, for each EC2 Spot instance as defined by `instance_type`. Expressed as a number (for example, 20 specifies 20%). If neither `bid_price` nor `bid_price_as_percentage_of_on_demand_price` is provided, `bid_price_as_percentage_of_on_demand_price` defaults to 100%.
  final double? bidPriceAsPercentageOfOnDemandPrice;

  /// Configuration classification that applies when provisioning cluster instances, which can include configurations for applications and software that run on the cluster. List of `configuration` blocks.
  final List<ClusterMasterInstanceFleetInstanceTypeConfigConfiguration>?
  configurations;

  /// Configuration block(s) for EBS volumes attached to each instance in the instance group. Detailed below.
  final List<ClusterMasterInstanceFleetInstanceTypeConfigEbsConfig>? ebsConfigs;

  /// EC2 instance type, such as m4.xlarge.
  final String instanceType;

  /// Number of units that a provisioned instance of this type provides toward fulfilling the target capacities defined in `aws.emr.InstanceFleet`.
  final int? weightedCapacity;

  /// Creates a new [ClusterMasterInstanceFleetInstanceTypeConfig].
  /// [bidPrice] Bid price for each EC2 Spot instance type as defined by `instance_type`. Expressed in USD. If neither `bid_price` nor `bid_price_as_percentage_of_on_demand_price` is provided, `bid_price_as_percentage_of_on_demand_price` defaults to 100%.
  /// [bidPriceAsPercentageOfOnDemandPrice] Bid price, as a percentage of On-Demand price, for each EC2 Spot instance as defined by `instance_type`. Expressed as a number (for example, 20 specifies 20%). If neither `bid_price` nor `bid_price_as_percentage_of_on_demand_price` is provided, `bid_price_as_percentage_of_on_demand_price` defaults to 100%.
  /// [configurations] Configuration classification that applies when provisioning cluster instances, which can include configurations for applications and software that run on the cluster. List of `configuration` blocks.
  /// [ebsConfigs] Configuration block(s) for EBS volumes attached to each instance in the instance group. Detailed below.
  /// [instanceType] EC2 instance type, such as m4.xlarge.
  /// [weightedCapacity] Number of units that a provisioned instance of this type provides toward fulfilling the target capacities defined in `aws.emr.InstanceFleet`.
  ClusterMasterInstanceFleetInstanceTypeConfig({
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
      'bidPriceAsPercentageOfOnDemandPrice':
          ?bidPriceAsPercentageOfOnDemandPrice,
      'configurations': ?configurations == null
          ? null
          : pulumi.Input.encodeList<
              ClusterMasterInstanceFleetInstanceTypeConfigConfiguration,
              Map<String, dynamic>
            >(configurations!, (value) => value.toMap()),
      'ebsConfigs': ?ebsConfigs == null
          ? null
          : pulumi.Input.encodeList<
              ClusterMasterInstanceFleetInstanceTypeConfigEbsConfig,
              Map<String, dynamic>
            >(ebsConfigs!, (value) => value.toMap()),
      'instanceType': instanceType,
      'weightedCapacity': ?weightedCapacity,
    };
  }

  factory ClusterMasterInstanceFleetInstanceTypeConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterMasterInstanceFleetInstanceTypeConfig(
      bidPrice: map['bidPrice'] == null ? null : map['bidPrice'] as String,
      bidPriceAsPercentageOfOnDemandPrice:
          map['bidPriceAsPercentageOfOnDemandPrice'] == null
          ? null
          : map['bidPriceAsPercentageOfOnDemandPrice'] as double,
      configurations: map['configurations'] == null
          ? null
          : pulumi.Input.decodeList<
              ClusterMasterInstanceFleetInstanceTypeConfigConfiguration
            >(
              map['configurations'],
              (value) =>
                  ClusterMasterInstanceFleetInstanceTypeConfigConfiguration.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      ebsConfigs: map['ebsConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              ClusterMasterInstanceFleetInstanceTypeConfigEbsConfig
            >(
              map['ebsConfigs'],
              (value) =>
                  ClusterMasterInstanceFleetInstanceTypeConfigEbsConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      instanceType: map['instanceType'] as String,
      weightedCapacity: map['weightedCapacity'] == null
          ? null
          : map['weightedCapacity'] as int,
    );
  }
}
