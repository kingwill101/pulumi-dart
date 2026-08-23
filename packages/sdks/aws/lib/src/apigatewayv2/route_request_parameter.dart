// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteRequestParameter {
  /// Request parameter key. This is a [request data mapping parameter](https://docs.aws.amazon.com/apigateway/latest/developerguide/websocket-api-data-mapping.html#websocket-mapping-request-parameters).
  final pulumi.Input<String> requestParameterKey;
  /// Whether the parameter is required.
  final pulumi.Input<bool> required;

  /// Creates a new [RouteRequestParameter].
  /// [requestParameterKey] Request parameter key. This is a [request data mapping parameter](https://docs.aws.amazon.com/apigateway/latest/developerguide/websocket-api-data-mapping.html#websocket-mapping-request-parameters).
  /// [required] Whether the parameter is required.
  const RouteRequestParameter({
    required this.requestParameterKey,
    required this.required,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestParameterKey': requestParameterKey,
      'required': required,
    };
  }

  factory RouteRequestParameter.fromMap(Map<String, dynamic> map) {
    return RouteRequestParameter(
      requestParameterKey: pulumi.Input.fromValue(map['requestParameterKey'] as String),
      required: pulumi.Input.fromValue(map['required'] as bool),
    );
  }
}
