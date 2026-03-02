// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_dnsoverride_response.dart';

/// Configures the per-node local DNS, with VnetDNS and KubeDNS overrides. LocalDNS helps improve performance and reliability of DNS resolution in an AKS cluster. For more details see aka.ms/aks/localdns.
class LocalDNSProfileResponse {
  /// KubeDNS overrides apply to DNS traffic from pods with dnsPolicy:ClusterFirst (referred to as KubeDNS traffic).
  final pulumi.Input<Map<String, LocalDNSOverrideResponse>>? kubeDNSOverrides;
  /// Mode of enablement for localDNS.
  final pulumi.Input<String>? mode;
  /// System-generated state of localDNS.
  final pulumi.Input<String> state;
  /// VnetDNS overrides apply to DNS traffic from pods with dnsPolicy:default or kubelet (referred to as VnetDNS traffic).
  final pulumi.Input<Map<String, LocalDNSOverrideResponse>>? vnetDNSOverrides;

  /// Creates a new [LocalDNSProfileResponse].
  /// [kubeDNSOverrides] KubeDNS overrides apply to DNS traffic from pods with dnsPolicy:ClusterFirst (referred to as KubeDNS traffic).
  /// [mode] Mode of enablement for localDNS.
  /// [state] System-generated state of localDNS.
  /// [vnetDNSOverrides] VnetDNS overrides apply to DNS traffic from pods with dnsPolicy:default or kubelet (referred to as VnetDNS traffic).
  LocalDNSProfileResponse({
    this.kubeDNSOverrides,
    this.mode,
    required this.state,
    this.vnetDNSOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeDNSOverrides': ?pulumi.Input.mapOptionalInputValue<Map<String, LocalDNSOverrideResponse>, Map<String, Map<String, dynamic>>>(kubeDNSOverrides, (value) => pulumi.Input.encodeMapValues<LocalDNSOverrideResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': ?mode,
      'state': state,
      'vnetDNSOverrides': ?pulumi.Input.mapOptionalInputValue<Map<String, LocalDNSOverrideResponse>, Map<String, Map<String, dynamic>>>(vnetDNSOverrides, (value) => pulumi.Input.encodeMapValues<LocalDNSOverrideResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LocalDNSProfileResponse.fromMap(Map<String, dynamic> map) {
    return LocalDNSProfileResponse(
      kubeDNSOverrides: map['kubeDNSOverrides'] == null ? null : (pulumi.Input.decodeMapValues<LocalDNSOverrideResponse>(map['kubeDNSOverrides'], (value) => LocalDNSOverrideResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      state: (map['state'] as String).input(),
      vnetDNSOverrides: map['vnetDNSOverrides'] == null ? null : (pulumi.Input.decodeMapValues<LocalDNSOverrideResponse>(map['vnetDNSOverrides'], (value) => LocalDNSOverrideResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

