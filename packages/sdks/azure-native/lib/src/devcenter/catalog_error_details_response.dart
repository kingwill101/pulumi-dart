// ignore_for_file: unused_element, unnecessary_cast


/// Catalog error details
class CatalogErrorDetailsResponse {
  /// An identifier for the error.
  final String? code;
  /// A message describing the error.
  final String? message;

  /// Creates a new [CatalogErrorDetailsResponse].
  /// [code] An identifier for the error.
  /// [message] A message describing the error.
  CatalogErrorDetailsResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory CatalogErrorDetailsResponse.fromMap(Map<String, dynamic> map) {
    return CatalogErrorDetailsResponse(
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

