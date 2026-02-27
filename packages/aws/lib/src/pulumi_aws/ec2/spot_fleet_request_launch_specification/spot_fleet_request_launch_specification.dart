// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../spot_fleet_request_launch_specification_ebs_block_device/spot_fleet_request_launch_specification_ebs_block_device.dart';
import '../spot_fleet_request_launch_specification_ephemeral_block_device/spot_fleet_request_launch_specification_ephemeral_block_device.dart';
import '../spot_fleet_request_launch_specification_root_block_device/spot_fleet_request_launch_specification_root_block_device.dart';

class SpotFleetRequestLaunchSpecification {
  final String ami;
  final bool? associatePublicIpAddress;

  /// The availability zone in which to place the request.
  final String? availabilityZone;
  final List<SpotFleetRequestLaunchSpecificationEbsBlockDevice>?
      ebsBlockDevices;
  final bool? ebsOptimized;
  final List<SpotFleetRequestLaunchSpecificationEphemeralBlockDevice>?
      ephemeralBlockDevices;
  final String? iamInstanceProfile;
  final String? iamInstanceProfileArn;

  /// The type of instance to request.
  final String instanceType;
  final String? keyName;
  final bool? monitoring;
  final String? placementGroup;
  final String? placementTenancy;
  final List<SpotFleetRequestLaunchSpecificationRootBlockDevice>?
      rootBlockDevices;

  /// The maximum bid price per unit hour.
  final String? spotPrice;

  /// The subnet in which to launch the requested instance.
  final String? subnetId;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;
  final String? userData;
  final List<String>? vpcSecurityGroupIds;

  /// The capacity added to the fleet by a fulfilled request.
  final String? weightedCapacity;

