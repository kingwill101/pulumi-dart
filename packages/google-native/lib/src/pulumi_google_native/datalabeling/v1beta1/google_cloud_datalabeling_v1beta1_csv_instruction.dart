// ignore_for_file: unused_element, unnecessary_cast

/// Deprecated: this instruction format is not supported any more. Instruction from a CSV file.
class GoogleCloudDatalabelingV1beta1CsvInstruction {
  /// CSV file for the instruction. Only gcs path is allowed.
  final String? gcsFileUri;

  GoogleCloudDatalabelingV1beta1CsvInstruction({
    this.gcsFileUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gcsFileUriValue = gcsFileUri;
    if (gcsFileUriValue != null) {
      map['gcsFileUri'] = gcsFileUriValue;
    }
    return map;
  }

  factory GoogleCloudDatalabelingV1beta1CsvInstruction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1CsvInstruction(
      gcsFileUri:
          map['gcsFileUri'] == null ? null : map['gcsFileUri'] as String,
    );
  }
}
