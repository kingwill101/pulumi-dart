// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Labeling data configuration definition
class LabelingDataConfiguration {
  /// Resource Id of the data asset to perform labeling.
  final pulumi.Input<String>? dataId;
  /// Indicates whether to enable incremental data refresh.
  final pulumi.Input<String>? incrementalDataRefresh;

  /// Creates a new [LabelingDataConfiguration].
  /// [dataId] Resource Id of the data asset to perform labeling.
  /// [incrementalDataRefresh] Indicates whether to enable incremental data refresh.
  LabelingDataConfiguration({
    this.dataId,
    this.incrementalDataRefresh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataId': ?dataId,
      'incrementalDataRefresh': ?incrementalDataRefresh,
    };
  }

  factory LabelingDataConfiguration.fromMap(Map<String, dynamic> map) {
    return LabelingDataConfiguration(
      dataId: map['dataId'] == null ? null : (map['dataId']! as String).input(),
      incrementalDataRefresh: map['incrementalDataRefresh'] == null ? null : (map['incrementalDataRefresh']! as String).input(),
    );
  }
}

