// ignore_for_file: unused_element, unnecessary_cast

/// Instruction from a PDF file.
class GoogleCloudDatalabelingV1beta1PdfInstructionResponse {
  /// PDF file for the instruction. Only gcs path is allowed.
  final String gcsFileUri;

  GoogleCloudDatalabelingV1beta1PdfInstructionResponse({
    required this.gcsFileUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcsFileUri'] = gcsFileUri;
    return map;
  }

  factory GoogleCloudDatalabelingV1beta1PdfInstructionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1PdfInstructionResponse(
      gcsFileUri: map['gcsFileUri'] as String,
    );
  }
}
