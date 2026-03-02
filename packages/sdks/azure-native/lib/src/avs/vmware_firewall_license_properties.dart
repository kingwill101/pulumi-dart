// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'label.dart';

/// The properties of a VMware Firewall license
class VmwareFirewallLicenseProperties {
  /// The Broadcom contract number associated with the license.
  final pulumi.Input<String>? broadcomContractNumber;
  /// The Broadcom site ID associated with the license.
  final pulumi.Input<String>? broadcomSiteId;
  /// Number of cores included in the license, measured per hour
  final pulumi.Input<int> cores;
  /// UTC datetime when the license expires
  final pulumi.Input<String> endDate;
  /// The kind of license.
  /// Expected value is 'VmwareFirewall'.
  final pulumi.Input<String> kind;
  /// Additional labels passed through for license reporting.
  final pulumi.Input<List<Label>>? labels;
  /// License key
  final pulumi.Input<String>? licenseKey;

  /// Creates a new [VmwareFirewallLicenseProperties].
  /// [broadcomContractNumber] The Broadcom contract number associated with the license.
  /// [broadcomSiteId] The Broadcom site ID associated with the license.
  /// [cores] Number of cores included in the license, measured per hour
  /// [endDate] UTC datetime when the license expires
  /// [kind] The kind of license.
  /// [labels] Additional labels passed through for license reporting.
  /// [licenseKey] License key
  VmwareFirewallLicenseProperties({
    this.broadcomContractNumber,
    this.broadcomSiteId,
    required this.cores,
    required this.endDate,
    required this.kind,
    this.labels,
    this.licenseKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'broadcomContractNumber': ?broadcomContractNumber,
      'broadcomSiteId': ?broadcomSiteId,
      'cores': cores,
      'endDate': endDate,
      'kind': kind,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<Label>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<Label, Map<String, dynamic>>(value, (value) => value.toMap())),
      'licenseKey': ?licenseKey,
    };
  }

  factory VmwareFirewallLicenseProperties.fromMap(Map<String, dynamic> map) {
    return VmwareFirewallLicenseProperties(
      broadcomContractNumber: map['broadcomContractNumber'] == null ? null : (map['broadcomContractNumber'] as String).input(),
      broadcomSiteId: map['broadcomSiteId'] == null ? null : (map['broadcomSiteId'] as String).input(),
      cores: (map['cores'] as int).input(),
      endDate: (map['endDate'] as String).input(),
      kind: (map['kind'] as String).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<Label>(map['labels'], (value) => Label.fromMap((value as Map).cast<String, dynamic>()))).input(),
      licenseKey: map['licenseKey'] == null ? null : (map['licenseKey'] as String).input(),
    );
  }
}

