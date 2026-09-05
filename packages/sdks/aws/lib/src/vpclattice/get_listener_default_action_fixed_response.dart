// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerDefaultActionFixedResponse {
  /// Custom HTTP status code to return.
  final pulumi.Input<int> statusCode;

  /// Creates a new [GetListenerDefaultActionFixedResponse].
  /// [statusCode] Custom HTTP status code to return.
  const GetListenerDefaultActionFixedResponse({
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCode': statusCode,
    };
  }

  factory GetListenerDefaultActionFixedResponse.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionFixedResponse(
      statusCode: pulumi.Input.fromValue((map['statusCode'] as num).toInt()),
    );
  }
}
