// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zones_get_zones_args_doc}
/// Arguments for getZones.
/// {@endtemplate}
/// {@macro pulumi_index_get_zones_get_zones_args_doc}
class GetZonesArgs {
  /// Filter the results by a specific disk category. Can be either `cloud`, `cloud_efficiency`, `cloud_ssd`, `ephemeral_ssd`.
  final pulumi.Input<String>? availableDiskCategory;
  /// Filter the results by a specific instance type.
  final pulumi.Input<String>? availableInstanceType;
  /// Filter the results by a specific resource type.
  /// Valid values: `Instance`, `Disk`, `VSwitch`, `Rds`, `KVStore`, `FunctionCompute`, `Elasticsearch`, `Slb`.
  ///
  /// > **NOTE:** From version 1.134.0, the `available_resource_creation` value "Rds" has been deprecated.
  /// If you want to fetch the available zones for RDS instance, you can use datasource alicloud_db_zones
  final pulumi.Input<String>? availableResourceCreation;
  /// Filter the results by a slb instance address version. Can be either `ipv4`, or `ipv6`.
  ///
  /// > **NOTE:** The disk category `cloud` has been outdated and can only be used by non-I/O Optimized ECS instances. Many availability zones don't support it. It is recommended to use `cloud_efficiency` or `cloud_ssd`.
  final pulumi.Input<String>? availableSlbAddressIpVersion;
  /// Filter the results by a slb instance address type. Can be either `Vpc`, `classic_internet` or `classic_intranet`
  final pulumi.Input<String>? availableSlbAddressType;
  /// Default to false and only output `id` in the `zones` block. Set it to true can output more details.
  final pulumi.Input<bool>? enableDetails;
  /// Filter the results by a specific ECS instance charge type. Valid values: `PrePaid` and `PostPaid`. Default to `PostPaid`.
  final pulumi.Input<String>? instanceChargeType;
  /// Indicate whether the zones can be used in a multi AZ configuration. Default to `false`. Multi AZ is usually used to launch RDS instances.
  final pulumi.Input<bool>? multi;
  /// Filter the results by a specific network type. Valid values: `Classic` and `Vpc`.
  final pulumi.Input<String>? networkType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// - (Optional) Filter the results by a specific ECS spot type. Valid values: `NoSpot`, `SpotWithPriceLimit` and `SpotAsPriceGo`. Default to `NoSpot`.
  final pulumi.Input<String>? spotStrategy;

  /// Creates a new [GetZonesArgs].
  /// [availableDiskCategory] Filter the results by a specific disk category. Can be either `cloud`, `cloud_efficiency`, `cloud_ssd`, `ephemeral_ssd`.
  /// [availableInstanceType] Filter the results by a specific instance type.
  /// [availableResourceCreation] Filter the results by a specific resource type.
  /// [availableSlbAddressIpVersion] Filter the results by a slb instance address version. Can be either `ipv4`, or `ipv6`.
  /// [availableSlbAddressType] Filter the results by a slb instance address type. Can be either `Vpc`, `classic_internet` or `classic_intranet`
  /// [enableDetails] Default to false and only output `id` in the `zones` block. Set it to true can output more details.
  /// [instanceChargeType] Filter the results by a specific ECS instance charge type. Valid values: `PrePaid` and `PostPaid`. Default to `PostPaid`.
  /// [multi] Indicate whether the zones can be used in a multi AZ configuration. Default to `false`. Multi AZ is usually used to launch RDS instances.
  /// [networkType] Filter the results by a specific network type. Valid values: `Classic` and `Vpc`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [spotStrategy] - (Optional) Filter the results by a specific ECS spot type. Valid values: `NoSpot`, `SpotWithPriceLimit` and `SpotAsPriceGo`. Default to `NoSpot`.
  GetZonesArgs({
    this.availableDiskCategory,
    this.availableInstanceType,
    this.availableResourceCreation,
    this.availableSlbAddressIpVersion,
    this.availableSlbAddressType,
    this.enableDetails,
    this.instanceChargeType,
    this.multi,
    this.networkType,
    this.outputFile,
    this.spotStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableDiskCategory': ?availableDiskCategory,
      'availableInstanceType': ?availableInstanceType,
      'availableResourceCreation': ?availableResourceCreation,
      'availableSlbAddressIpVersion': ?availableSlbAddressIpVersion,
      'availableSlbAddressType': ?availableSlbAddressType,
      'enableDetails': ?enableDetails,
      'instanceChargeType': ?instanceChargeType,
      'multi': ?multi,
      'networkType': ?networkType,
      'outputFile': ?outputFile,
      'spotStrategy': ?spotStrategy,
    };
  }

  factory GetZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetZonesArgs(
      availableDiskCategory: map['availableDiskCategory'] == null ? null : (map['availableDiskCategory'] as String).input(),
      availableInstanceType: map['availableInstanceType'] == null ? null : (map['availableInstanceType'] as String).input(),
      availableResourceCreation: map['availableResourceCreation'] == null ? null : (map['availableResourceCreation'] as String).input(),
      availableSlbAddressIpVersion: map['availableSlbAddressIpVersion'] == null ? null : (map['availableSlbAddressIpVersion'] as String).input(),
      availableSlbAddressType: map['availableSlbAddressType'] == null ? null : (map['availableSlbAddressType'] as String).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      instanceChargeType: map['instanceChargeType'] == null ? null : (map['instanceChargeType'] as String).input(),
      multi: map['multi'] == null ? null : (map['multi'] as bool).input(),
      networkType: map['networkType'] == null ? null : (map['networkType'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      spotStrategy: map['spotStrategy'] == null ? null : (map['spotStrategy'] as String).input(),
    );
  }
}

