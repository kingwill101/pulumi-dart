// ignore_for_file: unused_element, unnecessary_cast

/// Representation for transformation matrix, intended to be compatible and used with OpenCV format for image manipulation.
class GoogleCloudDocumentaiV1DocumentPageMatrix {
  /// Number of columns in the matrix.
  final int? cols;

  /// The matrix data.
  final String? data;

  /// Number of rows in the matrix.
  final int? rows;

  /// This encodes information about what data type the matrix uses. For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of OpenCV primitive data types, please refer to https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html
  final int? type;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageMatrix].
  /// [cols] Number of columns in the matrix.
  /// [data] The matrix data.
  /// [rows] Number of rows in the matrix.
  /// [type] This encodes information about what data type the matrix uses. For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of OpenCV primitive data types, please refer to https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html
  GoogleCloudDocumentaiV1DocumentPageMatrix({
    this.cols,
    this.data,
    this.rows,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cols': ?cols,
      'data': ?data,
      'rows': ?rows,
      'type': ?type,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageMatrix.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentPageMatrix(
      cols: map['cols'] == null ? null : map['cols'] as int,
      data: map['data'] == null ? null : map['data'] as String,
      rows: map['rows'] == null ? null : map['rows'] as int,
      type: map['type'] == null ? null : map['type'] as int,
    );
  }
}
