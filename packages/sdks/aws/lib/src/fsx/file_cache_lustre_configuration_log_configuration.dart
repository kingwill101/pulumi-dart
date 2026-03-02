// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileCacheLustreConfigurationLogConfiguration {
  final pulumi.Input<String>? destination;
  final pulumi.Input<String>? level;

  /// Creates a new [FileCacheLustreConfigurationLogConfiguration].
  /// [destination] Optional.
  /// [level] Optional.
  FileCacheLustreConfigurationLogConfiguration({
    this.destination,
    this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'level': ?level,
    };
  }

  factory FileCacheLustreConfigurationLogConfiguration.fromMap(Map<String, dynamic> map) {
    return FileCacheLustreConfigurationLogConfiguration(
      destination: map['destination'] == null ? null : (map['destination'] as String).input(),
      level: map['level'] == null ? null : (map['level'] as String).input(),
    );
  }
}

