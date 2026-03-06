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
  const LabelingDataConfiguration({
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
      dataId: (() { final guardedValue = map['dataId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      incrementalDataRefresh: (() { final guardedValue = map['incrementalDataRefresh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

