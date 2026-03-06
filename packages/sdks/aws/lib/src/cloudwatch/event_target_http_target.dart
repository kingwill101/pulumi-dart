// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventTargetHttpTarget {
  /// Enables you to specify HTTP headers to add to the request.
  final pulumi.Input<Map<String, String>>? headerParameters;
  /// The list of values that correspond sequentially to any path variables in your endpoint ARN (for example `arn:aws:execute-api:us-east-1:123456:myapi/*/POST/pets/*`).
  final pulumi.Input<List<String>>? pathParameterValues;
  /// Represents keys/values of query string parameters that are appended to the invoked endpoint.
  final pulumi.Input<Map<String, String>>? queryStringParameters;

  /// Creates a new [EventTargetHttpTarget].
  /// [headerParameters] Enables you to specify HTTP headers to add to the request.
  /// [pathParameterValues] The list of values that correspond sequentially to any path variables in your endpoint ARN (for example `arn:aws:execute-api:us-east-1:123456:myapi/*/POST/pets/*`).
  /// [queryStringParameters] Represents keys/values of query string parameters that are appended to the invoked endpoint.
  const EventTargetHttpTarget({
    this.headerParameters,
    this.pathParameterValues,
    this.queryStringParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerParameters': ?headerParameters,
      'pathParameterValues': ?pathParameterValues,
      'queryStringParameters': ?queryStringParameters,
    };
  }

  factory EventTargetHttpTarget.fromMap(Map<String, dynamic> map) {
    return EventTargetHttpTarget(
      headerParameters: (() { final guardedValue = map['headerParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      pathParameterValues: (() { final guardedValue = map['pathParameterValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      queryStringParameters: (() { final guardedValue = map['queryStringParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

