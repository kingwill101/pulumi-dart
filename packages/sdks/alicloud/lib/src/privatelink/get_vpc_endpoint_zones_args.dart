// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatelink_get_vpc_endpoint_zones_get_vpc_endpoint_zones_args_doc}
/// Arguments for getVpcEndpointZones.
/// {@endtemplate}
/// {@macro pulumi_privatelink_get_vpc_endpoint_zones_get_vpc_endpoint_zones_args_doc}
class GetVpcEndpointZonesArgs {
  /// The ID of the Vpc Endpoint.
  final pulumi.Input<String> endpointId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The Status of Vpc Endpoint Zone. Valid Values: `Connected`, `Connecting`, `Creating`, `Deleted`, `Deleting`, `Disconnected`, `Disconnecting` and `Wait`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetVpcEndpointZonesArgs].
  /// [endpointId] The ID of the Vpc Endpoint.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The Status of Vpc Endpoint Zone. Valid Values: `Connected`, `Connecting`, `Creating`, `Deleted`, `Deleting`, `Disconnected`, `Disconnecting` and `Wait`.
  GetVpcEndpointZonesArgs({
    required this.endpointId,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': endpointId,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetVpcEndpointZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointZonesArgs(
      endpointId: (map['endpointId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

