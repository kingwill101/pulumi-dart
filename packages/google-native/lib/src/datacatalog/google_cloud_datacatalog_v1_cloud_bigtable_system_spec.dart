// ignore_for_file: unused_element, unnecessary_cast

/// Specification that applies to all entries that are part of `CLOUD_BIGTABLE` system (user_specified_type)
class GoogleCloudDatacatalogV1CloudBigtableSystemSpec {
  /// Display name of the Instance. This is user specified and different from the resource name.
  final String? instanceDisplayName;

  /// Creates a new [GoogleCloudDatacatalogV1CloudBigtableSystemSpec].
  /// [instanceDisplayName] Display name of the Instance. This is user specified and different from the resource name.
  GoogleCloudDatacatalogV1CloudBigtableSystemSpec({this.instanceDisplayName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'instanceDisplayName': ?instanceDisplayName};
  }

  factory GoogleCloudDatacatalogV1CloudBigtableSystemSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1CloudBigtableSystemSpec(
      instanceDisplayName: map['instanceDisplayName'] == null
          ? null
          : map['instanceDisplayName'] as String,
    );
  }
}
