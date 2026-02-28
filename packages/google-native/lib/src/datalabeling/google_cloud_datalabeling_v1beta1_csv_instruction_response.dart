// ignore_for_file: unused_element, unnecessary_cast

/// Deprecated: this instruction format is not supported any more. Instruction from a CSV file.
class GoogleCloudDatalabelingV1beta1CsvInstructionResponse {
  /// CSV file for the instruction. Only gcs path is allowed.
  final String gcsFileUri;

  /// Creates a new [GoogleCloudDatalabelingV1beta1CsvInstructionResponse].
  /// [gcsFileUri] CSV file for the instruction. Only gcs path is allowed.
  GoogleCloudDatalabelingV1beta1CsvInstructionResponse({
    required this.gcsFileUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcsFileUri'] = gcsFileUri;
    return map;
  }

  factory GoogleCloudDatalabelingV1beta1CsvInstructionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1CsvInstructionResponse(
      gcsFileUri: map['gcsFileUri'] as String,
    );
  }
}
