// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_dnsoverride.dart';

/// Configures the per-node local DNS, with VnetDNS and KubeDNS overrides. LocalDNS helps improve performance and reliability of DNS resolution in an AKS cluster. For more details see aka.ms/aks/localdns.
class LocalDNSProfile {
  /// KubeDNS overrides apply to DNS traffic from pods with dnsPolicy:ClusterFirst (referred to as KubeDNS traffic).
  final Map<String, LocalDNSOverride>? kubeDNSOverrides;
  /// Mode of enablement for localDNS.
  final String? mode;
  /// VnetDNS overrides apply to DNS traffic from pods with dnsPolicy:default or kubelet (referred to as VnetDNS traffic).
  final Map<String, LocalDNSOverride>? vnetDNSOverrides;

  /// Creates a new [LocalDNSProfile].
  /// [kubeDNSOverrides] KubeDNS overrides apply to DNS traffic from pods with dnsPolicy:ClusterFirst (referred to as KubeDNS traffic).
  /// [mode] Mode of enablement for localDNS.
  /// [vnetDNSOverrides] VnetDNS overrides apply to DNS traffic from pods with dnsPolicy:default or kubelet (referred to as VnetDNS traffic).
  LocalDNSProfile({
    this.kubeDNSOverrides,
    this.mode,
    this.vnetDNSOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeDNSOverrides': ?kubeDNSOverrides == null ? null : pulumi.Input.encodeMapValues<LocalDNSOverride, Map<String, dynamic>>(kubeDNSOverrides!, (value) => value.toMap()),
      'mode': ?mode,
      'vnetDNSOverrides': ?vnetDNSOverrides == null ? null : pulumi.Input.encodeMapValues<LocalDNSOverride, Map<String, dynamic>>(vnetDNSOverrides!, (value) => value.toMap()),
    };
  }

  factory LocalDNSProfile.fromMap(Map<String, dynamic> map) {
    return LocalDNSProfile(
      kubeDNSOverrides: map['kubeDNSOverrides'] == null ? null : pulumi.Input.decodeMapValues<LocalDNSOverride>(map['kubeDNSOverrides'], (value) => LocalDNSOverride.fromMap((value as Map).cast<String, dynamic>())),
      mode: map['mode'] == null ? null : map['mode'] as String,
      vnetDNSOverrides: map['vnetDNSOverrides'] == null ? null : pulumi.Input.decodeMapValues<LocalDNSOverride>(map['vnetDNSOverrides'], (value) => LocalDNSOverride.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

