// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudGatewayClientAuthorization {
  /// Specifies the Spring Cloud Certificate IDs of the Spring Cloud Gateway.
  final List<String>? certificateIds;
  /// Specifies whether the client certificate verification is enabled.
  final bool? verificationEnabled;

  /// Creates a new [SpringCloudGatewayClientAuthorization].
  /// [certificateIds] Specifies the Spring Cloud Certificate IDs of the Spring Cloud Gateway.
  /// [verificationEnabled] Specifies whether the client certificate verification is enabled.
  SpringCloudGatewayClientAuthorization({
    this.certificateIds,
    this.verificationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateIds': ?certificateIds,
      'verificationEnabled': ?verificationEnabled,
    };
  }

  factory SpringCloudGatewayClientAuthorization.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewayClientAuthorization(
      certificateIds: map['certificateIds'] == null ? null : (map['certificateIds'] as List).cast<String>(),
      verificationEnabled: map['verificationEnabled'] == null ? null : map['verificationEnabled'] as bool,
    );
  }
}

