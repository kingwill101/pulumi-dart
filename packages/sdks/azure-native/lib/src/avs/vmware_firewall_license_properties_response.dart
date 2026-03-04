// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'label_response.dart';

/// The properties of a VMware Firewall license
class VmwareFirewallLicensePropertiesResponse {
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
  final pulumi.Input<List<LabelResponse>>? labels;

  /// License key
  final pulumi.Input<String>? licenseKey;

  /// The state of the license provisioning
  final pulumi.Input<String> provisioningState;

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
      'labels':
          ?pulumi.Input.mapOptionalInputValue<
            List<LabelResponse>,
            List<Map<String, dynamic>>
          >(
            labels,
            (value) =>
                pulumi.Input.encodeList<LabelResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'licenseKey': ?licenseKey,
      'provisioningState': provisioningState,
    };
  }

  factory VmwareFirewallLicensePropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VmwareFirewallLicensePropertiesResponse(
      broadcomContractNumber: (() {
        final guardedValue = map['broadcomContractNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      broadcomSiteId: (() {
        final guardedValue = map['broadcomSiteId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cores: pulumi.Input.fromValue(map['cores'] as int),
      endDate: pulumi.Input.fromValue(map['endDate'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LabelResponse>(
            guardedValue,
            (value) =>
                LabelResponse.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      licenseKey: (() {
        final guardedValue = map['licenseKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
    );
  }
}
