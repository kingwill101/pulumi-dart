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
    pulumi.Output<bool>? autoDeleteState,
    pulumi.Output<String>? autoExpireState,
    pulumi.Output<String>? deadLetterExchange,
    pulumi.Output<String>? deadLetterRoutingKey,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? maxLength,
    pulumi.Output<int>? maximumPriority,
    pulumi.Output<String>? messageTtl,
    required pulumi.Output<String> queueName,
    required pulumi.Output<String> virtualHostName,
  }) :
      autoDeleteState = pulumi.Input.asOptionalInput<bool>(autoDeleteState),
      autoExpireState = pulumi.Input.asOptionalInput<String>(autoExpireState),
      deadLetterExchange = pulumi.Input.asOptionalInput<String>(deadLetterExchange),
      deadLetterRoutingKey = pulumi.Input.asOptionalInput<String>(deadLetterRoutingKey),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      maxLength = pulumi.Input.asOptionalInput<String>(maxLength),
      maximumPriority = pulumi.Input.asOptionalInput<int>(maximumPriority),
      messageTtl = pulumi.Input.asOptionalInput<String>(messageTtl),
      queueName = pulumi.Input.asInput<String>(queueName),
      virtualHostName = pulumi.Input.asInput<String>(virtualHostName);

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
      autoDeleteState: map['autoDeleteState'] == null ? null : pulumi.Output.create<bool>(map['autoDeleteState'] as bool),
      autoExpireState: map['autoExpireState'] == null ? null : pulumi.Output.create<String>(map['autoExpireState'] as String),
      deadLetterExchange: map['deadLetterExchange'] == null ? null : pulumi.Output.create<String>(map['deadLetterExchange'] as String),
      deadLetterRoutingKey: map['deadLetterRoutingKey'] == null ? null : pulumi.Output.create<String>(map['deadLetterRoutingKey'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      maxLength: map['maxLength'] == null ? null : pulumi.Output.create<String>(map['maxLength'] as String),
      maximumPriority: map['maximumPriority'] == null ? null : pulumi.Output.create<int>(map['maximumPriority'] as int),
      messageTtl: map['messageTtl'] == null ? null : pulumi.Output.create<String>(map['messageTtl'] as String),
      queueName: pulumi.Output.create<String>(map['queueName'] as String),
      virtualHostName: pulumi.Output.create<String>(map['virtualHostName'] as String),
    );
  }
}

