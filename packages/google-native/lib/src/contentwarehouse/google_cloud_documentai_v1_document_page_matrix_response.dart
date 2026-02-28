// ignore_for_file: unused_element, unnecessary_cast

/// Representation for transformation matrix, intended to be compatible and used with OpenCV format for image manipulation.
class GoogleCloudDocumentaiV1DocumentPageMatrixResponse {
  /// Number of columns in the matrix.
  final int cols;

  /// The matrix data.
  final String data;

  /// Number of rows in the matrix.
  final int rows;

  /// This encodes information about what data type the matrix uses. For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of OpenCV primitive data types, please refer to https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html
  final int type;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageMatrixResponse].
  /// [cols] Number of columns in the matrix.
  /// [data] The matrix data.
  /// [rows] Number of rows in the matrix.
  /// [type] This encodes information about what data type the matrix uses. For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of OpenCV primitive data types, please refer to https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html
  GoogleCloudDocumentaiV1DocumentPageMatrixResponse({
    required this.cols,
    required this.data,
    required this.rows,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cols'] = cols;
    map['data'] = data;
    map['rows'] = rows;
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageMatrixResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageMatrixResponse(
      cols: map['cols'] as int,
      data: map['data'] as String,
      rows: map['rows'] as int,
      type: map['type'] as int,
    );
  }
}
