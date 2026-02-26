// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_master_instance_fleet_instance_type_config_configuration/cluster_master_instance_fleet_instance_type_config_configuration.dart';
import '../cluster_master_instance_fleet_instance_type_config_ebs_config/cluster_master_instance_fleet_instance_type_config_ebs_config.dart';

class ClusterMasterInstanceFleetInstanceTypeConfig {
  /// Bid price for each EC2 Spot instance type as defined by <span pulumi-lang-nodejs="`instanceType`" pulumi-lang-dotnet="`InstanceType`" pulumi-lang-go="`instanceType`" pulumi-lang-python="`instance_type`" pulumi-lang-yaml="`instanceType`" pulumi-lang-java="`instanceType`">`instance_type`</span>. Expressed in USD. If neither <span pulumi-lang-nodejs="`bidPrice`" pulumi-lang-dotnet="`BidPrice`" pulumi-lang-go="`bidPrice`" pulumi-lang-python="`bid_price`" pulumi-lang-yaml="`bidPrice`" pulumi-lang-java="`bidPrice`">`bid_price`</span> nor <span pulumi-lang-nodejs="`bidPriceAsPercentageOfOnDemandPrice`" pulumi-lang-dotnet="`BidPriceAsPercentageOfOnDemandPrice`" pulumi-lang-go="`bidPriceAsPercentageOfOnDemandPrice`" pulumi-lang-python="`bid_price_as_percentage_of_on_demand_price`" pulumi-lang-yaml="`bidPriceAsPercentageOfOnDemandPrice`" pulumi-lang-java="`bidPriceAsPercentageOfOnDemandPrice`">`bid_price_as_percentage_of_on_demand_price`</span> is provided, <span pulumi-lang-nodejs="`bidPriceAsPercentageOfOnDemandPrice`" pulumi-lang-dotnet="`BidPriceAsPercentageOfOnDemandPrice`" pulumi-lang-go="`bidPriceAsPercentageOfOnDemandPrice`" pulumi-lang-python="`bid_price_as_percentage_of_on_demand_price`" pulumi-lang-yaml="`bidPriceAsPercentageOfOnDemandPrice`" pulumi-lang-java="`bidPriceAsPercentageOfOnDemandPrice`">`bid_price_as_percentage_of_on_demand_price`</span> defaults to 100%.
  final String? bidPrice;

  /// Bid price, as a percentage of On-Demand price, for each EC2 Spot instance as defined by <span pulumi-lang-nodejs="`instanceType`" pulumi-lang-dotnet="`InstanceType`" pulumi-lang-go="`instanceType`" pulumi-lang-python="`instance_type`" pulumi-lang-yaml="`instanceType`" pulumi-lang-java="`instanceType`">`instance_type`</span>. Expressed as a number (for example, 20 specifies 20%). If neither <span pulumi-lang-nodejs="`bidPrice`" pulumi-lang-dotnet="`BidPrice`" pulumi-lang-go="`bidPrice`" pulumi-lang-python="`bid_price`" pulumi-lang-yaml="`bidPrice`" pulumi-lang-java="`bidPrice`">`bid_price`</span> nor <span pulumi-lang-nodejs="`bidPriceAsPercentageOfOnDemandPrice`" pulumi-lang-dotnet="`BidPriceAsPercentageOfOnDemandPrice`" pulumi-lang-go="`bidPriceAsPercentageOfOnDemandPrice`" pulumi-lang-python="`bid_price_as_percentage_of_on_demand_price`" pulumi-lang-yaml="`bidPriceAsPercentageOfOnDemandPrice`" pulumi-lang-java="`bidPriceAsPercentageOfOnDemandPrice`">`bid_price_as_percentage_of_on_demand_price`</span> is provided, <span pulumi-lang-nodejs="`bidPriceAsPercentageOfOnDemandPrice`" pulumi-lang-dotnet="`BidPriceAsPercentageOfOnDemandPrice`" pulumi-lang-go="`bidPriceAsPercentageOfOnDemandPrice`" pulumi-lang-python="`bid_price_as_percentage_of_on_demand_price`" pulumi-lang-yaml="`bidPriceAsPercentageOfOnDemandPrice`" pulumi-lang-java="`bidPriceAsPercentageOfOnDemandPrice`">`bid_price_as_percentage_of_on_demand_price`</span> defaults to 100%.
  final double? bidPriceAsPercentageOfOnDemandPrice;

