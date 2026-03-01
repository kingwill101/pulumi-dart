// ignore_for_file: unused_element, unnecessary_cast


/// Application gateway probe health response match.
class ApplicationGatewayProbeHealthResponseMatchResponse {
  /// Body that must be contained in the health response. Default value is empty.
  final String? body;
  /// Allowed ranges of healthy status codes. Default range of healthy status codes is 200-399.
  final List<String>? statusCodes;

  /// Creates a new [ApplicationGatewayProbeHealthResponseMatchResponse].
  /// [body] Body that must be contained in the health response. Default value is empty.
  /// [statusCodes] Allowed ranges of healthy status codes. Default range of healthy status codes is 200-399.
  ApplicationGatewayProbeHealthResponseMatchResponse({
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
      body: map['body'] == null ? null : map['body'] as String,
      statusCodes: map['statusCodes'] == null ? null : (map['statusCodes'] as List).cast<String>(),
    );
  }
}

