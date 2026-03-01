// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_queues_queue.dart';

/// Result data returned by getServiceQueues.
class GetServiceQueuesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Queue names.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The name of the queue.
  final String? queueName;
  /// A list of Queues. Each element contains the following attributes:
  final List<GetServiceQueuesQueue> queues;

  /// Creates a new [GetServiceQueuesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Queue names.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [queueName] The name of the queue.
  /// [queues] A list of Queues. Each element contains the following attributes:
  GetServiceQueuesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.queueName,
    required this.queues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'queueName': ?queueName,
      'queues': pulumi.Input.encodeList<GetServiceQueuesQueue, Map<String, dynamic>>(queues, (value) => value.toMap()),
    };
  }

  factory GetServiceQueuesResult.fromMap(Map<String, dynamic> map) {
    return GetServiceQueuesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      queueName: map['queueName'] == null ? null : map['queueName'] as String,
      queues: pulumi.Input.decodeList<GetServiceQueuesQueue>(map['queues'], (value) => GetServiceQueuesQueue.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

