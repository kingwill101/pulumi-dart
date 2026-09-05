// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_exadata_infrastructures_cloud_exadata_infrastructure.dart';

/// Result data returned by getCloudExadataInfrastructures.
class GetCloudExadataInfrastructuresResult {
  /// List of Cloud Exadata Infrastructures. Returns basic information about the Cloud Exadata Infrastructures.
  final List<GetCloudExadataInfrastructuresCloudExadataInfrastructure>? cloudExadataInfrastructures;
  final String? region;

  /// Creates a new [GetCloudExadataInfrastructuresResult].
  /// [cloudExadataInfrastructures] List of Cloud Exadata Infrastructures. Returns basic information about the Cloud Exadata Infrastructures.
  /// [region] Optional.
  const GetCloudExadataInfrastructuresResult({
    this.cloudExadataInfrastructures,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructures': ?(() { final guardedValue = cloudExadataInfrastructures; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCloudExadataInfrastructuresCloudExadataInfrastructure, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetCloudExadataInfrastructuresResult.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructuresResult(
      cloudExadataInfrastructures: (() { final guardedValue = map['cloudExadataInfrastructures']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCloudExadataInfrastructuresCloudExadataInfrastructure>(guardedValue, (value) => GetCloudExadataInfrastructuresCloudExadataInfrastructure.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
