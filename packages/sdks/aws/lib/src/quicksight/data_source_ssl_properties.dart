// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceSslProperties {
  /// A Boolean option to control whether SSL should be disabled.
  final pulumi.Input<bool> disableSsl;

  /// Creates a new [DataSourceSslProperties].
  /// [disableSsl] A Boolean option to control whether SSL should be disabled.
  const DataSourceSslProperties({
    required this.disableSsl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableSsl': disableSsl,
    };
  }

  factory DataSourceSslProperties.fromMap(Map<String, dynamic> map) {
    return DataSourceSslProperties(
      disableSsl: pulumi.Input.fromValue(map['disableSsl'] as bool),
    );
  }
}

