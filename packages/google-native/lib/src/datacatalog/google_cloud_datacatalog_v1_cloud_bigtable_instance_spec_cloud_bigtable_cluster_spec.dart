// ignore_for_file: unused_element, unnecessary_cast

/// Spec that applies to clusters of an Instance of Cloud Bigtable.
class GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec {
  /// Name of the cluster.
  final String? displayName;

  /// A link back to the parent resource, in this case Instance.
  final String? linkedResource;

  /// Location of the cluster, typically a Cloud zone.
  final String? location;

  /// Type of the resource. For a cluster this would be "CLUSTER".
  final String? type;

  /// Creates a new [GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec].
  /// [displayName] Name of the cluster.
  /// [linkedResource] A link back to the parent resource, in this case Instance.
  /// [location] Location of the cluster, typically a Cloud zone.
  /// [type] Type of the resource. For a cluster this would be "CLUSTER".
  GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec({
    this.displayName,
    this.linkedResource,
    this.location,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final linkedResourceValue = linkedResource;
    if (linkedResourceValue != null) {
      map['linkedResource'] = linkedResourceValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1CloudBigtableInstanceSpecCloudBigtableClusterSpec(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      linkedResource: map['linkedResource'] == null
          ? null
          : map['linkedResource'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
