// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An XML configuration specification for a WebTest.
class WebTestPropertiesConfiguration {
  /// The XML specification of a WebTest to run against an application.
  final pulumi.Input<String>? webTest;

  /// Creates a new [WebTestPropertiesConfiguration].
  /// [webTest] The XML specification of a WebTest to run against an application.
  WebTestPropertiesConfiguration({
    this.webTest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webTest': ?webTest,
    };
  }

  factory WebTestPropertiesConfiguration.fromMap(Map<String, dynamic> map) {
    return WebTestPropertiesConfiguration(
      webTest: (() { final guardedValue = map['webTest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

