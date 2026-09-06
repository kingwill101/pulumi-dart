// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application gateway probe health response match.
class ApplicationGatewayProbeHealthResponseMatchResponse {
  /// Body that must be contained in the health response. Default value is empty.
  final pulumi.Input<String?>? body;
  /// Allowed ranges of healthy status codes. Default range of healthy status codes is 200-399.
  final pulumi.Input<List<String>?>? statusCodes;

  /// Creates a new [ApplicationGatewayProbeHealthResponseMatchResponse].
  /// [body] Body that must be contained in the health response. Default value is empty.
  /// [statusCodes] Allowed ranges of healthy status codes. Default range of healthy status codes is 200-399.
  const ApplicationGatewayProbeHealthResponseMatchResponse({
    this.body,
    this.statusCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'statusCodes': ?statusCodes,
    };
  }

  factory ApplicationGatewayProbeHealthResponseMatchResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayProbeHealthResponseMatchResponse(
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusCodes: (() { final guardedValue = map['statusCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
