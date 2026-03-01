// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'label_response.dart';

/// The properties of a VMware Firewall license
class VmwareFirewallLicensePropertiesResponse {
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
  final List<LabelResponse>? labels;
  /// License key
  final String? licenseKey;
  /// The state of the license provisioning
  final String provisioningState;

  /// Creates a new [VmwareFirewallLicensePropertiesResponse].
  /// [broadcomContractNumber] The Broadcom contract number associated with the license.
  /// [broadcomSiteId] The Broadcom site ID associated with the license.
  /// [cores] Number of cores included in the license, measured per hour
  /// [endDate] UTC datetime when the license expires
  /// [kind] The kind of license.
  /// [labels] Additional labels passed through for license reporting.
  /// [licenseKey] License key
  /// [provisioningState] The state of the license provisioning
  VmwareFirewallLicensePropertiesResponse({
    this.broadcomContractNumber,
    this.broadcomSiteId,
    required this.cores,
    required this.endDate,
    required this.kind,
    this.labels,
    this.licenseKey,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'broadcomContractNumber': ?broadcomContractNumber,
      'broadcomSiteId': ?broadcomSiteId,
      'cores': cores,
      'endDate': endDate,
      'kind': kind,
      'labels': ?labels == null ? null : pulumi.Input.encodeList<LabelResponse, Map<String, dynamic>>(labels!, (value) => value.toMap()),
      'licenseKey': ?licenseKey,
      'provisioningState': provisioningState,
    };
  }

  factory VmwareFirewallLicensePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VmwareFirewallLicensePropertiesResponse(
      broadcomContractNumber: map['broadcomContractNumber'] == null ? null : map['broadcomContractNumber'] as String,
      broadcomSiteId: map['broadcomSiteId'] == null ? null : map['broadcomSiteId'] as String,
      cores: map['cores'] as int,
      endDate: map['endDate'] as String,
      kind: map['kind'] as String,
      labels: map['labels'] == null ? null : pulumi.Input.decodeList<LabelResponse>(map['labels'], (value) => LabelResponse.fromMap((value as Map).cast<String, dynamic>())),
      licenseKey: map['licenseKey'] == null ? null : map['licenseKey'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

