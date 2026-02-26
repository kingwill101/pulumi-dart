// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cloud_exadata_infrastructures_cloud_exadata_infrastructure/get_cloud_exadata_infrastructures_cloud_exadata_infrastructure.dart';

/// Result data returned by getCloudExadataInfrastructures.
class GetCloudExadataInfrastructuresResult {
  final List<GetCloudExadataInfrastructuresCloudExadataInfrastructure>
      cloudExadataInfrastructures;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? project;

  GetCloudExadataInfrastructuresResult({
    required this.cloudExadataInfrastructures,
    required this.id,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudExadataInfrastructures'] = Input.encodeList<
            GetCloudExadataInfrastructuresCloudExadataInfrastructure,
            Map<String, dynamic>>(
        cloudExadataInfrastructures, (value) => value.toMap());
    map['id'] = id;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCloudExadataInfrastructuresResult.fromMap(
      Map<String, dynamic> map) {
    return GetCloudExadataInfrastructuresResult(
      cloudExadataInfrastructures: Input.decodeList<
              GetCloudExadataInfrastructuresCloudExadataInfrastructure>(
          map['cloudExadataInfrastructures'],
          (value) =>
              GetCloudExadataInfrastructuresCloudExadataInfrastructure.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
