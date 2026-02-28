// ignore_for_file: unused_element, unnecessary_cast


class AzureClusterControlPlaneMainVolume {
  /// Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource.
  final int? sizeGib;

  /// Creates a new [AzureClusterControlPlaneMainVolume].
  /// [sizeGib] Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource.
  AzureClusterControlPlaneMainVolume({
    this.sizeGib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sizeGib': ?sizeGib,
    };
  }

  factory AzureClusterControlPlaneMainVolume.fromMap(Map<String, dynamic> map) {
    return AzureClusterControlPlaneMainVolume(
      sizeGib: map['sizeGib'] == null ? null : map['sizeGib'] as int,
    );
  }
}

