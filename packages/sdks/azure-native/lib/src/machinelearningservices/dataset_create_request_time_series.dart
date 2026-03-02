// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetCreateRequestTimeSeries {
  /// Column name to be used as CoarseGrainTimestamp. Can only be used if 'fineGrainTimestamp' is specified and cannot be same as 'fineGrainTimestamp'.
  final pulumi.Input<String>? coarseGrainTimestamp;
  /// Column name to be used as FineGrainTimestamp
  final pulumi.Input<String>? fineGrainTimestamp;

  /// Creates a new [DatasetCreateRequestTimeSeries].
  /// [coarseGrainTimestamp] Column name to be used as CoarseGrainTimestamp. Can only be used if 'fineGrainTimestamp' is specified and cannot be same as 'fineGrainTimestamp'.
  /// [fineGrainTimestamp] Column name to be used as FineGrainTimestamp
  DatasetCreateRequestTimeSeries({
    this.coarseGrainTimestamp,
    this.fineGrainTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coarseGrainTimestamp': ?coarseGrainTimestamp,
      'fineGrainTimestamp': ?fineGrainTimestamp,
    };
  }

  factory DatasetCreateRequestTimeSeries.fromMap(Map<String, dynamic> map) {
    return DatasetCreateRequestTimeSeries(
      coarseGrainTimestamp: map['coarseGrainTimestamp'] == null ? null : (map['coarseGrainTimestamp'] as String).input(),
      fineGrainTimestamp: map['fineGrainTimestamp'] == null ? null : (map['fineGrainTimestamp'] as String).input(),
    );
  }
}

