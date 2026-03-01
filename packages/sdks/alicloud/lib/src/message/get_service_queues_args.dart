// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_message_get_service_queues_get_service_queues_args_doc}
/// Arguments for getServiceQueues.
/// {@endtemplate}
/// {@macro pulumi_message_get_service_queues_get_service_queues_args_doc}
class GetServiceQueuesArgs {
  /// A list of Queue IDs. Its element value is same as Queue Name.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Queue name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The name of the queue.
  final pulumi.Input<String>? queueName;

  /// Creates a new [GetServiceQueuesArgs].
  /// [ids] A list of Queue IDs. Its element value is same as Queue Name.
  /// [nameRegex] A regex string to filter results by Queue name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [queueName] The name of the queue.
  GetServiceQueuesArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? queueName,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      queueName = pulumi.Input.asOptionalInput<String>(queueName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'queueName': ?queueName,
    };
  }

  factory GetServiceQueuesArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceQueuesArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      queueName: map['queueName'] == null ? null : pulumi.Output.create<String>(map['queueName'] as String),
    );
  }
}

