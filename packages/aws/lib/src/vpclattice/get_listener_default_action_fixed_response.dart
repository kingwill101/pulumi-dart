// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionFixedResponse {
  final int statusCode;

  /// Creates a new [GetListenerDefaultActionFixedResponse].
  /// [statusCode] Required.
  GetListenerDefaultActionFixedResponse({
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['statusCode'] = statusCode;
    return map;
  }

  factory GetListenerDefaultActionFixedResponse.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionFixedResponse(
      statusCode: map['statusCode'] as int,
    );
  }
}
