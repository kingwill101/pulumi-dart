// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Binding resources.
class BindingState {
  /// The key-value pairs that are configured for the headers attributes of a message. Default value: `x-match:all`. Valid values:
  /// - `x-match:all`: A headers exchange routes a message to a queue only if all binding attributes of the queue except for x-match match the headers attributes of the message.
  /// - `x-match:any`: A headers exchange routes a message to a queue if one or more binding attributes of the queue except for x-match match the headers attributes of the message.
  /// - &gt; **NOTE:** If the exchange type is not 'HEADERS', the `argument` should not been set, otherwise, there are always "forces replacement" changes.
  final pulumi.Input<String>? argument;
  /// The Binding Key.
  /// * For a non-topic source exchange: The binding key can contain only letters, digits, hyphens (-), underscores (_), periods (.), and at signs (@).
  /// The binding key must be 1 to 255 characters in length.
  /// * For a topic source exchange: The binding key can contain letters, digits, hyphens (-), underscores (_), periods (.), and at signs (@).
  /// If the binding key contains a number sign (#), the binding key must start with a number sign (#) followed by a period (.) or end with a number sign (#) that follows a period (.).
  /// The binding key must be 1 to 255 characters in length.
  final pulumi.Input<String>? bindingKey;
  /// The type of the object that you want to bind to the source exchange. Valid values: `EXCHANGE`, `QUEUE`.
  final pulumi.Input<String>? bindingType;
  /// The name of the object that you want to bind to the source exchange.
  final pulumi.Input<String>? destinationName;
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// The name of the source exchange.
  final pulumi.Input<String>? sourceExchange;
  /// The name of the vhost.
  final pulumi.Input<String>? virtualHostName;

  /// Creates a new [BindingState].
  /// [argument] The key-value pairs that are configured for the headers attributes of a message. Default value: `x-match:all`. Valid values:
  /// [bindingKey] The Binding Key.
  /// [bindingType] The type of the object that you want to bind to the source exchange. Valid values: `EXCHANGE`, `QUEUE`.
  /// [destinationName] The name of the object that you want to bind to the source exchange.
  /// [instanceId] The ID of the instance.
  /// [sourceExchange] The name of the source exchange.
  /// [virtualHostName] The name of the vhost.
  BindingState({
    this.argument,
    this.bindingKey,
    this.bindingType,
    this.destinationName,
    this.instanceId,
    this.sourceExchange,
    this.virtualHostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argument': ?argument,
      'bindingKey': ?bindingKey,
      'bindingType': ?bindingType,
      'destinationName': ?destinationName,
      'instanceId': ?instanceId,
      'sourceExchange': ?sourceExchange,
      'virtualHostName': ?virtualHostName,
    };
  }

  factory BindingState.fromMap(Map<String, dynamic> map) {
    return BindingState(
      argument: (() { final guardedValue = map['argument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bindingKey: (() { final guardedValue = map['bindingKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bindingType: (() { final guardedValue = map['bindingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationName: (() { final guardedValue = map['destinationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceExchange: (() { final guardedValue = map['sourceExchange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualHostName: (() { final guardedValue = map['virtualHostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

