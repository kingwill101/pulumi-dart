// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_get_zones_get_zones_args_doc}
/// Arguments for getZones.
/// {@endtemplate}
/// {@macro pulumi_slb_get_zones_get_zones_args_doc}
class GetZonesArgs {
  /// Filter the results by a slb instance address version. Can be either `ipv4`, or `ipv6`.
  final pulumi.Input<String>? availableSlbAddressIpVersion;
  /// Filter the results by a slb instance network type. Valid values:
  /// * vpc: an internal SLB instance that is deployed in a virtual private cloud (VPC).
  /// * classic_internet: a public-facing SLB instance.
  /// * classic_intranet: an internal SLB instance that is deployed in a classic network.
  final pulumi.Input<String>? availableSlbAddressType;
  /// Default to false and only output `id` in the `zones` block. Set it to true can output more details.
  final pulumi.Input<bool>? enableDetails;
  /// The primary zone.
  final pulumi.Input<String>? masterZoneId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The secondary zone.
  final pulumi.Input<String>? slaveZoneId;

  /// Creates a new [GetZonesArgs].
  /// [availableSlbAddressIpVersion] Filter the results by a slb instance address version. Can be either `ipv4`, or `ipv6`.
  /// [availableSlbAddressType] Filter the results by a slb instance network type. Valid values:
  /// [enableDetails] Default to false and only output `id` in the `zones` block. Set it to true can output more details.
  /// [masterZoneId] The primary zone.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [slaveZoneId] The secondary zone.
  GetZonesArgs({
    this.availableSlbAddressIpVersion,
    this.availableSlbAddressType,
    this.enableDetails,
    this.masterZoneId,
    this.outputFile,
    this.slaveZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableSlbAddressIpVersion': ?availableSlbAddressIpVersion,
      'availableSlbAddressType': ?availableSlbAddressType,
      'enableDetails': ?enableDetails,
      'masterZoneId': ?masterZoneId,
      'outputFile': ?outputFile,
      'slaveZoneId': ?slaveZoneId,
    };
  }

  factory GetZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetZonesArgs(
      availableSlbAddressIpVersion: (() { final guardedValue = map['availableSlbAddressIpVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availableSlbAddressType: (() { final guardedValue = map['availableSlbAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      masterZoneId: (() { final guardedValue = map['masterZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slaveZoneId: (() { final guardedValue = map['slaveZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

