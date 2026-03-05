// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_cache_disks_disk.dart';

/// Result data returned by getGatewayCacheDisks.
class GetGatewayCacheDisksResult {
  final List<GetGatewayCacheDisksDisk> disks;
  final String gatewayId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final int? status;

  /// Creates a new [GetGatewayCacheDisksResult].
  /// [disks] Required.
  /// [gatewayId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetGatewayCacheDisksResult({
    required this.disks,
    required this.gatewayId,
    required this.id,
    required this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': pulumi.Input.encodeList<GetGatewayCacheDisksDisk, Map<String, dynamic>>(disks, (value) => value.toMap()),
      'gatewayId': gatewayId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetGatewayCacheDisksResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayCacheDisksResult(
      disks: pulumi.Input.decodeList<GetGatewayCacheDisksDisk>(map['disks']!, (value) => GetGatewayCacheDisksDisk.fromMap((value as Map).cast<String, dynamic>())),
      gatewayId: map['gatewayId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

