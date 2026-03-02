// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_managed_service_kms_access.dart';
import 'network_managed_service_managed_s3_backup_access.dart';
import 'network_managed_service_s3_access.dart';
import 'network_managed_service_service_network_endpoint.dart';
import 'network_managed_service_sts_access.dart';
import 'network_managed_service_zero_etl_access.dart';

class NetworkManagedService {
  /// Specifies the configuration for KMS access from the ODB network.
  final pulumi.Input<List<NetworkManagedServiceKmsAccess>> kmsAccesses;
  final pulumi.Input<List<NetworkManagedServiceManagedS3BackupAccess>> managedS3BackupAccesses;
  final pulumi.Input<List<String>> managedServiceIpv4Cidrs;
  final pulumi.Input<String> resourceGatewayArn;
  /// Specifies the configuration for Amazon S3 access from the ODB network.
  final pulumi.Input<List<NetworkManagedServiceS3Access>> s3Accesses;
  final pulumi.Input<String> serviceNetworkArn;
  final pulumi.Input<List<NetworkManagedServiceServiceNetworkEndpoint>> serviceNetworkEndpoints;
  /// Specifies the configuration for STS access from the ODB network.
  final pulumi.Input<List<NetworkManagedServiceStsAccess>> stsAccesses;
  /// Specifies the configuration for Zero-ETL access from the ODB network.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<NetworkManagedServiceZeroEtlAccess>> zeroEtlAccesses;

  /// Creates a new [NetworkManagedService].
  /// [kmsAccesses] Specifies the configuration for KMS access from the ODB network.
  /// [managedS3BackupAccesses] Required.
  /// [managedServiceIpv4Cidrs] Required.
  /// [resourceGatewayArn] Required.
  /// [s3Accesses] Specifies the configuration for Amazon S3 access from the ODB network.
  /// [serviceNetworkArn] Required.
  /// [serviceNetworkEndpoints] Required.
  /// [stsAccesses] Specifies the configuration for STS access from the ODB network.
  /// [zeroEtlAccesses] Specifies the configuration for Zero-ETL access from the ODB network.
  NetworkManagedService({
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
      kmsAccesses: (pulumi.Input.decodeList<NetworkManagedServiceKmsAccess>(map['kmsAccesses'], (value) => NetworkManagedServiceKmsAccess.fromMap((value as Map).cast<String, dynamic>()))).input(),
      managedS3BackupAccesses: (pulumi.Input.decodeList<NetworkManagedServiceManagedS3BackupAccess>(map['managedS3BackupAccesses'], (value) => NetworkManagedServiceManagedS3BackupAccess.fromMap((value as Map).cast<String, dynamic>()))).input(),
      managedServiceIpv4Cidrs: ((map['managedServiceIpv4Cidrs'] as List).cast<String>()).input(),
      resourceGatewayArn: (map['resourceGatewayArn'] as String).input(),
      s3Accesses: (pulumi.Input.decodeList<NetworkManagedServiceS3Access>(map['s3Accesses'], (value) => NetworkManagedServiceS3Access.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceNetworkArn: (map['serviceNetworkArn'] as String).input(),
      serviceNetworkEndpoints: (pulumi.Input.decodeList<NetworkManagedServiceServiceNetworkEndpoint>(map['serviceNetworkEndpoints'], (value) => NetworkManagedServiceServiceNetworkEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stsAccesses: (pulumi.Input.decodeList<NetworkManagedServiceStsAccess>(map['stsAccesses'], (value) => NetworkManagedServiceStsAccess.fromMap((value as Map).cast<String, dynamic>()))).input(),
      zeroEtlAccesses: (pulumi.Input.decodeList<NetworkManagedServiceZeroEtlAccess>(map['zeroEtlAccesses'], (value) => NetworkManagedServiceZeroEtlAccess.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