  /// Configuration classification that applies when provisioning cluster instances, which can include configurations for applications and software that run on the cluster. List of <span pulumi-lang-nodejs="`configuration`" pulumi-lang-dotnet="`Configuration`" pulumi-lang-go="`configuration`" pulumi-lang-python="`configuration`" pulumi-lang-yaml="`configuration`" pulumi-lang-java="`configuration`">`configuration`</span> blocks.
  final List<ClusterMasterInstanceFleetInstanceTypeConfigConfiguration>?
      configurations;

  /// Configuration block(s) for EBS volumes attached to each instance in the instance group. Detailed below.
  final List<ClusterMasterInstanceFleetInstanceTypeConfigEbsConfig>? ebsConfigs;

  /// EC2 instance type, such as m4.xlarge.
  final String instanceType;

  /// Number of units that a provisioned instance of this type provides toward fulfilling the target capacities defined in <span pulumi-lang-nodejs="`aws.emr.InstanceFleet`" pulumi-lang-dotnet="`aws.emr.InstanceFleet`" pulumi-lang-go="`emr.InstanceFleet`" pulumi-lang-python="`emr.InstanceFleet`" pulumi-lang-yaml="`aws.emr.InstanceFleet`" pulumi-lang-java="`aws.emr.InstanceFleet`">`aws.emr.InstanceFleet`</span>.
  final int? weightedCapacity;

  ClusterMasterInstanceFleetInstanceTypeConfig({
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
          ClusterMasterInstanceFleetInstanceTypeConfigConfiguration,
          Map<String, dynamic>>(configurationsValue, (value) => value.toMap());
    }
    final ebsConfigsValue = ebsConfigs;
    if (ebsConfigsValue != null) {
      map['ebsConfigs'] = Input.encodeList<
          ClusterMasterInstanceFleetInstanceTypeConfigEbsConfig,
          Map<String, dynamic>>(ebsConfigsValue, (value) => value.toMap());
    }
    map['instanceType'] = instanceType;
    final weightedCapacityValue = weightedCapacity;
    if (weightedCapacityValue != null) {
      map['weightedCapacity'] = weightedCapacityValue;
    }
    return map;
  }

  factory ClusterMasterInstanceFleetInstanceTypeConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterMasterInstanceFleetInstanceTypeConfig(
      bidPrice: map['bidPrice'] == null ? null : map['bidPrice'] as String,
      bidPriceAsPercentageOfOnDemandPrice:
          map['bidPriceAsPercentageOfOnDemandPrice'] == null
              ? null
              : map['bidPriceAsPercentageOfOnDemandPrice'] as double,
      configurations: map['configurations'] == null
          ? null
          : Input.decodeList<
                  ClusterMasterInstanceFleetInstanceTypeConfigConfiguration>(
              map['configurations'],
              (value) =>
                  ClusterMasterInstanceFleetInstanceTypeConfigConfiguration
                      .fromMap((value as Map).cast<String, dynamic>())),
      ebsConfigs: map['ebsConfigs'] == null
          ? null
          : Input.decodeList<
                  ClusterMasterInstanceFleetInstanceTypeConfigEbsConfig>(
              map['ebsConfigs'],
              (value) =>
                  ClusterMasterInstanceFleetInstanceTypeConfigEbsConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      instanceType: map['instanceType'] as String,
      weightedCapacity: map['weightedCapacity'] == null
          ? null
          : map['weightedCapacity'] as int,
    );
  }
}
