// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queues_queue.dart';

/// Result data returned by getQueues.
class GetQueuesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetQueuesQueue> queues;
  final String virtualHostName;

  /// Creates a new [GetQueuesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [queues] Required.
  /// [virtualHostName] Required.
  GetQueuesResult({
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.queues,
    required this.virtualHostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'queues': pulumi.Input.encodeList<GetQueuesQueue, Map<String, dynamic>>(queues, (value) => value.toMap()),
      'virtualHostName': virtualHostName,
    };
  }

  factory GetQueuesResult.fromMap(Map<String, dynamic> map) {
    return GetQueuesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queues: pulumi.Input.decodeList<GetQueuesQueue>(map['queues']!, (value) => GetQueuesQueue.fromMap((value as Map).cast<String, dynamic>())),
      virtualHostName: map['virtualHostName'] as String,
    );
  }
}

