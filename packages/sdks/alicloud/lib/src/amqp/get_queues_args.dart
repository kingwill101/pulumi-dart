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
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> virtualHostName,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      virtualHostName = pulumi.Input.asInput<String>(virtualHostName);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      virtualHostName: pulumi.Output.create<String>(map['virtualHostName'] as String),
    );
  }
}

