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
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

