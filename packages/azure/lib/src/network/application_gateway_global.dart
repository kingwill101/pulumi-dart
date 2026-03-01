// ignore_for_file: unused_element, unnecessary_cast


class ApplicationGatewayGlobal {
  /// Whether Application Gateway's Request buffer is enabled.
  final bool requestBufferingEnabled;
  /// Whether Application Gateway's Response buffer is enabled.
  final bool responseBufferingEnabled;

  /// Creates a new [ApplicationGatewayGlobal].
  /// [requestBufferingEnabled] Whether Application Gateway's Request buffer is enabled.
  /// [responseBufferingEnabled] Whether Application Gateway's Response buffer is enabled.
  ApplicationGatewayGlobal({
    required this.requestBufferingEnabled,
    required this.responseBufferingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestBufferingEnabled': requestBufferingEnabled,
      'responseBufferingEnabled': responseBufferingEnabled,
    };
  }

  factory ApplicationGatewayGlobal.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayGlobal(
      requestBufferingEnabled: map['requestBufferingEnabled'] as bool,
      responseBufferingEnabled: map['responseBufferingEnabled'] as bool,
    );
  }
}

