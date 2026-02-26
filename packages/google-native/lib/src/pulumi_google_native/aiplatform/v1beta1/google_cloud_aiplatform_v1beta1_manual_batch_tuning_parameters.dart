// ignore_for_file: unused_element, unnecessary_cast

/// Manual batch tuning parameters.
class GoogleCloudAiplatformV1beta1ManualBatchTuningParameters {
  /// Immutable. The number of the records (e.g. instances) of the operation given in each batch to a machine replica. Machine type, and size of a single record should be considered when setting this parameter, higher value speeds up the batch operation's execution, but too high value will result in a whole batch not fitting in a machine's memory, and the whole operation will fail. The default value is 64.
  final int? batchSize;

  GoogleCloudAiplatformV1beta1ManualBatchTuningParameters({
    this.batchSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final batchSizeValue = batchSize;
    if (batchSizeValue != null) {
      map['batchSize'] = batchSizeValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1ManualBatchTuningParameters.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ManualBatchTuningParameters(
      batchSize: map['batchSize'] == null ? null : map['batchSize'] as int,
    );
  }
}
