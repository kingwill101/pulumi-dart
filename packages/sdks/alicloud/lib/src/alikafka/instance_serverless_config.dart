// ignore_for_file: unused_element, unnecessary_cast


class InstanceServerlessConfig {
  /// The reserved capacity for publishing messages.
  final int? reservedPublishCapacity;
  /// The reserved capacity for subscribing to message.
  final int? reservedSubscribeCapacity;

  /// Creates a new [InstanceServerlessConfig].
  /// [reservedPublishCapacity] The reserved capacity for publishing messages.
  /// [reservedSubscribeCapacity] The reserved capacity for subscribing to message.
  InstanceServerlessConfig({
    this.reservedPublishCapacity,
    this.reservedSubscribeCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reservedPublishCapacity': ?reservedPublishCapacity,
      'reservedSubscribeCapacity': ?reservedSubscribeCapacity,
    };
  }

  factory InstanceServerlessConfig.fromMap(Map<String, dynamic> map) {
    return InstanceServerlessConfig(
      reservedPublishCapacity: map['reservedPublishCapacity'] == null ? null : map['reservedPublishCapacity'] as int,
      reservedSubscribeCapacity: map['reservedSubscribeCapacity'] == null ? null : map['reservedSubscribeCapacity'] as int,
    );
  }
}

