// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Exchange resources.
class ExchangeState {
  /// The alternate exchange. An alternate exchange is used to receive messages that fail to be routed to queues from the current exchange.
  final pulumi.Input<String>? alternateExchange;
  /// Specifies whether to automatically delete the exchange. Valid values:
  final pulumi.Input<bool>? autoDeleteState;
  /// CreateTime
  final pulumi.Input<int>? createTime;
  /// The name of the exchange that you want to create. The exchange name must meet the following conventions:
  ///
  /// - The name must be 1 to 255 characters in length, and can contain only letters, digits, hyphens (-), underscores (\_), periods (.), number signs (#), forward slashes (/), and at signs (@).
  /// - After the exchange is created, you cannot change its name. If you want to change its name, delete the exchange and create another exchange.
  final pulumi.Input<String>? exchangeName;
  /// The Exchange type. Value:
  /// - `DIRECT`: This type of Routing rule routes messages to a Queue whose Binding Key matches the Routing Key.
  /// - `TOPIC`: This type is similar to the DIRECT type. It uses Routing Key pattern matching and string comparison to route messages to the bound Queue.
  /// - `FANOUT`: This type of routing rule is very simple. It routes all messages sent to the Exchange to all queues bound to it, which is equivalent to the broadcast function.
  /// - `HEADERS`: This type is similar to the DIRECT type. Headers Exchange uses the Headers attribute instead of Routing Key for route matching. When binding Headers Exchange and Queue, the Key-value pair of the bound attribute is set. When sending a message to Headers Exchange, the Headers attribute Key-value pair of the message is set, and the message is routed to the bound Queue by comparing the Headers attribute Key-value pair with the bound attribute Key-value pair.
  /// - `X_delayed_message`: By declaring this type of Exchange, you can customize the Header attribute x-delay of the message to specify the delivery delay time period, in milliseconds. Messages will be delivered to the corresponding Queue after the time period defined in the x-delay according to the routing rules. The routing rule depends on the Exchange route type specified in the x-delayed-type.
  /// - `X_CONSISTENT_HASH`: The x-consistent-hash Exchange allows you to Hash the Routing Key or Header value and use the consistent hashing algorithm to route messages to different queues.
  final pulumi.Input<String>? exchangeType;
  /// The ID of the ApsaraMQ for RabbitMQ instance whose exchange you want to delete.
  final pulumi.Input<String>? instanceId;
  /// Specifies whether the exchange is an internal exchange. Valid values:
  final pulumi.Input<bool>? internal;
  /// The name of the vhost to which the exchange that you want to create belongs.
  final pulumi.Input<String>? virtualHostName;
  /// RabbitMQ supports the x-delayed-message Exchange. By declaring this type of Exchange, you can customize the x-delay header attribute to specify the delay period for message delivery, measured in milliseconds. The message will be delivered to the corresponding Queue after the period defined in x-delay. The routing rules are determined by the type of Exchange specified in x-delayed-type.
  final pulumi.Input<String>? xDelayedType;

  /// Creates a new [ExchangeState].
  /// [alternateExchange] The alternate exchange. An alternate exchange is used to receive messages that fail to be routed to queues from the current exchange.
  /// [autoDeleteState] Specifies whether to automatically delete the exchange. Valid values:
  /// [createTime] CreateTime
  /// [exchangeName] The name of the exchange that you want to create. The exchange name must meet the following conventions:
  /// [exchangeType] The Exchange type. Value:
  /// [instanceId] The ID of the ApsaraMQ for RabbitMQ instance whose exchange you want to delete.
  /// [internal] Specifies whether the exchange is an internal exchange. Valid values:
  /// [virtualHostName] The name of the vhost to which the exchange that you want to create belongs.
  /// [xDelayedType] RabbitMQ supports the x-delayed-message Exchange. By declaring this type of Exchange, you can customize the x-delay header attribute to specify the delay period for message delivery, measured in milliseconds. The message will be delivered to the corresponding Queue after the period defined in x-delay. The routing rules are determined by the type of Exchange specified in x-delayed-type.
  ExchangeState({
    pulumi.Output<String>? alternateExchange,
    pulumi.Output<bool>? autoDeleteState,
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? exchangeName,
    pulumi.Output<String>? exchangeType,
    pulumi.Output<String>? instanceId,
    pulumi.Output<bool>? internal,
    pulumi.Output<String>? virtualHostName,
    pulumi.Output<String>? xDelayedType,
  }) :
      alternateExchange = pulumi.Input.asOptionalInput<String>(alternateExchange),
      autoDeleteState = pulumi.Input.asOptionalInput<bool>(autoDeleteState),
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      exchangeName = pulumi.Input.asOptionalInput<String>(exchangeName),
      exchangeType = pulumi.Input.asOptionalInput<String>(exchangeType),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      internal = pulumi.Input.asOptionalInput<bool>(internal),
      virtualHostName = pulumi.Input.asOptionalInput<String>(virtualHostName),
      xDelayedType = pulumi.Input.asOptionalInput<String>(xDelayedType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternateExchange': ?alternateExchange,
      'autoDeleteState': ?autoDeleteState,
      'createTime': ?createTime,
      'exchangeName': ?exchangeName,
      'exchangeType': ?exchangeType,
      'instanceId': ?instanceId,
      'internal': ?internal,
      'virtualHostName': ?virtualHostName,
      'xDelayedType': ?xDelayedType,
    };
  }

  factory ExchangeState.fromMap(Map<String, dynamic> map) {
    return ExchangeState(
      alternateExchange: map['alternateExchange'] == null ? null : pulumi.Output.create<String>(map['alternateExchange'] as String),
      autoDeleteState: map['autoDeleteState'] == null ? null : pulumi.Output.create<bool>(map['autoDeleteState'] as bool),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      exchangeName: map['exchangeName'] == null ? null : pulumi.Output.create<String>(map['exchangeName'] as String),
      exchangeType: map['exchangeType'] == null ? null : pulumi.Output.create<String>(map['exchangeType'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      internal: map['internal'] == null ? null : pulumi.Output.create<bool>(map['internal'] as bool),
      virtualHostName: map['virtualHostName'] == null ? null : pulumi.Output.create<String>(map['virtualHostName'] as String),
      xDelayedType: map['xDelayedType'] == null ? null : pulumi.Output.create<String>(map['xDelayedType'] as String),
    );
  }
}

