// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An XML configuration specification for a WebTest.
class WebTestPropertiesConfigurationResponse {
  /// The XML specification of a WebTest to run against an application.
  final pulumi.Input<String>? webTest;

  /// Creates a new [WebTestPropertiesConfigurationResponse].
  /// [webTest] The XML specification of a WebTest to run against an application.
  const WebTestPropertiesConfigurationResponse({
    this.webTest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webTest': ?webTest,
    };
  }

  factory WebTestPropertiesConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return WebTestPropertiesConfigurationResponse(
      webTest: (() { final guardedValue = map['webTest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
