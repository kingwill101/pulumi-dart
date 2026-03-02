// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VNet properties for managed integration runtime.
class IntegrationRuntimeVNetProperties {
  /// Resource IDs of the public IP addresses that this integration runtime will use.
  final pulumi.Input<List<String>>? publicIPs;
  /// The name of the subnet this integration runtime will join.
  final pulumi.Input<String>? subnet;
  /// The ID of subnet, to which this Azure-SSIS integration runtime will be joined.
  final pulumi.Input<String>? subnetId;
  /// The ID of the VNet that this integration runtime will join.
  final pulumi.Input<String>? vNetId;

  /// Creates a new [IntegrationRuntimeVNetProperties].
  /// [publicIPs] Resource IDs of the public IP addresses that this integration runtime will use.
  /// [subnet] The name of the subnet this integration runtime will join.
  /// [subnetId] The ID of subnet, to which this Azure-SSIS integration runtime will be joined.
  /// [vNetId] The ID of the VNet that this integration runtime will join.
  IntegrationRuntimeVNetProperties({
    this.publicIPs,
    this.subnet,
    this.subnetId,
    this.vNetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIPs': ?publicIPs,
      'subnet': ?subnet,
      'subnetId': ?subnetId,
      'vNetId': ?vNetId,
    };
  }

  factory IntegrationRuntimeVNetProperties.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeVNetProperties(
      publicIPs: map['publicIPs'] == null ? null : ((map['publicIPs'] as List).cast<String>()).input(),
      subnet: map['subnet'] == null ? null : (map['subnet'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
      vNetId: map['vNetId'] == null ? null : (map['vNetId'] as String).input(),
    );
  }
}

