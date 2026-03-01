// ignore_for_file: unused_element, unnecessary_cast

class AzureNodePoolConfigRootVolume {
  /// Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource.
  final int? sizeGib;

  /// Creates a new [AzureNodePoolConfigRootVolume].
  /// [sizeGib] Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource.
  AzureNodePoolConfigRootVolume({this.sizeGib});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sizeGib': ?sizeGib};
  }

  factory AzureNodePoolConfigRootVolume.fromMap(Map<String, dynamic> map) {
    return AzureNodePoolConfigRootVolume(
      sizeGib: map['sizeGib'] == null ? null : map['sizeGib'] as int,
    );
  }
}
