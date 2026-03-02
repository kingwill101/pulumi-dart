// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An XML configuration specification for a WebTest.
class WebTestPropertiesResponseConfiguration {
  /// The XML specification of a WebTest to run against an application.
  final pulumi.Input<String>? webTest;

  /// Creates a new [WebTestPropertiesResponseConfiguration].
  /// [webTest] The XML specification of a WebTest to run against an application.
  WebTestPropertiesResponseConfiguration({
    this.webTest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webTest': ?webTest,
    };
  }

  factory WebTestPropertiesResponseConfiguration.fromMap(Map<String, dynamic> map) {
    return WebTestPropertiesResponseConfiguration(
      webTest: map['webTest'] == null ? null : (map['webTest'] as String).input(),
    );
  }
}

