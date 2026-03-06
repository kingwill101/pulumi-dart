// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_disks_disk.dart';

/// Result data returned by getServerDisks.
class GetServerDisksResult {
  final String? diskType;
  final List<GetServerDisksDisk> disks;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? instanceId;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetServerDisksResult].
  /// [diskType] Optional.
  /// [disks] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  const GetServerDisksResult({
    this.diskType,
    required this.disks,
    required this.id,
    required this.ids,
    this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskType': ?diskType,
      'disks': pulumi.Input.encodeList<GetServerDisksDisk, Map<String, dynamic>>(disks, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'instanceId': ?instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetServerDisksResult.fromMap(Map<String, dynamic> map) {
    return GetServerDisksResult(
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disks: pulumi.Input.decodeList<GetServerDisksDisk>(map['disks']!, (value) => GetServerDisksDisk.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

