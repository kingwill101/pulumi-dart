// ignore_for_file: unused_element, unnecessary_cast


/// Labeling data configuration definition
class LabelingDataConfigurationResponse {
  /// Resource Id of the data asset to perform labeling.
  final String? dataId;
  /// Indicates whether to enable incremental data refresh.
  final String? incrementalDataRefresh;

  /// Creates a new [LabelingDataConfigurationResponse].
  /// [dataId] Resource Id of the data asset to perform labeling.
  /// [incrementalDataRefresh] Indicates whether to enable incremental data refresh.
  LabelingDataConfigurationResponse({
    this.dataId,
    this.incrementalDataRefresh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataId': ?dataId,
      'incrementalDataRefresh': ?incrementalDataRefresh,
    };
  }

  factory LabelingDataConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LabelingDataConfigurationResponse(
      dataId: map['dataId'] == null ? null : map['dataId'] as String,
      incrementalDataRefresh: map['incrementalDataRefresh'] == null ? null : map['incrementalDataRefresh'] as String,
    );
  }
}

