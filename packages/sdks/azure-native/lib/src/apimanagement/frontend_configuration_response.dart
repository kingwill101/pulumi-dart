// ignore_for_file: unused_element, unnecessary_cast


/// Information regarding how the gateway should be exposed.
class FrontendConfigurationResponse {
  /// The default hostname of the data-plane gateway to which requests can be sent. This is only applicable for API gateway with Standard SKU.
  final String defaultHostname;

  /// Creates a new [FrontendConfigurationResponse].
  /// [defaultHostname] The default hostname of the data-plane gateway to which requests can be sent. This is only applicable for API gateway with Standard SKU.
  FrontendConfigurationResponse({
    required this.defaultHostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultHostname': defaultHostname,
    };
  }

  factory FrontendConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FrontendConfigurationResponse(
      defaultHostname: map['defaultHostname'] as String,
    );
  }
}

