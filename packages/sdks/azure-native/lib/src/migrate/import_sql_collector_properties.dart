// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Import SQL Collector properties class.
class ImportSqlCollectorProperties {
  /// The sql db extended details.
  final pulumi.Input<String>? discoverySiteId;

  /// Creates a new [ImportSqlCollectorProperties].
  /// [discoverySiteId] The sql db extended details.
  ImportSqlCollectorProperties({
    this.discoverySiteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoverySiteId': ?discoverySiteId,
    };
  }

  factory ImportSqlCollectorProperties.fromMap(Map<String, dynamic> map) {
    return ImportSqlCollectorProperties(
      discoverySiteId: (() { final guardedValue = map['discoverySiteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

