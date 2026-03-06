// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV3TriggersTriggerHttpTrigger {
  /// The public domain name address. On the Internet, you can access the HTTP Trigger through the HTTP protocol or HTTPS protocol.
  final pulumi.Input<String> urlInternet;
  /// The private domain name address. In a VPC, you can access the HTTP Trigger through HTTP or HTTPS.
  final pulumi.Input<String> urlIntranet;

  /// Creates a new [GetV3TriggersTriggerHttpTrigger].
  /// [urlInternet] The public domain name address. On the Internet, you can access the HTTP Trigger through the HTTP protocol or HTTPS protocol.
  /// [urlIntranet] The private domain name address. In a VPC, you can access the HTTP Trigger through HTTP or HTTPS.
  const GetV3TriggersTriggerHttpTrigger({
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
      urlInternet: pulumi.Input.fromValue(map['urlInternet'] as String),
      urlIntranet: pulumi.Input.fromValue(map['urlIntranet'] as String),
    );
  }
}

