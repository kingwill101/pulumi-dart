// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_managed_service_kms_access.dart';
import 'get_network_managed_service_managed_s3_backup_access.dart';
import 'get_network_managed_service_s3_access.dart';
import 'get_network_managed_service_service_network_endpoint.dart';
import 'get_network_managed_service_sts_access.dart';
import 'get_network_managed_service_zero_tl_access.dart';

class GetNetworkManagedService {
  final List<GetNetworkManagedServiceKmsAccess> kmsAccesses;
  final List<GetNetworkManagedServiceManagedS3BackupAccess> managedS3BackupAccesses;
  final List<String> managedServiceIpv4Cidrs;
  final String resourceGatewayArn;
  final List<GetNetworkManagedServiceS3Access> s3Accesses;
  final String serviceNetworkArn;
  final List<GetNetworkManagedServiceServiceNetworkEndpoint> serviceNetworkEndpoints;
  final List<GetNetworkManagedServiceStsAccess> stsAccesses;
  final List<GetNetworkManagedServiceZeroTlAccess> zeroTlAccesses;

  /// Creates a new [GetNetworkManagedService].
  /// [kmsAccesses] Required.
  /// [managedS3BackupAccesses] Required.
  /// [managedServiceIpv4Cidrs] Required.
  /// [resourceGatewayArn] Required.
  /// [s3Accesses] Required.
  /// [serviceNetworkArn] Required.
  /// [serviceNetworkEndpoints] Required.
  /// [stsAccesses] Required.
  /// [zeroTlAccesses] Required.
  GetNetworkManagedService({
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
      'kmsAccesses': pulumi.Input.encodeList<GetNetworkManagedServiceKmsAccess, Map<String, dynamic>>(kmsAccesses, (value) => value.toMap()),
      'managedS3BackupAccesses': pulumi.Input.encodeList<GetNetworkManagedServiceManagedS3BackupAccess, Map<String, dynamic>>(managedS3BackupAccesses, (value) => value.toMap()),
      'managedServiceIpv4Cidrs': managedServiceIpv4Cidrs,
      'resourceGatewayArn': resourceGatewayArn,
      's3Accesses': pulumi.Input.encodeList<GetNetworkManagedServiceS3Access, Map<String, dynamic>>(s3Accesses, (value) => value.toMap()),
      'serviceNetworkArn': serviceNetworkArn,
      'serviceNetworkEndpoints': pulumi.Input.encodeList<GetNetworkManagedServiceServiceNetworkEndpoint, Map<String, dynamic>>(serviceNetworkEndpoints, (value) => value.toMap()),
      'stsAccesses': pulumi.Input.encodeList<GetNetworkManagedServiceStsAccess, Map<String, dynamic>>(stsAccesses, (value) => value.toMap()),
      'zeroTlAccesses': pulumi.Input.encodeList<GetNetworkManagedServiceZeroTlAccess, Map<String, dynamic>>(zeroTlAccesses, (value) => value.toMap()),
    };
  }

  factory GetNetworkManagedService.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagedService(
      kmsAccesses: pulumi.Input.decodeList<GetNetworkManagedServiceKmsAccess>(map['kmsAccesses'], (value) => GetNetworkManagedServiceKmsAccess.fromMap((value as Map).cast<String, dynamic>())),
      managedS3BackupAccesses: pulumi.Input.decodeList<GetNetworkManagedServiceManagedS3BackupAccess>(map['managedS3BackupAccesses'], (value) => GetNetworkManagedServiceManagedS3BackupAccess.fromMap((value as Map).cast<String, dynamic>())),
      managedServiceIpv4Cidrs: (map['managedServiceIpv4Cidrs'] as List).cast<String>(),
      resourceGatewayArn: map['resourceGatewayArn'] as String,
      s3Accesses: pulumi.Input.decodeList<GetNetworkManagedServiceS3Access>(map['s3Accesses'], (value) => GetNetworkManagedServiceS3Access.fromMap((value as Map).cast<String, dynamic>())),
      serviceNetworkArn: map['serviceNetworkArn'] as String,
      serviceNetworkEndpoints: pulumi.Input.decodeList<GetNetworkManagedServiceServiceNetworkEndpoint>(map['serviceNetworkEndpoints'], (value) => GetNetworkManagedServiceServiceNetworkEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      stsAccesses: pulumi.Input.decodeList<GetNetworkManagedServiceStsAccess>(map['stsAccesses'], (value) => GetNetworkManagedServiceStsAccess.fromMap((value as Map).cast<String, dynamic>())),
      zeroTlAccesses: pulumi.Input.decodeList<GetNetworkManagedServiceZeroTlAccess>(map['zeroTlAccesses'], (value) => GetNetworkManagedServiceZeroTlAccess.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

