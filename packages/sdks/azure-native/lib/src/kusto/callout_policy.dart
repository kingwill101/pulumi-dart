// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for external callout policies, including URI patterns, access types, and service types.
class CalloutPolicy {
  /// Type of the callout service, specifying the kind of external resource or service being accessed.
  final pulumi.Input<String>? calloutType;
  /// Regular expression or FQDN pattern for the callout URI.
  final pulumi.Input<String>? calloutUriRegex;
  /// Indicates whether outbound access is permitted for the specified URI pattern.
  final pulumi.Input<String>? outboundAccess;

  /// Creates a new [CalloutPolicy].
  /// [calloutType] Type of the callout service, specifying the kind of external resource or service being accessed.
  /// [calloutUriRegex] Regular expression or FQDN pattern for the callout URI.
  /// [outboundAccess] Indicates whether outbound access is permitted for the specified URI pattern.
  CalloutPolicy({
    this.calloutType,
    this.calloutUriRegex,
    this.outboundAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'calloutType': ?calloutType,
      'calloutUriRegex': ?calloutUriRegex,
      'outboundAccess': ?outboundAccess,
    };
  }

  factory CalloutPolicy.fromMap(Map<String, dynamic> map) {
    return CalloutPolicy(
      calloutType: map['calloutType'] == null ? null : (map['calloutType'] as String).input(),
      calloutUriRegex: map['calloutUriRegex'] == null ? null : (map['calloutUriRegex'] as String).input(),
      outboundAccess: map['outboundAccess'] == null ? null : (map['outboundAccess'] as String).input(),
    );
  }
}

