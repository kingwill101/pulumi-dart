// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_managed_service_cross_region_s3_restore_sources_access.dart';
import 'get_network_managed_service_kms_access.dart';
import 'get_network_managed_service_managed_s3_backup_access.dart';
import 'get_network_managed_service_s3_access.dart';
import 'get_network_managed_service_service_network_endpoint.dart';
import 'get_network_managed_service_sts_access.dart';
import 'get_network_managed_service_zero_tl_access.dart';

class GetNetworkManagedService {
  final pulumi.Input<List<GetNetworkManagedServiceCrossRegionS3RestoreSourcesAccess>> crossRegionS3RestoreSourcesAccesses;
  final pulumi.Input<List<GetNetworkManagedServiceKmsAccess>> kmsAccesses;
  final pulumi.Input<List<GetNetworkManagedServiceManagedS3BackupAccess>> managedS3BackupAccesses;
  final pulumi.Input<List<String>> managedServiceIpv4Cidrs;
  final pulumi.Input<String> resourceGatewayArn;
  final pulumi.Input<List<GetNetworkManagedServiceS3Access>> s3Accesses;
  final pulumi.Input<String> serviceNetworkArn;
  final pulumi.Input<List<GetNetworkManagedServiceServiceNetworkEndpoint>> serviceNetworkEndpoints;
  final pulumi.Input<List<GetNetworkManagedServiceStsAccess>> stsAccesses;
  final pulumi.Input<List<GetNetworkManagedServiceZeroTlAccess>> zeroTlAccesses;

  /// Creates a new [GetNetworkManagedService].
  /// [crossRegionS3RestoreSourcesAccesses] Required.
  /// [kmsAccesses] Required.
  /// [managedS3BackupAccesses] Required.
  /// [managedServiceIpv4Cidrs] Required.
  /// [resourceGatewayArn] Required.
  /// [s3Accesses] Required.
  /// [serviceNetworkArn] Required.
  /// [serviceNetworkEndpoints] Required.
  /// [stsAccesses] Required.
  /// [zeroTlAccesses] Required.
  const GetNetworkManagedService({
    required this.crossRegionS3RestoreSourcesAccesses,
    required this.kmsAccesses,
    required this.managedS3BackupAccesses,
    required this.managedServiceIpv4Cidrs,
    required this.resourceGatewayArn,
    required this.s3Accesses,
    required this.serviceNetworkArn,
    required this.serviceNetworkEndpoints,
    required this.stsAccesses,
    required this.zeroTlAccesses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossRegionS3RestoreSourcesAccesses': pulumi.Input.mapInputValue<List<GetNetworkManagedServiceCrossRegionS3RestoreSourcesAccess>, List<Map<String, dynamic>>>(crossRegionS3RestoreSourcesAccesses, (value) => pulumi.Input.encodeList<GetNetworkManagedServiceCrossRegionS3RestoreSourcesAccess, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kmsAccesses': pulumi.Input.mapInputValue<List<GetNetworkManagedServiceKmsAccess>, List<Map<String, dynamic>>>(kmsAccesses, (value) => pulumi.Input.encodeList<GetNetworkManagedServiceKmsAccess, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedS3BackupAccesses': pulumi.Input.mapInputValue<List<GetNetworkManagedServiceManagedS3BackupAccess>, List<Map<String, dynamic>>>(managedS3BackupAccesses, (value) => pulumi.Input.encodeList<GetNetworkManagedServiceManagedS3BackupAccess, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedServiceIpv4Cidrs': managedServiceIpv4Cidrs,
      'resourceGatewayArn': resourceGatewayArn,
      's3Accesses': pulumi.Input.mapInputValue<List<GetNetworkManagedServiceS3Access>, List<Map<String, dynamic>>>(s3Accesses, (value) => pulumi.Input.encodeList<GetNetworkManagedServiceS3Access, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceNetworkArn': serviceNetworkArn,
      'serviceNetworkEndpoints': pulumi.Input.mapInputValue<List<GetNetworkManagedServiceServiceNetworkEndpoint>, List<Map<String, dynamic>>>(serviceNetworkEndpoints, (value) => pulumi.Input.encodeList<GetNetworkManagedServiceServiceNetworkEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stsAccesses': pulumi.Input.mapInputValue<List<GetNetworkManagedServiceStsAccess>, List<Map<String, dynamic>>>(stsAccesses, (value) => pulumi.Input.encodeList<GetNetworkManagedServiceStsAccess, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zeroTlAccesses': pulumi.Input.mapInputValue<List<GetNetworkManagedServiceZeroTlAccess>, List<Map<String, dynamic>>>(zeroTlAccesses, (value) => pulumi.Input.encodeList<GetNetworkManagedServiceZeroTlAccess, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetNetworkManagedService.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagedService(
      crossRegionS3RestoreSourcesAccesses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkManagedServiceCrossRegionS3RestoreSourcesAccess>(map['crossRegionS3RestoreSourcesAccesses']!, (value) => GetNetworkManagedServiceCrossRegionS3RestoreSourcesAccess.fromMap((value as Map).cast<String, dynamic>()))),
      kmsAccesses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkManagedServiceKmsAccess>(map['kmsAccesses']!, (value) => GetNetworkManagedServiceKmsAccess.fromMap((value as Map).cast<String, dynamic>()))),
      managedS3BackupAccesses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkManagedServiceManagedS3BackupAccess>(map['managedS3BackupAccesses']!, (value) => GetNetworkManagedServiceManagedS3BackupAccess.fromMap((value as Map).cast<String, dynamic>()))),
      managedServiceIpv4Cidrs: pulumi.Input.fromValue((map['managedServiceIpv4Cidrs'] as List).cast<String>()),
      resourceGatewayArn: pulumi.Input.fromValue(map['resourceGatewayArn'] as String),
      s3Accesses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkManagedServiceS3Access>(map['s3Accesses']!, (value) => GetNetworkManagedServiceS3Access.fromMap((value as Map).cast<String, dynamic>()))),
      serviceNetworkArn: pulumi.Input.fromValue(map['serviceNetworkArn'] as String),
      serviceNetworkEndpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkManagedServiceServiceNetworkEndpoint>(map['serviceNetworkEndpoints']!, (value) => GetNetworkManagedServiceServiceNetworkEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      stsAccesses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkManagedServiceStsAccess>(map['stsAccesses']!, (value) => GetNetworkManagedServiceStsAccess.fromMap((value as Map).cast<String, dynamic>()))),
      zeroTlAccesses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkManagedServiceZeroTlAccess>(map['zeroTlAccesses']!, (value) => GetNetworkManagedServiceZeroTlAccess.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
