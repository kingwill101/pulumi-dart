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
      balancer: map['balancer'] == null ? null : (map['balancer']! as String).input(),
      brokers: map['brokers'] == null ? null : ((map['brokers']! as List).cast<String>()).input(),
      compress: map['compress'] == null ? null : (map['compress']! as String).input(),
      machanismType: map['machanismType'] == null ? null : (map['machanismType']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      topic: map['topic'] == null ? null : (map['topic']! as String).input(),
      userAuth: map['userAuth'] == null ? null : (map['userAuth']! as bool).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

