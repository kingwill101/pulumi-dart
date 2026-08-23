// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RedirectAllRequestsTo
class RedirectAllRequestsToResponse {
  /// Name of the host where requests are redirected.
  final pulumi.Input<String>? hostName;
  /// Protocol to use when redirecting requests. The default is the protocol that is used in the original request.
  final pulumi.Input<String>? protocol;

  /// Creates a new [RedirectAllRequestsToResponse].
  /// [hostName] Name of the host where requests are redirected.
  /// [protocol] Protocol to use when redirecting requests. The default is the protocol that is used in the original request.
  const RedirectAllRequestsToResponse({
    this.hostName,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': ?hostName,
      'protocol': ?protocol,
    };
  }

  factory RedirectAllRequestsToResponse.fromMap(Map<String, dynamic> map) {
    return RedirectAllRequestsToResponse(
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
