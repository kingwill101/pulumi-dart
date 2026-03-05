// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PortConfig {
  /// The timeout period for session retention. Value range: 30~3600, unit: second. The default is 0, which means off.
  final pulumi.Input<int>? persistenceTimeout;

  /// Creates a new [PortConfig].
  /// [persistenceTimeout] The timeout period for session retention. Value range: 30~3600, unit: second. The default is 0, which means off.
  PortConfig({
    this.persistenceTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistenceTimeout': ?persistenceTimeout,
    };
  }

  factory PortConfig.fromMap(Map<String, dynamic> map) {
    return PortConfig(
      persistenceTimeout: (() { final guardedValue = map['persistenceTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

