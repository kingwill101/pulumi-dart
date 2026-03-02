// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource map for schema in azure monitor.
class ResourceMap {
  /// Resource Map Key.
  final pulumi.Input<String> from;
  /// Resource Map Value.
  final pulumi.Input<String> to;

  /// Creates a new [ResourceMap].
  /// [from] Resource Map Key.
  /// [to] Resource Map Value.
  ResourceMap({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory ResourceMap.fromMap(Map<String, dynamic> map) {
    return ResourceMap(
      from: (map['from'] as String).input(),
      to: (map['to'] as String).input(),
    );
  }
}

