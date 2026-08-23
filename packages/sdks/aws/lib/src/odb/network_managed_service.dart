// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_managed_service_cross_region_s3_restore_sources_access.dart';
import 'network_managed_service_kms_access.dart';
import 'network_managed_service_managed_s3_backup_access.dart';
import 'network_managed_service_s3_access.dart';
import 'network_managed_service_service_network_endpoint.dart';
import 'network_managed_service_sts_access.dart';
import 'network_managed_service_zero_etl_access.dart';

class NetworkManagedService {
  /// List of regions enabled for cross-region restore in the ODB network.
  final pulumi.Input<List<NetworkManagedServiceCrossRegionS3RestoreSourcesAccess>> crossRegionS3RestoreSourcesAccesses;
  /// Configuration for KMS access from the ODB network.
  final pulumi.Input<List<NetworkManagedServiceKmsAccess>> kmsAccesses;
  /// Managed S3 backup access configuration. See `managedS3BackupAccess` Block below.
  final pulumi.Input<List<NetworkManagedServiceManagedS3BackupAccess>> managedS3BackupAccesses;
  /// List of IPv4 CIDR ranges used by the managed services.
  final pulumi.Input<List<String>> managedServiceIpv4Cidrs;
  /// ARN of the resource gateway.
  final pulumi.Input<String> resourceGatewayArn;
  /// Configuration for Amazon S3 access from the ODB network.
  final pulumi.Input<List<NetworkManagedServiceS3Access>> s3Accesses;
  /// ARN of the service network.
  final pulumi.Input<String> serviceNetworkArn;
  /// Service network endpoint configuration. See `serviceNetworkEndpoint` Block below.
  final pulumi.Input<List<NetworkManagedServiceServiceNetworkEndpoint>> serviceNetworkEndpoints;
  /// Configuration for STS access from the ODB network.
  final pulumi.Input<List<NetworkManagedServiceStsAccess>> stsAccesses;
  /// Configuration for Zero-ETL access from the ODB network.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<NetworkManagedServiceZeroEtlAccess>> zeroEtlAccesses;

  /// Creates a new [NetworkManagedService].
  /// [crossRegionS3RestoreSourcesAccesses] List of regions enabled for cross-region restore in the ODB network.
  /// [kmsAccesses] Configuration for KMS access from the ODB network.
  /// [managedS3BackupAccesses] Managed S3 backup access configuration. See `managedS3BackupAccess` Block below.
  /// [managedServiceIpv4Cidrs] List of IPv4 CIDR ranges used by the managed services.
  /// [resourceGatewayArn] ARN of the resource gateway.
  /// [s3Accesses] Configuration for Amazon S3 access from the ODB network.
  /// [serviceNetworkArn] ARN of the service network.
  /// [serviceNetworkEndpoints] Service network endpoint configuration. See `serviceNetworkEndpoint` Block below.
  /// [stsAccesses] Configuration for STS access from the ODB network.
  /// [zeroEtlAccesses] Configuration for Zero-ETL access from the ODB network.
  const NetworkManagedService({
    required this.crossRegionS3RestoreSourcesAccesses,
    required this.kmsAccesses,
    required this.managedS3BackupAccesses,
    required this.managedServiceIpv4Cidrs,
    required this.resourceGatewayArn,
    required this.s3Accesses,
    required this.serviceNetworkArn,
    required this.serviceNetworkEndpoints,
    required this.stsAccesses,
    required this.zeroEtlAccesses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossRegionS3RestoreSourcesAccesses': pulumi.Input.mapInputValue<List<NetworkManagedServiceCrossRegionS3RestoreSourcesAccess>, List<Map<String, dynamic>>>(crossRegionS3RestoreSourcesAccesses, (value) => pulumi.Input.encodeList<NetworkManagedServiceCrossRegionS3RestoreSourcesAccess, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kmsAccesses': pulumi.Input.mapInputValue<List<NetworkManagedServiceKmsAccess>, List<Map<String, dynamic>>>(kmsAccesses, (value) => pulumi.Input.encodeList<NetworkManagedServiceKmsAccess, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedS3BackupAccesses': pulumi.Input.mapInputValue<List<NetworkManagedServiceManagedS3BackupAccess>, List<Map<String, dynamic>>>(managedS3BackupAccesses, (value) => pulumi.Input.encodeList<NetworkManagedServiceManagedS3BackupAccess, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedServiceIpv4Cidrs': managedServiceIpv4Cidrs,
      'resourceGatewayArn': resourceGatewayArn,
      's3Accesses': pulumi.Input.mapInputValue<List<NetworkManagedServiceS3Access>, List<Map<String, dynamic>>>(s3Accesses, (value) => pulumi.Input.encodeList<NetworkManagedServiceS3Access, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceNetworkArn': serviceNetworkArn,
      'serviceNetworkEndpoints': pulumi.Input.mapInputValue<List<NetworkManagedServiceServiceNetworkEndpoint>, List<Map<String, dynamic>>>(serviceNetworkEndpoints, (value) => pulumi.Input.encodeList<NetworkManagedServiceServiceNetworkEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stsAccesses': pulumi.Input.mapInputValue<List<NetworkManagedServiceStsAccess>, List<Map<String, dynamic>>>(stsAccesses, (value) => pulumi.Input.encodeList<NetworkManagedServiceStsAccess, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zeroEtlAccesses': pulumi.Input.mapInputValue<List<NetworkManagedServiceZeroEtlAccess>, List<Map<String, dynamic>>>(zeroEtlAccesses, (value) => pulumi.Input.encodeList<NetworkManagedServiceZeroEtlAccess, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkManagedService.fromMap(Map<String, dynamic> map) {
    return NetworkManagedService(
      crossRegionS3RestoreSourcesAccesses: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkManagedServiceCrossRegionS3RestoreSourcesAccess>(map['crossRegionS3RestoreSourcesAccesses']!, (value) => NetworkManagedServiceCrossRegionS3RestoreSourcesAccess.fromMap((value as Map).cast<String, dynamic>()))),
      kmsAccesses: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkManagedServiceKmsAccess>(map['kmsAccesses']!, (value) => NetworkManagedServiceKmsAccess.fromMap((value as Map).cast<String, dynamic>()))),
      managedS3BackupAccesses: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkManagedServiceManagedS3BackupAccess>(map['managedS3BackupAccesses']!, (value) => NetworkManagedServiceManagedS3BackupAccess.fromMap((value as Map).cast<String, dynamic>()))),
      managedServiceIpv4Cidrs: pulumi.Input.fromValue((map['managedServiceIpv4Cidrs'] as List).cast<String>()),
      resourceGatewayArn: pulumi.Input.fromValue(map['resourceGatewayArn'] as String),
      s3Accesses: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkManagedServiceS3Access>(map['s3Accesses']!, (value) => NetworkManagedServiceS3Access.fromMap((value as Map).cast<String, dynamic>()))),
      serviceNetworkArn: pulumi.Input.fromValue(map['serviceNetworkArn'] as String),
      serviceNetworkEndpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkManagedServiceServiceNetworkEndpoint>(map['serviceNetworkEndpoints']!, (value) => NetworkManagedServiceServiceNetworkEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      stsAccesses: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkManagedServiceStsAccess>(map['stsAccesses']!, (value) => NetworkManagedServiceStsAccess.fromMap((value as Map).cast<String, dynamic>()))),
      zeroEtlAccesses: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkManagedServiceZeroEtlAccess>(map['zeroEtlAccesses']!, (value) => NetworkManagedServiceZeroEtlAccess.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
