// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_block_volumes_volume.dart';

/// Result data returned by getGatewayBlockVolumes.
class GetGatewayBlockVolumesResult {
  final String gatewayId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final int? status;
  final List<GetGatewayBlockVolumesVolume> volumes;

  /// Creates a new [GetGatewayBlockVolumesResult].
  /// [gatewayId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [volumes] Required.
  GetGatewayBlockVolumesResult({
    required this.gatewayId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': gatewayId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'volumes': pulumi.Input.encodeList<GetGatewayBlockVolumesVolume, Map<String, dynamic>>(volumes, (value) => value.toMap()),
    };
  }

  factory GetGatewayBlockVolumesResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayBlockVolumesResult(
      gatewayId: map['gatewayId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      status: map['status'] == null ? null : map['status']! as int,
      volumes: pulumi.Input.decodeList<GetGatewayBlockVolumesVolume>(map['volumes'], (value) => GetGatewayBlockVolumesVolume.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

