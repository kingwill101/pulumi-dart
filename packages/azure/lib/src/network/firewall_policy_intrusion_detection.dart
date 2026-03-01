// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_intrusion_detection_signature_override.dart';
import 'firewall_policy_intrusion_detection_traffic_bypass.dart';

class FirewallPolicyIntrusionDetection {
  /// In which mode you want to run intrusion detection: `Off`, `Alert` or `Deny`.
  final String? mode;
  /// A list of Private IP address ranges to identify traffic direction. By default, only ranges defined by IANA RFC 1918 are considered private IP addresses.
  final List<String>? privateRanges;
  /// One or more `signature_overrides` blocks as defined below.
  final List<FirewallPolicyIntrusionDetectionSignatureOverride>? signatureOverrides;
  /// One or more `traffic_bypass` blocks as defined below.
  final List<FirewallPolicyIntrusionDetectionTrafficBypass>? trafficBypasses;

  /// Creates a new [FirewallPolicyIntrusionDetection].
  /// [mode] In which mode you want to run intrusion detection: `Off`, `Alert` or `Deny`.
  /// [privateRanges] A list of Private IP address ranges to identify traffic direction. By default, only ranges defined by IANA RFC 1918 are considered private IP addresses.
  /// [signatureOverrides] One or more `signature_overrides` blocks as defined below.
  /// [trafficBypasses] One or more `traffic_bypass` blocks as defined below.
  FirewallPolicyIntrusionDetection({
    this.mode,
    this.privateRanges,
    this.signatureOverrides,
    this.trafficBypasses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'privateRanges': ?privateRanges,
      'signatureOverrides': ?signatureOverrides == null ? null : pulumi.Input.encodeList<FirewallPolicyIntrusionDetectionSignatureOverride, Map<String, dynamic>>(signatureOverrides!, (value) => value.toMap()),
      'trafficBypasses': ?trafficBypasses == null ? null : pulumi.Input.encodeList<FirewallPolicyIntrusionDetectionTrafficBypass, Map<String, dynamic>>(trafficBypasses!, (value) => value.toMap()),
    };
  }

  factory FirewallPolicyIntrusionDetection.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyIntrusionDetection(
      mode: map['mode'] == null ? null : map['mode'] as String,
      privateRanges: map['privateRanges'] == null ? null : (map['privateRanges'] as List).cast<String>(),
      signatureOverrides: map['signatureOverrides'] == null ? null : pulumi.Input.decodeList<FirewallPolicyIntrusionDetectionSignatureOverride>(map['signatureOverrides'], (value) => FirewallPolicyIntrusionDetectionSignatureOverride.fromMap((value as Map).cast<String, dynamic>())),
      trafficBypasses: map['trafficBypasses'] == null ? null : pulumi.Input.decodeList<FirewallPolicyIntrusionDetectionTrafficBypass>(map['trafficBypasses'], (value) => FirewallPolicyIntrusionDetectionTrafficBypass.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

