// ignore_for_file: unused_element, unnecessary_cast

class AzureClusterControlPlaneMainVolume {
  /// Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource.
  final int? sizeGib;

  AzureClusterControlPlaneMainVolume({
    this.sizeGib,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sizeGibValue = sizeGib;
    if (sizeGibValue != null) {
      map['sizeGib'] = sizeGibValue;
    }
    return map;
  }

  factory AzureClusterControlPlaneMainVolume.fromMap(Map<String, dynamic> map) {
    return AzureClusterControlPlaneMainVolume(
      sizeGib: map['sizeGib'] == null ? null : map['sizeGib'] as int,
    );
  }
}
