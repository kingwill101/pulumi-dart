// ignore_for_file: unused_element, unnecessary_cast

/// Instruction from a PDF file.
class GoogleCloudDatalabelingV1beta1PdfInstruction {
  /// PDF file for the instruction. Only gcs path is allowed.
  final String? gcsFileUri;

  /// Creates a new [GoogleCloudDatalabelingV1beta1PdfInstruction].
  /// [gcsFileUri] PDF file for the instruction. Only gcs path is allowed.
  GoogleCloudDatalabelingV1beta1PdfInstruction({
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

  factory GoogleCloudDatalabelingV1beta1PdfInstruction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1PdfInstruction(
      gcsFileUri:
          map['gcsFileUri'] == null ? null : map['gcsFileUri'] as String,
    );
  }
}
