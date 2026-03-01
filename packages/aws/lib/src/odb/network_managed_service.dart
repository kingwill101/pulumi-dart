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
  final List<NetworkManagedServiceKmsAccess> kmsAccesses;
  final List<NetworkManagedServiceManagedS3BackupAccess> managedS3BackupAccesses;
  final List<String> managedServiceIpv4Cidrs;
  final String resourceGatewayArn;
  /// Specifies the configuration for Amazon S3 access from the ODB network.
  final List<NetworkManagedServiceS3Access> s3Accesses;
  final String serviceNetworkArn;
  final List<NetworkManagedServiceServiceNetworkEndpoint> serviceNetworkEndpoints;
  /// Specifies the configuration for STS access from the ODB network.
  final List<NetworkManagedServiceStsAccess> stsAccesses;
  /// Specifies the configuration for Zero-ETL access from the ODB network.
  ///
  /// The following arguments are optional:
  final List<NetworkManagedServiceZeroEtlAccess> zeroEtlAccesses;

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
      'kmsAccesses': pulumi.Input.encodeList<NetworkManagedServiceKmsAccess, Map<String, dynamic>>(kmsAccesses, (value) => value.toMap()),
      'managedS3BackupAccesses': pulumi.Input.encodeList<NetworkManagedServiceManagedS3BackupAccess, Map<String, dynamic>>(managedS3BackupAccesses, (value) => value.toMap()),
      'managedServiceIpv4Cidrs': managedServiceIpv4Cidrs,
      'resourceGatewayArn': resourceGatewayArn,
      's3Accesses': pulumi.Input.encodeList<NetworkManagedServiceS3Access, Map<String, dynamic>>(s3Accesses, (value) => value.toMap()),
      'serviceNetworkArn': serviceNetworkArn,
      'serviceNetworkEndpoints': pulumi.Input.encodeList<NetworkManagedServiceServiceNetworkEndpoint, Map<String, dynamic>>(serviceNetworkEndpoints, (value) => value.toMap()),
      'stsAccesses': pulumi.Input.encodeList<NetworkManagedServiceStsAccess, Map<String, dynamic>>(stsAccesses, (value) => value.toMap()),
      'zeroEtlAccesses': pulumi.Input.encodeList<NetworkManagedServiceZeroEtlAccess, Map<String, dynamic>>(zeroEtlAccesses, (value) => value.toMap()),
    };
  }

  factory NetworkManagedService.fromMap(Map<String, dynamic> map) {
    return NetworkManagedService(
      kmsAccesses: pulumi.Input.decodeList<NetworkManagedServiceKmsAccess>(map['kmsAccesses'], (value) => NetworkManagedServiceKmsAccess.fromMap((value as Map).cast<String, dynamic>())),
      managedS3BackupAccesses: pulumi.Input.decodeList<NetworkManagedServiceManagedS3BackupAccess>(map['managedS3BackupAccesses'], (value) => NetworkManagedServiceManagedS3BackupAccess.fromMap((value as Map).cast<String, dynamic>())),
      managedServiceIpv4Cidrs: (map['managedServiceIpv4Cidrs'] as List).cast<String>(),
      resourceGatewayArn: map['resourceGatewayArn'] as String,
      s3Accesses: pulumi.Input.decodeList<NetworkManagedServiceS3Access>(map['s3Accesses'], (value) => NetworkManagedServiceS3Access.fromMap((value as Map).cast<String, dynamic>())),
      serviceNetworkArn: map['serviceNetworkArn'] as String,
      serviceNetworkEndpoints: pulumi.Input.decodeList<NetworkManagedServiceServiceNetworkEndpoint>(map['serviceNetworkEndpoints'], (value) => NetworkManagedServiceServiceNetworkEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      stsAccesses: pulumi.Input.decodeList<NetworkManagedServiceStsAccess>(map['stsAccesses'], (value) => NetworkManagedServiceStsAccess.fromMap((value as Map).cast<String, dynamic>())),
      zeroEtlAccesses: pulumi.Input.decodeList<NetworkManagedServiceZeroEtlAccess>(map['zeroEtlAccesses'], (value) => NetworkManagedServiceZeroEtlAccess.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

