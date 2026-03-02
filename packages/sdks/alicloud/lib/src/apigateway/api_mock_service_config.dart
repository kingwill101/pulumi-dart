// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiMockServiceConfig {
  /// The name of aone.
  final pulumi.Input<String>? aoneName;
  /// The result of the mock service.
  final pulumi.Input<String> result;

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
      aoneName: map['aoneName'] == null ? null : (map['aoneName']! as String).input(),
      result: (map['result'] as String).input(),
    );
  }
}

