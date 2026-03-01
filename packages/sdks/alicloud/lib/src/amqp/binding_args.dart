// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_amqp_binding_binding_args_doc}
/// The set of arguments for Binding.
/// {@endtemplate}
/// {@macro pulumi_amqp_binding_binding_args_doc}
class BindingArgs {
  /// The key-value pairs that are configured for the headers attributes of a message. Default value: `x-match:all`. Valid values:
  /// - `x-match:all`: A headers exchange routes a message to a queue only if all binding attributes of the queue except for x-match match the headers attributes of the message.
  /// - `x-match:any`: A headers exchange routes a message to a queue if one or more binding attributes of the queue except for x-match match the headers attributes of the message.
  /// - > **NOTE:** If the exchange type is not 'HEADERS', the `argument` should not been set, otherwise, there are always "forces replacement" changes.
  final pulumi.Input<String>? argument;
  /// The Binding Key.
  /// * For a non-topic source exchange: The binding key can contain only letters, digits, hyphens (-), underscores (_), periods (.), and at signs (@).
  /// The binding key must be 1 to 255 characters in length.
  /// * For a topic source exchange: The binding key can contain letters, digits, hyphens (-), underscores (_), periods (.), and at signs (@).
  /// If the binding key contains a number sign (#), the binding key must start with a number sign (#) followed by a period (.) or end with a number sign (#) that follows a period (.).
  /// The binding key must be 1 to 255 characters in length.
  final pulumi.Input<String> bindingKey;
  /// The type of the object that you want to bind to the source exchange. Valid values: `EXCHANGE`, `QUEUE`.
  final pulumi.Input<String> bindingType;
  /// The name of the object that you want to bind to the source exchange.
  final pulumi.Input<String> destinationName;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// The name of the source exchange.
  final pulumi.Input<String> sourceExchange;
  /// The name of the vhost.
  final pulumi.Input<String> virtualHostName;

  /// Creates a new [BindingArgs].
  /// [argument] The key-value pairs that are configured for the headers attributes of a message. Default value: `x-match:all`. Valid values:
  /// [bindingKey] The Binding Key.
  /// [bindingType] The type of the object that you want to bind to the source exchange. Valid values: `EXCHANGE`, `QUEUE`.
  /// [destinationName] The name of the object that you want to bind to the source exchange.
  /// [instanceId] The ID of the instance.
  /// [sourceExchange] The name of the source exchange.
  /// [virtualHostName] The name of the vhost.
  BindingArgs({
    pulumi.Output<String>? argument,
    required pulumi.Output<String> bindingKey,
    required pulumi.Output<String> bindingType,
    required pulumi.Output<String> destinationName,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> sourceExchange,
    required pulumi.Output<String> virtualHostName,
  }) :
      argument = pulumi.Input.asOptionalInput<String>(argument),
      bindingKey = pulumi.Input.asInput<String>(bindingKey),
      bindingType = pulumi.Input.asInput<String>(bindingType),
      destinationName = pulumi.Input.asInput<String>(destinationName),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      sourceExchange = pulumi.Input.asInput<String>(sourceExchange),
      virtualHostName = pulumi.Input.asInput<String>(virtualHostName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argument': ?argument,
      'bindingKey': bindingKey,
      'bindingType': bindingType,
      'destinationName': destinationName,
      'instanceId': instanceId,
      'sourceExchange': sourceExchange,
      'virtualHostName': virtualHostName,
    };
  }

  factory BindingArgs.fromMap(Map<String, dynamic> map) {
    return BindingArgs(
      argument: map['argument'] == null ? null : pulumi.Output.create<String>(map['argument'] as String),
      bindingKey: pulumi.Output.create<String>(map['bindingKey'] as String),
      bindingType: pulumi.Output.create<String>(map['bindingType'] as String),
      destinationName: pulumi.Output.create<String>(map['destinationName'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      sourceExchange: pulumi.Output.create<String>(map['sourceExchange'] as String),
      virtualHostName: pulumi.Output.create<String>(map['virtualHostName'] as String),
    );
  }
}

