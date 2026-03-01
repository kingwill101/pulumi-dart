// ignore_for_file: unused_element, unnecessary_cast


/// The resource management error additional info.
class ErrorAdditionalInfoResponse {
  /// The additional info.
  final dynamic info;
  /// The additional info type.
  final String type;

  /// Creates a new [ErrorAdditionalInfoResponse].
  /// [info] The additional info.
  /// [type] The additional info type.
  ErrorAdditionalInfoResponse({
    required this.info,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'info': info,
      'type': type,
    };
  }

  factory ErrorAdditionalInfoResponse.fromMap(Map<String, dynamic> map) {
    return ErrorAdditionalInfoResponse(
      info: map['info'],
      type: map['type'] as String,
    );
  }
}

