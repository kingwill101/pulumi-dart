// ignore_for_file: unused_element, unnecessary_cast

class NotebookInstanceInstanceMetadataServiceConfiguration {
  /// Indicates the minimum IMDS version that the notebook instance supports. When passed "1" is passed. This means that both IMDSv1 and IMDSv2 are supported. Valid values are `1` and `2`.
  final String? minimumInstanceMetadataServiceVersion;

  /// Creates a new [NotebookInstanceInstanceMetadataServiceConfiguration].
  /// [minimumInstanceMetadataServiceVersion] Indicates the minimum IMDS version that the notebook instance supports. When passed "1" is passed. This means that both IMDSv1 and IMDSv2 are supported. Valid values are `1` and `2`.
  NotebookInstanceInstanceMetadataServiceConfiguration({
    this.minimumInstanceMetadataServiceVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final minimumInstanceMetadataServiceVersionValue =
        minimumInstanceMetadataServiceVersion;
    if (minimumInstanceMetadataServiceVersionValue != null) {
      map['minimumInstanceMetadataServiceVersion'] =
          minimumInstanceMetadataServiceVersionValue;
    }
    return map;
  }

  factory NotebookInstanceInstanceMetadataServiceConfiguration.fromMap(
      Map<String, dynamic> map) {
    return NotebookInstanceInstanceMetadataServiceConfiguration(
      minimumInstanceMetadataServiceVersion:
          map['minimumInstanceMetadataServiceVersion'] == null
              ? null
              : map['minimumInstanceMetadataServiceVersion'] as String,
    );
  }
}
