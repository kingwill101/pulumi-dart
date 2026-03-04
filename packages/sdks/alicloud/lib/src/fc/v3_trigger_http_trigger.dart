// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3TriggerHttpTrigger {
  /// The public domain name address. On the Internet, you can access the HTTP Trigger through the HTTP protocol or HTTPS protocol.
  final pulumi.Input<String>? urlInternet;

  /// The private domain name address. In a VPC, you can access the HTTP Trigger through HTTP or HTTPS.
  final pulumi.Input<String>? urlIntranet;

  /// Creates a new [V3TriggerHttpTrigger].
  /// [urlInternet] The public domain name address. On the Internet, you can access the HTTP Trigger through the HTTP protocol or HTTPS protocol.
  /// [urlIntranet] The private domain name address. In a VPC, you can access the HTTP Trigger through HTTP or HTTPS.
  V3TriggerHttpTrigger({this.urlInternet, this.urlIntranet});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'urlInternet': ?urlInternet,
      'urlIntranet': ?urlIntranet,
    };
  }

  factory V3TriggerHttpTrigger.fromMap(Map<String, dynamic> map) {
    return V3TriggerHttpTrigger(
      urlInternet: (() {
        final guardedValue = map['urlInternet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      urlIntranet: (() {
        final guardedValue = map['urlIntranet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
