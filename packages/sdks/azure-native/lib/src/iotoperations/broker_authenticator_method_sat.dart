// ignore_for_file: unused_element, unnecessary_cast


/// Service Account Token for BrokerAuthentication
class BrokerAuthenticatorMethodSat {
  /// List of allowed audience.
  final List<String> audiences;

  /// Creates a new [BrokerAuthenticatorMethodSat].
  /// [audiences] List of allowed audience.
  BrokerAuthenticatorMethodSat({
    required this.audiences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': audiences,
    };
  }

  factory BrokerAuthenticatorMethodSat.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodSat(
      audiences: (map['audiences'] as List).cast<String>(),
    );
  }
}

