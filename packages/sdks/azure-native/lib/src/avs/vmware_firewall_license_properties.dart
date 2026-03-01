// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'label.dart';

/// The properties of a VMware Firewall license
class VmwareFirewallLicenseProperties {
  /// The Broadcom contract number associated with the license.
  final String? broadcomContractNumber;
  /// The Broadcom site ID associated with the license.
  final String? broadcomSiteId;
  /// Number of cores included in the license, measured per hour
  final int cores;
  /// UTC datetime when the license expires
  final String endDate;
  /// The kind of license.
  /// Expected value is 'VmwareFirewall'.
  final String kind;
  /// Additional labels passed through for license reporting.
  final List<Label>? labels;
  /// License key
  final String? licenseKey;

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
      'labels': ?labels == null ? null : pulumi.Input.encodeList<Label, Map<String, dynamic>>(labels!, (value) => value.toMap()),
      'licenseKey': ?licenseKey,
    };
  }

  factory VmwareFirewallLicenseProperties.fromMap(Map<String, dynamic> map) {
    return VmwareFirewallLicenseProperties(
      broadcomContractNumber: map['broadcomContractNumber'] == null ? null : map['broadcomContractNumber'] as String,
      broadcomSiteId: map['broadcomSiteId'] == null ? null : map['broadcomSiteId'] as String,
      cores: map['cores'] as int,
      endDate: map['endDate'] as String,
      kind: map['kind'] as String,
      labels: map['labels'] == null ? null : pulumi.Input.decodeList<Label>(map['labels'], (value) => Label.fromMap((value as Map).cast<String, dynamic>())),
      licenseKey: map['licenseKey'] == null ? null : map['licenseKey'] as String,
    );
  }
}

