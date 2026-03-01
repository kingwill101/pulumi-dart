// ignore_for_file: unused_element, unnecessary_cast

/// Instruction from a PDF file.
class GoogleCloudDatalabelingV1beta1PdfInstructionResponse {
  /// PDF file for the instruction. Only gcs path is allowed.
  final String gcsFileUri;

  /// Creates a new [GoogleCloudDatalabelingV1beta1PdfInstructionResponse].
  /// [gcsFileUri] PDF file for the instruction. Only gcs path is allowed.
  GoogleCloudDatalabelingV1beta1PdfInstructionResponse({
    required this.gcsFileUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'gcsFileUri': gcsFileUri};
  }

  factory GoogleCloudDatalabelingV1beta1PdfInstructionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatalabelingV1beta1PdfInstructionResponse(
      gcsFileUri: map['gcsFileUri'] as String,
    );
  }
}
