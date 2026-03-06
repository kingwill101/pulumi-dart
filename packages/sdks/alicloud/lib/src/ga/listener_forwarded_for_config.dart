// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerForwardedForConfig {
  /// Specifies whether to use the GA-AP header to retrieve the information about acceleration regions. Default value: `false`. Valid values:
  final pulumi.Input<bool>? forwardedForGaApEnabled;
  /// Specifies whether to use the GA-ID header to retrieve the ID of the GA instance. Default value: `false`. Valid values:
  final pulumi.Input<bool>? forwardedForGaIdEnabled;
  /// Specifies whether to use the GA-X-Forward-Port header to retrieve the listener ports of the GA instance. Default value: `false`. Valid values:
  final pulumi.Input<bool>? forwardedForPortEnabled;
  /// Specifies whether to use the GA-X-Forward-Proto header to retrieve the listener protocol of the GA instance. Default value: `false`. Valid values:
  final pulumi.Input<bool>? forwardedForProtoEnabled;
  /// Specifies whether to use the X-Real-IP header to retrieve client IP addresses. Default value: `false`. Valid values:
  final pulumi.Input<bool>? realIpEnabled;

  /// Creates a new [ListenerForwardedForConfig].
  /// [forwardedForGaApEnabled] Specifies whether to use the GA-AP header to retrieve the information about acceleration regions. Default value: `false`. Valid values:
  /// [forwardedForGaIdEnabled] Specifies whether to use the GA-ID header to retrieve the ID of the GA instance. Default value: `false`. Valid values:
  /// [forwardedForPortEnabled] Specifies whether to use the GA-X-Forward-Port header to retrieve the listener ports of the GA instance. Default value: `false`. Valid values:
  /// [forwardedForProtoEnabled] Specifies whether to use the GA-X-Forward-Proto header to retrieve the listener protocol of the GA instance. Default value: `false`. Valid values:
  /// [realIpEnabled] Specifies whether to use the X-Real-IP header to retrieve client IP addresses. Default value: `false`. Valid values:
  const ListenerForwardedForConfig({
    this.forwardedForGaApEnabled,
    this.forwardedForGaIdEnabled,
    this.forwardedForPortEnabled,
    this.forwardedForProtoEnabled,
    this.realIpEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardedForGaApEnabled': ?forwardedForGaApEnabled,
      'forwardedForGaIdEnabled': ?forwardedForGaIdEnabled,
      'forwardedForPortEnabled': ?forwardedForPortEnabled,
      'forwardedForProtoEnabled': ?forwardedForProtoEnabled,
      'realIpEnabled': ?realIpEnabled,
    };
  }

  factory ListenerForwardedForConfig.fromMap(Map<String, dynamic> map) {
    return ListenerForwardedForConfig(
      forwardedForGaApEnabled: (() { final guardedValue = map['forwardedForGaApEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forwardedForGaIdEnabled: (() { final guardedValue = map['forwardedForGaIdEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forwardedForPortEnabled: (() { final guardedValue = map['forwardedForPortEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forwardedForProtoEnabled: (() { final guardedValue = map['forwardedForProtoEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      realIpEnabled: (() { final guardedValue = map['realIpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

