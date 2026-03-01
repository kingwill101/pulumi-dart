// ignore_for_file: unused_element, unnecessary_cast


class GetV3TriggersTriggerHttpTrigger {
  /// The public domain name address. On the Internet, you can access the HTTP Trigger through the HTTP protocol or HTTPS protocol.
  final String urlInternet;
  /// The private domain name address. In a VPC, you can access the HTTP Trigger through HTTP or HTTPS.
  final String urlIntranet;

  /// Creates a new [GetV3TriggersTriggerHttpTrigger].
  /// [urlInternet] The public domain name address. On the Internet, you can access the HTTP Trigger through the HTTP protocol or HTTPS protocol.
  /// [urlIntranet] The private domain name address. In a VPC, you can access the HTTP Trigger through HTTP or HTTPS.
  GetV3TriggersTriggerHttpTrigger({
    required this.urlInternet,
    required this.urlIntranet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'urlInternet': urlInternet,
      'urlIntranet': urlIntranet,
    };
  }

  factory GetV3TriggersTriggerHttpTrigger.fromMap(Map<String, dynamic> map) {
    return GetV3TriggersTriggerHttpTrigger(
      urlInternet: map['urlInternet'] as String,
      urlIntranet: map['urlIntranet'] as String,
    );
  }
}