  SpotFleetRequestLaunchSpecification({
    required this.ami,
    this.associatePublicIpAddress,
    this.availabilityZone,
    this.ebsBlockDevices,
    this.ebsOptimized,
    this.ephemeralBlockDevices,
    this.iamInstanceProfile,
    this.iamInstanceProfileArn,
    required this.instanceType,
    this.keyName,
    this.monitoring,
    this.placementGroup,
    this.placementTenancy,
    this.rootBlockDevices,
    this.spotPrice,
    this.subnetId,
    this.tags,
    this.userData,
    this.vpcSecurityGroupIds,
    this.weightedCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ami'] = ami;
    final associatePublicIpAddressValue = associatePublicIpAddress;
    if (associatePublicIpAddressValue != null) {
      map['associatePublicIpAddress'] = associatePublicIpAddressValue;
    }
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final ebsBlockDevicesValue = ebsBlockDevices;
    if (ebsBlockDevicesValue != null) {
      map['ebsBlockDevices'] = Input.encodeList<
          SpotFleetRequestLaunchSpecificationEbsBlockDevice,
          Map<String, dynamic>>(ebsBlockDevicesValue, (value) => value.toMap());
    }
    final ebsOptimizedValue = ebsOptimized;
    if (ebsOptimizedValue != null) {
      map['ebsOptimized'] = ebsOptimizedValue;
    }
    final ephemeralBlockDevicesValue = ephemeralBlockDevices;
    if (ephemeralBlockDevicesValue != null) {
      map['ephemeralBlockDevices'] = Input.encodeList<
              SpotFleetRequestLaunchSpecificationEphemeralBlockDevice,
              Map<String, dynamic>>(
          ephemeralBlockDevicesValue, (value) => value.toMap());
    }
    final iamInstanceProfileValue = iamInstanceProfile;
    if (iamInstanceProfileValue != null) {
      map['iamInstanceProfile'] = iamInstanceProfileValue;
    }
    final iamInstanceProfileArnValue = iamInstanceProfileArn;
    if (iamInstanceProfileArnValue != null) {
      map['iamInstanceProfileArn'] = iamInstanceProfileArnValue;
    }
    map['instanceType'] = instanceType;
    final keyNameValue = keyName;
    if (keyNameValue != null) {
      map['keyName'] = keyNameValue;
    }
    final monitoringValue = monitoring;
    if (monitoringValue != null) {
      map['monitoring'] = monitoringValue;
    }
    final placementGroupValue = placementGroup;
    if (placementGroupValue != null) {
      map['placementGroup'] = placementGroupValue;
    }
    final placementTenancyValue = placementTenancy;
    if (placementTenancyValue != null) {
      map['placementTenancy'] = placementTenancyValue;
    }
    final rootBlockDevicesValue = rootBlockDevices;
    if (rootBlockDevicesValue != null) {
      map['rootBlockDevices'] = Input.encodeList<
              SpotFleetRequestLaunchSpecificationRootBlockDevice,
              Map<String, dynamic>>(
          rootBlockDevicesValue, (value) => value.toMap());
    }
    final spotPriceValue = spotPrice;
    if (spotPriceValue != null) {
      map['spotPrice'] = spotPriceValue;
    }
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final userDataValue = userData;
    if (userDataValue != null) {
      map['userData'] = userDataValue;
    }
    final vpcSecurityGroupIdsValue = vpcSecurityGroupIds;
    if (vpcSecurityGroupIdsValue != null) {
      map['vpcSecurityGroupIds'] = vpcSecurityGroupIdsValue;
    }
    final weightedCapacityValue = weightedCapacity;
    if (weightedCapacityValue != null) {
      map['weightedCapacity'] = weightedCapacityValue;
    }
    return map;
  }

  factory SpotFleetRequestLaunchSpecification.fromMap(
      Map<String, dynamic> map) {
    return SpotFleetRequestLaunchSpecification(
      ami: map['ami'] as String,
      associatePublicIpAddress: map['associatePublicIpAddress'] == null
          ? null
          : map['associatePublicIpAddress'] as bool,
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      ebsBlockDevices: map['ebsBlockDevices'] == null
          ? null
          : Input.decodeList<SpotFleetRequestLaunchSpecificationEbsBlockDevice>(
              map['ebsBlockDevices'],
              (value) =>
                  SpotFleetRequestLaunchSpecificationEbsBlockDevice.fromMap(
                      (value as Map).cast<String, dynamic>())),
      ebsOptimized:
          map['ebsOptimized'] == null ? null : map['ebsOptimized'] as bool,
      ephemeralBlockDevices: map['ephemeralBlockDevices'] == null
          ? null
          : Input.decodeList<
                  SpotFleetRequestLaunchSpecificationEphemeralBlockDevice>(
              map['ephemeralBlockDevices'],
              (value) => SpotFleetRequestLaunchSpecificationEphemeralBlockDevice
                  .fromMap((value as Map).cast<String, dynamic>())),
      iamInstanceProfile: map['iamInstanceProfile'] == null
          ? null
          : map['iamInstanceProfile'] as String,
      iamInstanceProfileArn: map['iamInstanceProfileArn'] == null
          ? null
          : map['iamInstanceProfileArn'] as String,
      instanceType: map['instanceType'] as String,
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      monitoring: map['monitoring'] == null ? null : map['monitoring'] as bool,
      placementGroup: map['placementGroup'] == null
          ? null
          : map['placementGroup'] as String,
      placementTenancy: map['placementTenancy'] == null
          ? null
          : map['placementTenancy'] as String,
      rootBlockDevices: map['rootBlockDevices'] == null
          ? null
          : Input.decodeList<
                  SpotFleetRequestLaunchSpecificationRootBlockDevice>(
              map['rootBlockDevices'],
              (value) =>
                  SpotFleetRequestLaunchSpecificationRootBlockDevice.fromMap(
                      (value as Map).cast<String, dynamic>())),
      spotPrice: map['spotPrice'] == null ? null : map['spotPrice'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      userData: map['userData'] == null ? null : map['userData'] as String,
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null
          ? null
          : (map['vpcSecurityGroupIds'] as List).cast<String>(),
      weightedCapacity: map['weightedCapacity'] == null
          ? null
          : map['weightedCapacity'] as String,
    );
  }
}
