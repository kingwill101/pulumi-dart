// ignore_for_file: unused_element, unnecessary_cast


class SiteDeliveryTaskKafkaDelivery {
  final String? balancer;
  final List<String>? brokers;
  /// The compression method. By default, data is not compressed.
  final String? compress;
  final String? machanismType;
  final String? password;
  final String? topic;
  final bool? userAuth;
  final String? userName;

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
      balancer: map['balancer'] == null ? null : map['balancer'] as String,
      brokers: map['brokers'] == null ? null : (map['brokers'] as List).cast<String>(),
      compress: map['compress'] == null ? null : map['compress'] as String,
      machanismType: map['machanismType'] == null ? null : map['machanismType'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      topic: map['topic'] == null ? null : map['topic'] as String,
      userAuth: map['userAuth'] == null ? null : map['userAuth'] as bool,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

