// ignore_for_file: unused_element, unnecessary_cast


class ApiMockServiceConfig {
  /// The name of aone.
  final String? aoneName;
  /// The result of the mock service.
  final String result;

  /// Creates a new [ApiMockServiceConfig].
  /// [aoneName] The name of aone.
  /// [result] The result of the mock service.
  ApiMockServiceConfig({
    this.aoneName,
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aoneName': ?aoneName,
      'result': result,
    };
  }

  factory ApiMockServiceConfig.fromMap(Map<String, dynamic> map) {
    return ApiMockServiceConfig(
      aoneName: map['aoneName'] == null ? null : map['aoneName'] as String,
      result: map['result'] as String,
    );
  }
}

