// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error definition.
class ConnectorErrorDefinitionResponse {
  /// Service specific error code which serves as the substatus for the HTTP error code.
  final String code;
  /// Internal error details.
  final List<ConnectorErrorDefinitionResponse> details;
  /// Description of the error.
  final String message;

  /// Creates a new [ConnectorErrorDefinitionResponse].
  /// [code] Service specific error code which serves as the substatus for the HTTP error code.
  /// [details] Internal error details.
  /// [message] Description of the error.
  ConnectorErrorDefinitionResponse({
    required this.code,
    required this.details,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'details': pulumi.Input.encodeList<ConnectorErrorDefinitionResponse, Map<String, dynamic>>(details, (value) => value.toMap()),
      'message': message,
    };
  }

  factory ConnectorErrorDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorErrorDefinitionResponse(
      code: map['code'] as String,
      details: pulumi.Input.decodeList<ConnectorErrorDefinitionResponse>(map['details'], (value) => ConnectorErrorDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
    );
  }
}

