// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_remote_writes_remote_write.dart';

/// Result data returned by getRemoteWrites.
class GetRemoteWritesResult {
  /// The ID of the Prometheus instance.
  final String clusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Remote Write names.
  final List<String> names;
  final String? outputFile;
  /// A list of Remote Writes. Each element contains the following attributes:
  final List<GetRemoteWritesRemoteWrite> remoteWrites;

  /// Creates a new [GetRemoteWritesResult].
  /// [clusterId] The ID of the Prometheus instance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Remote Write names.
  /// [outputFile] Optional.
  /// [remoteWrites] A list of Remote Writes. Each element contains the following attributes:
  GetRemoteWritesResult({
    required this.clusterId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.remoteWrites,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'remoteWrites': pulumi.Input.encodeList<GetRemoteWritesRemoteWrite, Map<String, dynamic>>(remoteWrites, (value) => value.toMap()),
    };
  }

  factory GetRemoteWritesResult.fromMap(Map<String, dynamic> map) {
    return GetRemoteWritesResult(
      clusterId: map['clusterId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      remoteWrites: pulumi.Input.decodeList<GetRemoteWritesRemoteWrite>(map['remoteWrites'], (value) => GetRemoteWritesRemoteWrite.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

