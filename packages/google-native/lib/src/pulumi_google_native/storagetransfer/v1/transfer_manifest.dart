// ignore_for_file: unused_element, unnecessary_cast

/// Specifies where the manifest is located.
class TransferManifest {
  /// Specifies the path to the manifest in Cloud Storage. The Google-managed service account for the transfer must have `storage.objects.get` permission for this object. An example path is `gs://bucket_name/path/manifest.csv`.
  final String? location;

  TransferManifest({
    this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    return map;
  }

  factory TransferManifest.fromMap(Map<String, dynamic> map) {
    return TransferManifest(
      location: map['location'] == null ? null : map['location'] as String,
    );
  }
}
