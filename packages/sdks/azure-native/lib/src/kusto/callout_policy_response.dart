// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for external callout policies, including URI patterns, access types, and service types.
class CalloutPolicyResponse {
  /// Unique identifier for the callout configuration.
  final String calloutId;
  /// Type of the callout service, specifying the kind of external resource or service being accessed.
  final String? calloutType;
  /// Regular expression or FQDN pattern for the callout URI.
  final String? calloutUriRegex;
  /// Indicates whether outbound access is permitted for the specified URI pattern.
  final String? outboundAccess;

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
      calloutId: map['calloutId'] as String,
      calloutType: map['calloutType'] == null ? null : map['calloutType'] as String,
      calloutUriRegex: map['calloutUriRegex'] == null ? null : map['calloutUriRegex'] as String,
      outboundAccess: map['outboundAccess'] == null ? null : map['outboundAccess'] as String,
    );
  }
}

