// ignore_for_file: unused_element, unnecessary_cast


/// Error information.
class TypedErrorInfoResponse {
  /// The error information.
  final dynamic info;
  /// The type of the error.
  final String type;

  /// Creates a new [TypedErrorInfoResponse].
  /// [info] The error information.
  /// [type] The type of the error.
  TypedErrorInfoResponse({
    required this.info,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'info': info,
      'type': type,
    };
  }

  factory TypedErrorInfoResponse.fromMap(Map<String, dynamic> map) {
    return TypedErrorInfoResponse(
      info: map['info'],
      type: map['type'] as String,
    );
  }
}

