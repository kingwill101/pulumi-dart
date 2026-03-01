// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_basic_accelerators_accelerator_basic_bandwidth_package.dart';
import 'get_basic_accelerators_accelerator_cross_domain_bandwidth_package.dart';

class GetBasicAcceleratorsAccelerator {
  /// The bandwidth billing method. Valid values:
  /// - `BandwidthPackage`: billed based on bandwidth plans.
  /// - `CDT`: billed through Cloud Data Transfer (CDT) and based on data transfer.
  /// - `CDT95`: billed through CDT and based on the 95th percentile bandwidth. This bandwidth billing method is available only for users that are included in the whitelist.
  final String bandwidthBillingType;
  /// The id of the Global Accelerator Basic Accelerator instance.
  final String basicAcceleratorId;
  /// The name of the Global Accelerator Basic Accelerator instance.
  final String basicAcceleratorName;
  /// The details about the basic bandwidth plan that is associated with the Global Accelerator Basic Accelerator instance.
  final List<GetBasicAcceleratorsAcceleratorBasicBandwidthPackage> basicBandwidthPackages;
  /// The ID of the endpoint group that is associated with the Global Accelerator Basic Accelerator instance.
  final String basicEndpointGroupId;
  /// The ID of the acceleration region.
  final String basicIpSetId;
  /// The timestamp that indicates when the Global Accelerator Basic Accelerator instance was created.
  final int createTime;
  /// The details about the cross-region acceleration bandwidth plan that is associated with the Global Accelerator Basic Accelerator instance. **NOTE:** This array is returned only for Global Accelerator Basic Accelerator instances that are created on the International site.
  final List<GetBasicAcceleratorsAcceleratorCrossDomainBandwidthPackage> crossDomainBandwidthPackages;
  /// The description of the Global Accelerator Basic Accelerator instance.
  final String description;
  /// The timestamp that indicates when the Global Accelerator Basic Accelerator instance was expired.
  final int expiredTime;
  /// The id of the Global Accelerator Basic Accelerator.
  final String id;
  /// The billing method of the Global Accelerator Basic Accelerator instance.
  final String instanceChargeType;
  /// The ID of the region where the Global Accelerator Basic Accelerator instance is deployed.
  final String regionId;
  /// The status of the Global Accelerator Basic Accelerator instance. Valid Value: `init`, `active`, `configuring`, `binding`, `unbinding`, `deleting`, `finacialLocked`.
  final String status;

  /// Creates a new [GetBasicAcceleratorsAccelerator].
  /// [bandwidthBillingType] The bandwidth billing method. Valid values:
  /// [basicAcceleratorId] The id of the Global Accelerator Basic Accelerator instance.
  /// [basicAcceleratorName] The name of the Global Accelerator Basic Accelerator instance.
  /// [basicBandwidthPackages] The details about the basic bandwidth plan that is associated with the Global Accelerator Basic Accelerator instance.
  /// [basicEndpointGroupId] The ID of the endpoint group that is associated with the Global Accelerator Basic Accelerator instance.
  /// [basicIpSetId] The ID of the acceleration region.
  /// [createTime] The timestamp that indicates when the Global Accelerator Basic Accelerator instance was created.
  /// [crossDomainBandwidthPackages] The details about the cross-region acceleration bandwidth plan that is associated with the Global Accelerator Basic Accelerator instance. **NOTE:** This array is returned only for Global Accelerator Basic Accelerator instances that are created on the International site.
  /// [description] The description of the Global Accelerator Basic Accelerator instance.
  /// [expiredTime] The timestamp that indicates when the Global Accelerator Basic Accelerator instance was expired.
  /// [id] The id of the Global Accelerator Basic Accelerator.
  /// [instanceChargeType] The billing method of the Global Accelerator Basic Accelerator instance.
  /// [regionId] The ID of the region where the Global Accelerator Basic Accelerator instance is deployed.
  /// [status] The status of the Global Accelerator Basic Accelerator instance. Valid Value: `init`, `active`, `configuring`, `binding`, `unbinding`, `deleting`, `finacialLocked`.
  GetBasicAcceleratorsAccelerator({
    required this.bandwidthBillingType,
    required this.basicAcceleratorId,
    required this.basicAcceleratorName,
    required this.basicBandwidthPackages,
    required this.basicEndpointGroupId,
    required this.basicIpSetId,
    required this.createTime,
    required this.crossDomainBandwidthPackages,
    required this.description,
    required this.expiredTime,
    required this.id,
    required this.instanceChargeType,
    required this.regionId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthBillingType': bandwidthBillingType,
      'basicAcceleratorId': basicAcceleratorId,
      'basicAcceleratorName': basicAcceleratorName,
      'basicBandwidthPackages': pulumi.Input.encodeList<GetBasicAcceleratorsAcceleratorBasicBandwidthPackage, Map<String, dynamic>>(basicBandwidthPackages, (value) => value.toMap()),
      'basicEndpointGroupId': basicEndpointGroupId,
      'basicIpSetId': basicIpSetId,
      'createTime': createTime,
      'crossDomainBandwidthPackages': pulumi.Input.encodeList<GetBasicAcceleratorsAcceleratorCrossDomainBandwidthPackage, Map<String, dynamic>>(crossDomainBandwidthPackages, (value) => value.toMap()),
      'description': description,
      'expiredTime': expiredTime,
      'id': id,
      'instanceChargeType': instanceChargeType,
      'regionId': regionId,
      'status': status,
    };
  }

  factory GetBasicAcceleratorsAccelerator.fromMap(Map<String, dynamic> map) {
    return GetBasicAcceleratorsAccelerator(
      bandwidthBillingType: map['bandwidthBillingType'] as String,
      basicAcceleratorId: map['basicAcceleratorId'] as String,
      basicAcceleratorName: map['basicAcceleratorName'] as String,
      basicBandwidthPackages: pulumi.Input.decodeList<GetBasicAcceleratorsAcceleratorBasicBandwidthPackage>(map['basicBandwidthPackages'], (value) => GetBasicAcceleratorsAcceleratorBasicBandwidthPackage.fromMap((value as Map).cast<String, dynamic>())),
      basicEndpointGroupId: map['basicEndpointGroupId'] as String,
      basicIpSetId: map['basicIpSetId'] as String,
      createTime: map['createTime'] as int,
      crossDomainBandwidthPackages: pulumi.Input.decodeList<GetBasicAcceleratorsAcceleratorCrossDomainBandwidthPackage>(map['crossDomainBandwidthPackages'], (value) => GetBasicAcceleratorsAcceleratorCrossDomainBandwidthPackage.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      expiredTime: map['expiredTime'] as int,
      id: map['id'] as String,
      instanceChargeType: map['instanceChargeType'] as String,
      regionId: map['regionId'] as String,
      status: map['status'] as String,
    );
  }
}

