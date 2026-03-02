// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_amqp_get_queues_get_queues_args_doc}
/// Arguments for getQueues.
/// {@endtemplate}
/// {@macro pulumi_amqp_get_queues_get_queues_args_doc}
class GetQueuesArgs {
  /// A list of Queue IDs. Its element value is same as Queue Name.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by Queue name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of the virtual host.
  final pulumi.Input<String> virtualHostName;

  /// Creates a new [GetQueuesArgs].
  /// [ids] A list of Queue IDs. Its element value is same as Queue Name.
  /// [instanceId] The ID of the instance.
  /// [nameRegex] A regex string to filter results by Queue name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [virtualHostName] The name of the virtual host.
  GetQueuesArgs({
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
    required this.virtualHostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'virtualHostName': virtualHostName,
    };
  }

  factory GetQueuesArgs.fromMap(Map<String, dynamic> map) {
    return GetQueuesArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      virtualHostName: (map['virtualHostName'] as String).input(),
    );
  }
}

