// ignore_for_file: unused_element, unnecessary_cast


/// Service Account Token for BrokerAuthentication
class BrokerAuthenticatorMethodSatResponse {
  /// List of allowed audience.
  final List<String> audiences;

  /// Creates a new [BrokerAuthenticatorMethodSatResponse].
  /// [audiences] List of allowed audience.
  BrokerAuthenticatorMethodSatResponse({
    required this.audiences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': audiences,
    };
  }

  factory BrokerAuthenticatorMethodSatResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodSatResponse(
      audiences: (map['audiences'] as List).cast<String>(),
    );
  }
}

