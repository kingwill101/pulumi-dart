// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_dnsoverride.dart';

/// Configures the per-node local DNS, with VnetDNS and KubeDNS overrides. LocalDNS helps improve performance and reliability of DNS resolution in an AKS cluster. For more details see aka.ms/aks/localdns.
class LocalDNSProfile {
  /// KubeDNS overrides apply to DNS traffic from pods with dnsPolicy:ClusterFirst (referred to as KubeDNS traffic).
  final pulumi.Input<Map<String, LocalDNSOverride>>? kubeDNSOverrides;

  /// Mode of enablement for localDNS.
  final pulumi.Input<String>? mode;

  /// VnetDNS overrides apply to DNS traffic from pods with dnsPolicy:default or kubelet (referred to as VnetDNS traffic).
  final pulumi.Input<Map<String, LocalDNSOverride>>? vnetDNSOverrides;

  /// Creates a new [LocalDNSProfile].
  /// [kubeDNSOverrides] KubeDNS overrides apply to DNS traffic from pods with dnsPolicy:ClusterFirst (referred to as KubeDNS traffic).
  /// [mode] Mode of enablement for localDNS.
  /// [vnetDNSOverrides] VnetDNS overrides apply to DNS traffic from pods with dnsPolicy:default or kubelet (referred to as VnetDNS traffic).
  LocalDNSProfile({this.kubeDNSOverrides, this.mode, this.vnetDNSOverrides});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeDNSOverrides':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, LocalDNSOverride>,
            Map<String, Map<String, dynamic>>
          >(
            kubeDNSOverrides,
            (value) =>
                pulumi.Input.encodeMapValues<
                  LocalDNSOverride,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'mode': ?mode,
      'vnetDNSOverrides':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, LocalDNSOverride>,
            Map<String, Map<String, dynamic>>
          >(
            vnetDNSOverrides,
            (value) =>
                pulumi.Input.encodeMapValues<
                  LocalDNSOverride,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory LocalDNSProfile.fromMap(Map<String, dynamic> map) {
    return LocalDNSProfile(
      kubeDNSOverrides: (() {
        final guardedValue = map['kubeDNSOverrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<LocalDNSOverride>(
            guardedValue,
            (value) => LocalDNSOverride.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vnetDNSOverrides: (() {
        final guardedValue = map['vnetDNSOverrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<LocalDNSOverride>(
            guardedValue,
            (value) => LocalDNSOverride.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
