// ignore_for_file: unused_element, unnecessary_cast


class InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions {
  /// The destination bucket that stores the generated inventory reports.
  final String bucket;
  /// The path within the destination bucket to store generated inventory reports.
  final String? destinationPath;

  /// Creates a new [InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions].
  /// [bucket] The destination bucket that stores the generated inventory reports.
  /// [destinationPath] The path within the destination bucket to store generated inventory reports.
  InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions({
    required this.bucket,
    this.destinationPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'destinationPath': ?destinationPath,
    };
  }

  factory InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions.fromMap(Map<String, dynamic> map) {
    return InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions(
      bucket: map['bucket'] as String,
      destinationPath: map['destinationPath'] == null ? null : map['destinationPath'] as String,
    );
  }
}

