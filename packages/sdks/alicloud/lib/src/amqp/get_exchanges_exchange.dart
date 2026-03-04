// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExchangesExchange {
  /// The attributes.
  final pulumi.Input<Map<String, String>> attributes;

  /// Indicates whether the Auto Delete attribute is configured.
  final pulumi.Input<bool> autoDeleteState;

  /// The creation time.
  final pulumi.Input<String> createTime;

  /// The name of the exchange.
  final pulumi.Input<String> exchangeName;

  /// The type of the exchange.
  final pulumi.Input<String> exchangeType;

  /// The ID of the Exchange. Its value is same as Queue Name.
  final pulumi.Input<String> id;

  /// The ID of the instance.
  final pulumi.Input<String> instanceId;

  /// The name of virtual host where an exchange resides.
  final pulumi.Input<String> virtualHostName;

  /// Creates a new [GetExchangesExchange].
  /// [attributes] The attributes.
  /// [autoDeleteState] Indicates whether the Auto Delete attribute is configured.
  /// [createTime] The creation time.
  /// [exchangeName] The name of the exchange.
  /// [exchangeType] The type of the exchange.
  /// [id] The ID of the Exchange. Its value is same as Queue Name.
  /// [instanceId] The ID of the instance.
  /// [virtualHostName] The name of virtual host where an exchange resides.
  GetExchangesExchange({
    required this.attributes,
    required this.autoDeleteState,
    required this.createTime,
    required this.exchangeName,
    required this.exchangeType,
    required this.id,
    required this.instanceId,
    required this.virtualHostName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': attributes,
      'autoDeleteState': autoDeleteState,
      'createTime': createTime,
      'exchangeName': exchangeName,
      'exchangeType': exchangeType,
      'id': id,
      'instanceId': instanceId,
      'virtualHostName': virtualHostName,
    };
  }

  factory GetExchangesExchange.fromMap(Map<String, dynamic> map) {
    return GetExchangesExchange(
      attributes: pulumi.Input.fromValue(
        (map['attributes'] as Map).cast<String, String>(),
      ),
      autoDeleteState: pulumi.Input.fromValue(map['autoDeleteState'] as bool),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      exchangeName: pulumi.Input.fromValue(map['exchangeName'] as String),
      exchangeType: pulumi.Input.fromValue(map['exchangeType'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      virtualHostName: pulumi.Input.fromValue(map['virtualHostName'] as String),
    );
  }
}
