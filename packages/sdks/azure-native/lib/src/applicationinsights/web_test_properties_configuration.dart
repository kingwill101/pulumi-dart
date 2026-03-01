// ignore_for_file: unused_element, unnecessary_cast


/// An XML configuration specification for a WebTest.
class WebTestPropertiesConfiguration {
  /// The XML specification of a WebTest to run against an application.
  final String? webTest;

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
      webTest: map['webTest'] == null ? null : map['webTest'] as String,
    );
  }
}

