// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_cloud_bigtable_instance_spec_cloud_bigtable_cluster_spec_response.dart';

/// Specification that applies to Instance entries that are part of `CLOUD_BIGTABLE` system. (user_specified_type)
class GoogleCloudDatacatalogV1CloudBigtableInstanceSpecResponse {
  /// The list of clusters for the Instance.
  final List<
          GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpecResponse>
      cloudBigtableClusterSpecs;

  /// Creates a new [GoogleCloudDatacatalogV1CloudBigtableInstanceSpecResponse].
  /// [cloudBigtableClusterSpecs] The list of clusters for the Instance.
  GoogleCloudDatacatalogV1CloudBigtableInstanceSpecResponse({
    required this.cloudBigtableClusterSpecs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudBigtableClusterSpecs'] = pulumi.Input.encodeList<
        GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpecResponse,
        Map<String,
            dynamic>>(cloudBigtableClusterSpecs, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDatacatalogV1CloudBigtableInstanceSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1CloudBigtableInstanceSpecResponse(
      cloudBigtableClusterSpecs: pulumi.Input.decodeList<
              GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpecResponse>(
          map['cloudBigtableClusterSpecs'],
          (value) =>
              GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpecResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
