// ignore_for_file: unused_element, unnecessary_cast

class ReportGroupExportConfigS3Destination {
  /// The name of the S3 bucket where the raw data of a report are exported.
  final String bucket;

  /// A boolean value that specifies if the results of a report are encrypted.
  /// **Note: the API does not currently allow setting encryption as disabled**
  final bool? encryptionDisabled;

  /// The encryption key for the report's encrypted raw data. The KMS key ARN.
  final String encryptionKey;

  /// The type of build output artifact to create. Valid values are: `NONE` (default) and `ZIP`.
  final String? packaging;

  /// The path to the exported report's raw data results.
  final String? path;

  ReportGroupExportConfigS3Destination({
    required this.bucket,
    this.encryptionDisabled,
    required this.encryptionKey,
    this.packaging,
    this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final encryptionDisabledValue = encryptionDisabled;
    if (encryptionDisabledValue != null) {
      map['encryptionDisabled'] = encryptionDisabledValue;
    }
    map['encryptionKey'] = encryptionKey;
    final packagingValue = packaging;
    if (packagingValue != null) {
      map['packaging'] = packagingValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    return map;
  }

  factory ReportGroupExportConfigS3Destination.fromMap(
      Map<String, dynamic> map) {
    return ReportGroupExportConfigS3Destination(
      bucket: map['bucket'] as String,
      encryptionDisabled: map['encryptionDisabled'] == null
          ? null
          : map['encryptionDisabled'] as bool,
      encryptionKey: map['encryptionKey'] as String,
      packaging: map['packaging'] == null ? null : map['packaging'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
