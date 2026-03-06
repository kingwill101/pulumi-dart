// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queues_queue.dart';

/// Result data returned by getQueues.
class GetQueuesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? namePrefix;
  /// A list of queue names.
  final List<String> names;
  final String? outputFile;
  /// A list of queues. Each element contains the following attributes:
  final List<GetQueuesQueue> queues;

  /// Creates a new [GetQueuesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [namePrefix] Optional.
  /// [names] A list of queue names.
  /// [outputFile] Optional.
  /// [queues] A list of queues. Each element contains the following attributes:
  const GetQueuesResult({
    required this.id,
    this.namePrefix,
    required this.names,
    this.outputFile,
    required this.queues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'namePrefix': ?namePrefix,
      'names': names,
      'outputFile': ?outputFile,
      'queues': pulumi.Input.encodeList<GetQueuesQueue, Map<String, dynamic>>(queues, (value) => value.toMap()),
    };
  }

  factory GetQueuesResult.fromMap(Map<String, dynamic> map) {
    return GetQueuesResult(
      id: map['id'] as String,
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queues: pulumi.Input.decodeList<GetQueuesQueue>(map['queues']!, (value) => GetQueuesQueue.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

