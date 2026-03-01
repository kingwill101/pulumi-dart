// ignore_for_file: unused_element, unnecessary_cast


/// Definition of the package error info type.
class PackageErrorInfoResponse {
  /// Package import error code.
  final String? code;
  /// Package import error message.
  final String? message;

  /// Creates a new [PackageErrorInfoResponse].
  /// [code] Package import error code.
  /// [message] Package import error message.
  PackageErrorInfoResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory PackageErrorInfoResponse.fromMap(Map<String, dynamic> map) {
    return PackageErrorInfoResponse(
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

