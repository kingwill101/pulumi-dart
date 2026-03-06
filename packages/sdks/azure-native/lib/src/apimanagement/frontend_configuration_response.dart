// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information regarding how the gateway should be exposed.
class FrontendConfigurationResponse {
  /// The default hostname of the data-plane gateway to which requests can be sent. This is only applicable for API gateway with Standard SKU.
  final pulumi.Input<String> defaultHostname;

  /// Creates a new [FrontendConfigurationResponse].
  /// [defaultHostname] The default hostname of the data-plane gateway to which requests can be sent. This is only applicable for API gateway with Standard SKU.
  const FrontendConfigurationResponse({
    required this.defaultHostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultHostname': defaultHostname,
    };
  }

  factory FrontendConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FrontendConfigurationResponse(
      defaultHostname: pulumi.Input.fromValue(map['defaultHostname'] as String),
    );
  }
}

