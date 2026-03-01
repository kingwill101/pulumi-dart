// ignore_for_file: unused_element, unnecessary_cast


class V3TriggerHttpTrigger {
  /// The public domain name address. On the Internet, you can access the HTTP Trigger through the HTTP protocol or HTTPS protocol.
  final String? urlInternet;
  /// The private domain name address. In a VPC, you can access the HTTP Trigger through HTTP or HTTPS.
  final String? urlIntranet;

  /// Creates a new [V3TriggerHttpTrigger].
  /// [urlInternet] The public domain name address. On the Internet, you can access the HTTP Trigger through the HTTP protocol or HTTPS protocol.
  /// [urlIntranet] The private domain name address. In a VPC, you can access the HTTP Trigger through HTTP or HTTPS.
  V3TriggerHttpTrigger({
    this.urlInternet,
    this.urlIntranet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'urlInternet': ?urlInternet,
      'urlIntranet': ?urlIntranet,
    };
  }

  factory V3TriggerHttpTrigger.fromMap(Map<String, dynamic> map) {
    return V3TriggerHttpTrigger(
      urlInternet: map['urlInternet'] == null ? null : map['urlInternet'] as String,
      urlIntranet: map['urlIntranet'] == null ? null : map['urlIntranet'] as String,
    );
  }
}

