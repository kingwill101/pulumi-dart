// ignore_for_file: unused_element, unnecessary_cast


/// Service Account Token for BrokerAuthentication
class DataflowEndpointAuthenticationServiceAccountToken {
  /// Audience of the service account. Optional, defaults to the broker internal service account audience.
  final String audience;

  /// Creates a new [DataflowEndpointAuthenticationServiceAccountToken].
  /// [audience] Audience of the service account. Optional, defaults to the broker internal service account audience.
  DataflowEndpointAuthenticationServiceAccountToken({
    required this.audience,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
    };
  }

  factory DataflowEndpointAuthenticationServiceAccountToken.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointAuthenticationServiceAccountToken(
      audience: map['audience'] as String,
    );
  }
}

