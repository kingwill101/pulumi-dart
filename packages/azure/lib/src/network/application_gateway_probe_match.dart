// ignore_for_file: unused_element, unnecessary_cast


class ApplicationGatewayProbeMatch {
  /// A snippet from the Response Body which must be present in the Response.
  final String? body;
  /// A list of allowed status codes for this Health Probe.
  final List<String> statusCodes;

  /// Creates a new [ApplicationGatewayProbeMatch].
  /// [body] A snippet from the Response Body which must be present in the Response.
  /// [statusCodes] A list of allowed status codes for this Health Probe.
  ApplicationGatewayProbeMatch({
    this.body,
    required this.statusCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'statusCodes': statusCodes,
    };
  }

  factory ApplicationGatewayProbeMatch.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayProbeMatch(
      body: map['body'] == null ? null : map['body'] as String,
      statusCodes: (map['statusCodes'] as List).cast<String>(),
    );
  }
}

