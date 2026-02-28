// ignore_for_file: unused_element, unnecessary_cast


/// Deprecated: this instruction format is not supported any more. Instruction from a CSV file.
class GoogleCloudDatalabelingV1beta1CsvInstruction {
  /// CSV file for the instruction. Only gcs path is allowed.
  final String? gcsFileUri;

  /// Creates a new [GoogleCloudDatalabelingV1beta1CsvInstruction].
  /// [gcsFileUri] CSV file for the instruction. Only gcs path is allowed.
  GoogleCloudDatalabelingV1beta1CsvInstruction({
    this.gcsFileUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcsFileUri': ?gcsFileUri,
    };
  }

  factory GoogleCloudDatalabelingV1beta1CsvInstruction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1CsvInstruction(
      gcsFileUri: map['gcsFileUri'] == null ? null : map['gcsFileUri'] as String,
    );
  }
}

