// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerDefaultActionFixedResponse {
  final pulumi.Input<int> statusCode;

  /// Creates a new [GetListenerDefaultActionFixedResponse].
  /// [statusCode] Required.
  GetListenerDefaultActionFixedResponse({required this.statusCode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'statusCode': statusCode};
  }

  factory GetListenerDefaultActionFixedResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetListenerDefaultActionFixedResponse(
      statusCode: pulumi.Input.fromValue(map['statusCode'] as int),
    );
  }
}
