// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for external callout policies, including URI patterns, access types, and service types.
class CalloutPolicyResponse {
  /// Unique identifier for the callout configuration.
  final pulumi.Input<String> calloutId;
  /// Type of the callout service, specifying the kind of external resource or service being accessed.
  final pulumi.Input<String>? calloutType;
  /// Regular expression or FQDN pattern for the callout URI.
  final pulumi.Input<String>? calloutUriRegex;
  /// Indicates whether outbound access is permitted for the specified URI pattern.
  final pulumi.Input<String>? outboundAccess;

  /// Creates a new [CalloutPolicyResponse].
  /// [calloutId] Unique identifier for the callout configuration.
  /// [calloutType] Type of the callout service, specifying the kind of external resource or service being accessed.
  /// [calloutUriRegex] Regular expression or FQDN pattern for the callout URI.
  /// [outboundAccess] Indicates whether outbound access is permitted for the specified URI pattern.
  CalloutPolicyResponse({
    required this.calloutId,
    this.calloutType,
    this.calloutUriRegex,
    this.outboundAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'calloutId': calloutId,
      'calloutType': ?calloutType,
      'calloutUriRegex': ?calloutUriRegex,
      'outboundAccess': ?outboundAccess,
    };
  }

  factory CalloutPolicyResponse.fromMap(Map<String, dynamic> map) {
    return CalloutPolicyResponse(
      calloutId: pulumi.Input.fromValue(map['calloutId'] as String),
      calloutType: (() { final guardedValue = map['calloutType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      calloutUriRegex: (() { final guardedValue = map['calloutUriRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundAccess: (() { final guardedValue = map['outboundAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

