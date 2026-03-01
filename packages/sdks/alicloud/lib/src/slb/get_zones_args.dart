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
    pulumi.Output<String>? availableSlbAddressIpVersion,
    pulumi.Output<String>? availableSlbAddressType,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<String>? masterZoneId,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? slaveZoneId,
  }) :
      availableSlbAddressIpVersion = pulumi.Input.asOptionalInput<String>(availableSlbAddressIpVersion),
      availableSlbAddressType = pulumi.Input.asOptionalInput<String>(availableSlbAddressType),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      masterZoneId = pulumi.Input.asOptionalInput<String>(masterZoneId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      slaveZoneId = pulumi.Input.asOptionalInput<String>(slaveZoneId);

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
      availableSlbAddressIpVersion: map['availableSlbAddressIpVersion'] == null ? null : pulumi.Output.create<String>(map['availableSlbAddressIpVersion'] as String),
      availableSlbAddressType: map['availableSlbAddressType'] == null ? null : pulumi.Output.create<String>(map['availableSlbAddressType'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      masterZoneId: map['masterZoneId'] == null ? null : pulumi.Output.create<String>(map['masterZoneId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      slaveZoneId: map['slaveZoneId'] == null ? null : pulumi.Output.create<String>(map['slaveZoneId'] as String),
    );
  }
}

