// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_amqp_queue_queue_args_doc}
/// The set of arguments for Queue.
/// {@endtemplate}
/// {@macro pulumi_amqp_queue_queue_args_doc}
class QueueArgs {
  /// Specifies whether to automatically delete the queue. Valid values:
  final pulumi.Input<bool>? autoDeleteState;
  /// The auto-expiration time for the queue.
  final pulumi.Input<String>? autoExpireState;
  /// The dead-letter exchange.
  final pulumi.Input<String>? deadLetterExchange;
  /// The dead-letter routing key.
  final pulumi.Input<String>? deadLetterRoutingKey;
  /// The ID of the ApsaraMQ for RabbitMQ instance to which the queue belongs.
  final pulumi.Input<String> instanceId;
  /// The maximum number of messages that can be stored in the queue.
  final pulumi.Input<String>? maxLength;
  /// The priority of the queue.
  final pulumi.Input<int>? maximumPriority;
  /// The time to live (TTL) of a message in the queue.
  final pulumi.Input<String>? messageTtl;
  /// The name of the queue to create.
  final pulumi.Input<String> queueName;
  /// The name of the vhost to which the queue belongs. The name can contain only letters, digits, hyphens (-), underscores (_), periods (.), number signs (#), forward slashes (/), and at signs (@). The name must be 1 to 255 characters in length.
  final pulumi.Input<String> virtualHostName;

  /// Creates a new [QueueArgs].
  /// [autoDeleteState] Specifies whether to automatically delete the queue. Valid values:
  /// [autoExpireState] The auto-expiration time for the queue.
  /// [deadLetterExchange] The dead-letter exchange.
  /// [deadLetterRoutingKey] The dead-letter routing key.
  /// [instanceId] The ID of the ApsaraMQ for RabbitMQ instance to which the queue belongs.
  /// [maxLength] The maximum number of messages that can be stored in the queue.
  /// [maximumPriority] The priority of the queue.
  /// [messageTtl] The time to live (TTL) of a message in the queue.
  /// [queueName] The name of the queue to create.
  /// [virtualHostName] The name of the vhost to which the queue belongs. The name can contain only letters, digits, hyphens (-), underscores (_), periods (.), number signs (#), forward slashes (/), and at signs (@). The name must be 1 to 255 characters in length.
  QueueArgs({
    this.autoDeleteState,
    this.autoExpireState,
    this.deadLetterExchange,
    this.deadLetterRoutingKey,
    required this.instanceId,
    this.maxLength,
    this.maximumPriority,
    this.messageTtl,
    required this.queueName,
    required this.virtualHostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteState': ?autoDeleteState,
      'autoExpireState': ?autoExpireState,
      'deadLetterExchange': ?deadLetterExchange,
      'deadLetterRoutingKey': ?deadLetterRoutingKey,
      'instanceId': instanceId,
      'maxLength': ?maxLength,
      'maximumPriority': ?maximumPriority,
      'messageTtl': ?messageTtl,
      'queueName': queueName,
      'virtualHostName': virtualHostName,
    };
  }

  factory QueueArgs.fromMap(Map<String, dynamic> map) {
    return QueueArgs(
      autoDeleteState: map['autoDeleteState'] == null ? null : (map['autoDeleteState']! as bool).input(),
      autoExpireState: map['autoExpireState'] == null ? null : (map['autoExpireState']! as String).input(),
      deadLetterExchange: map['deadLetterExchange'] == null ? null : (map['deadLetterExchange']! as String).input(),
      deadLetterRoutingKey: map['deadLetterRoutingKey'] == null ? null : (map['deadLetterRoutingKey']! as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      maxLength: map['maxLength'] == null ? null : (map['maxLength']! as String).input(),
      maximumPriority: map['maximumPriority'] == null ? null : (map['maximumPriority']! as int).input(),
      messageTtl: map['messageTtl'] == null ? null : (map['messageTtl']! as String).input(),
      queueName: (map['queueName'] as String).input(),
      virtualHostName: (map['virtualHostName'] as String).input(),
    );
  }
}

