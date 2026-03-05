// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BrokerConfiguration {
  /// Configuration ID.
  final pulumi.Input<String>? id;
  /// Revision of the Configuration.
  final pulumi.Input<int>? revision;

  /// Creates a new [BrokerConfiguration].
  /// [id] Configuration ID.
  /// [revision] Revision of the Configuration.
  BrokerConfiguration({
    this.id,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'revision': ?revision,
    };
  }

  factory BrokerConfiguration.fromMap(Map<String, dynamic> map) {
    return BrokerConfiguration(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

