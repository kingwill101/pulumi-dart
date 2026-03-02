// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudstoragegateway_get_gateway_cache_disks_get_gateway_cache_disks_args_doc}
/// Arguments for getGatewayCacheDisks.
/// {@endtemplate}
/// {@macro pulumi_cloudstoragegateway_get_gateway_cache_disks_get_gateway_cache_disks_args_doc}
class GetGatewayCacheDisksArgs {
  /// The ID of the gateway.
  final pulumi.Input<String> gatewayId;
  /// A list of Gateway Cache Disk IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid values: `0`, `1`, `2`. `0`: Normal. `1`: Is about to expire. `2`: Has expired.
  final pulumi.Input<int>? status;

  /// Creates a new [GetGatewayCacheDisksArgs].
  /// [gatewayId] The ID of the gateway.
  /// [ids] A list of Gateway Cache Disk IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values: `0`, `1`, `2`. `0`: Normal. `1`: Is about to expire. `2`: Has expired.
  GetGatewayCacheDisksArgs({
    required this.gatewayId,
    this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': gatewayId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetGatewayCacheDisksArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayCacheDisksArgs(
      gatewayId: (map['gatewayId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as int).input(),
    );
  }
}

