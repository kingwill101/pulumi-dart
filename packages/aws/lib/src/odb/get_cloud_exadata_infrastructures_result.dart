// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_exadata_infrastructures_cloud_exadata_infrastructure.dart';

/// Result data returned by getCloudExadataInfrastructures.
class GetCloudExadataInfrastructuresResult {
  /// List of Cloud Exadata Infrastructures. Returns basic information about the Cloud Exadata Infrastructures.
  final List<GetCloudExadataInfrastructuresCloudExadataInfrastructure>
      cloudExadataInfrastructures;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetCloudExadataInfrastructuresResult].
  /// [cloudExadataInfrastructures] List of Cloud Exadata Infrastructures. Returns basic information about the Cloud Exadata Infrastructures.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetCloudExadataInfrastructuresResult({
    required this.cloudExadataInfrastructures,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudExadataInfrastructures'] = pulumi.Input.encodeList<
            GetCloudExadataInfrastructuresCloudExadataInfrastructure,
            Map<String, dynamic>>(
        cloudExadataInfrastructures, (value) => value.toMap());
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetCloudExadataInfrastructuresResult.fromMap(
      Map<String, dynamic> map) {
    return GetCloudExadataInfrastructuresResult(
      cloudExadataInfrastructures: pulumi.Input.decodeList<
              GetCloudExadataInfrastructuresCloudExadataInfrastructure>(
          map['cloudExadataInfrastructures'],
          (value) =>
              GetCloudExadataInfrastructuresCloudExadataInfrastructure.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
