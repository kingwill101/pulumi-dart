// ignore_for_file: unused_element, unnecessary_cast

/// Assigns input data to training, validation, and test sets based on the value of a provided key. Supported only for tabular Datasets.
class GoogleCloudAiplatformV1PredefinedSplitResponse {
  /// The key is a name of one of the Dataset's data columns. The value of the key (either the label's value or value in the column) must be one of {`training`, `validation`, `test`}, and it defines to which set the given piece of data is assigned. If for a piece of data the key is not present or has an invalid value, that piece is ignored by the pipeline.
  final String key;

  /// Creates a new [GoogleCloudAiplatformV1PredefinedSplitResponse].
  /// [key] The key is a name of one of the Dataset's data columns. The value of the key (either the label's value or value in the column) must be one of {`training`, `validation`, `test`}, and it defines to which set the given piece of data is assigned. If for a piece of data the key is not present or has an invalid value, that piece is ignored by the pipeline.
  GoogleCloudAiplatformV1PredefinedSplitResponse({required this.key});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key};
  }

  factory GoogleCloudAiplatformV1PredefinedSplitResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1PredefinedSplitResponse(
      key: map['key'] as String,
    );
  }
}
