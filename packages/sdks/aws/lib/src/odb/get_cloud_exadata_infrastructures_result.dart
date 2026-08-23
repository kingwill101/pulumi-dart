// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_exadata_infrastructures_cloud_exadata_infrastructure.dart';

/// Result data returned by getCloudExadataInfrastructures.
class GetCloudExadataInfrastructuresResult {
  /// List of Cloud Exadata Infrastructures. Returns basic information about the Cloud Exadata Infrastructures.
  final List<GetCloudExadataInfrastructuresCloudExadataInfrastructure> cloudExadataInfrastructures;
  final String region;

  /// Creates a new [GetCloudExadataInfrastructuresResult].
  /// [cloudExadataInfrastructures] List of Cloud Exadata Infrastructures. Returns basic information about the Cloud Exadata Infrastructures.
  /// [region] Required.
  const GetCloudExadataInfrastructuresResult({
    required this.cloudExadataInfrastructures,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructures': pulumi.Input.encodeList<GetCloudExadataInfrastructuresCloudExadataInfrastructure, Map<String, dynamic>>(cloudExadataInfrastructures, (value) => value.toMap()),
      'region': region,
    };
  }

  factory GetCloudExadataInfrastructuresResult.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructuresResult(
      cloudExadataInfrastructures: pulumi.Input.decodeList<GetCloudExadataInfrastructuresCloudExadataInfrastructure>(map['cloudExadataInfrastructures']!, (value) => GetCloudExadataInfrastructuresCloudExadataInfrastructure.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}
