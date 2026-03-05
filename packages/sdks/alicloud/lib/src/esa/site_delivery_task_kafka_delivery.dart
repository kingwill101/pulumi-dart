// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SiteDeliveryTaskKafkaDelivery {
  final pulumi.Input<String>? balancer;
  final pulumi.Input<List<String>>? brokers;
  /// The compression method. By default, data is not compressed.
  final pulumi.Input<String>? compress;
  final pulumi.Input<String>? machanismType;
  final pulumi.Input<String>? password;
  final pulumi.Input<String>? topic;
  final pulumi.Input<bool>? userAuth;
  final pulumi.Input<String>? userName;

  /// Creates a new [SiteDeliveryTaskKafkaDelivery].
  /// [balancer] Optional.
  /// [brokers] Optional.
  /// [compress] The compression method. By default, data is not compressed.
  /// [machanismType] Optional.
  /// [password] Optional.
  /// [topic] Optional.
  /// [userAuth] Optional.
  /// [userName] Optional.
  SiteDeliveryTaskKafkaDelivery({
    this.balancer,
    this.brokers,
    this.compress,
    this.machanismType,
    this.password,
    this.topic,
    this.userAuth,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'balancer': ?balancer,
      'brokers': ?brokers,
      'compress': ?compress,
      'machanismType': ?machanismType,
      'password': ?password,
      'topic': ?topic,
      'userAuth': ?userAuth,
      'userName': ?userName,
    };
  }

  factory SiteDeliveryTaskKafkaDelivery.fromMap(Map<String, dynamic> map) {
    return SiteDeliveryTaskKafkaDelivery(
      balancer: (() { final guardedValue = map['balancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      brokers: (() { final guardedValue = map['brokers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      compress: (() { final guardedValue = map['compress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machanismType: (() { final guardedValue = map['machanismType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAuth: (() { final guardedValue = map['userAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

