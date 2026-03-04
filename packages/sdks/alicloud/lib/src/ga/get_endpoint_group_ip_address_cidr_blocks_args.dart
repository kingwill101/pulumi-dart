// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_endpoint_group_ip_address_cidr_blocks_get_endpoint_group_ip_address_cidr_blocks_args_doc}
/// Arguments for getEndpointGroupIpAddressCidrBlocks.
/// {@endtemplate}
/// {@macro pulumi_ga_get_endpoint_group_ip_address_cidr_blocks_get_endpoint_group_ip_address_cidr_blocks_args_doc}
class GetEndpointGroupIpAddressCidrBlocksArgs {
  /// The ID of the Global Accelerator (GA) instance.
  final pulumi.Input<String>? acceleratorId;

  /// The region ID of the endpoint group.
  final pulumi.Input<String> endpointGroupRegion;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetEndpointGroupIpAddressCidrBlocksArgs].
  /// [acceleratorId] The ID of the Global Accelerator (GA) instance.
  /// [endpointGroupRegion] The region ID of the endpoint group.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetEndpointGroupIpAddressCidrBlocksArgs({
    this.acceleratorId,
    required this.endpointGroupRegion,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'endpointGroupRegion': endpointGroupRegion,
      'outputFile': ?outputFile,
    };
  }

  factory GetEndpointGroupIpAddressCidrBlocksArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetEndpointGroupIpAddressCidrBlocksArgs(
      acceleratorId: (() {
        final guardedValue = map['acceleratorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointGroupRegion: pulumi.Input.fromValue(
        map['endpointGroupRegion'] as String,
      ),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
