// ignore_for_file: unused_element, unnecessary_cast

class AzureClusterControlPlaneRootVolume {
  /// Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource.
  final int? sizeGib;

  /// Creates a new [AzureClusterControlPlaneRootVolume].
  /// [sizeGib] Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource.
  AzureClusterControlPlaneRootVolume({this.sizeGib});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sizeGib': ?sizeGib};
  }

  factory AzureClusterControlPlaneRootVolume.fromMap(Map<String, dynamic> map) {
    return AzureClusterControlPlaneRootVolume(
      sizeGib: map['sizeGib'] == null ? null : map['sizeGib'] as int,
    );
  }
}
