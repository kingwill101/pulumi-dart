// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_cloud_bigtable_instance_spec_cloud_bigtable_cluster_spec.dart';

/// Specification that applies to Instance entries that are part of `CLOUD_BIGTABLE` system. (user_specified_type)
class GoogleCloudDatacatalogV1CloudBigtableInstanceSpec {
  /// The list of clusters for the Instance.
  final List<
          GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec>?
      cloudBigtableClusterSpecs;

  /// Creates a new [GoogleCloudDatacatalogV1CloudBigtableInstanceSpec].
  /// [cloudBigtableClusterSpecs] The list of clusters for the Instance.
  GoogleCloudDatacatalogV1CloudBigtableInstanceSpec({
    this.cloudBigtableClusterSpecs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudBigtableClusterSpecsValue = cloudBigtableClusterSpecs;
    if (cloudBigtableClusterSpecsValue != null) {
      map['cloudBigtableClusterSpecs'] = pulumi.Input.encodeList<
          GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec,
          Map<String,
              dynamic>>(cloudBigtableClusterSpecsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1CloudBigtableInstanceSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1CloudBigtableInstanceSpec(
      cloudBigtableClusterSpecs: map['cloudBigtableClusterSpecs'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec>(
              map['cloudBigtableClusterSpecs'],
              (value) =>
                  GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
