// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource map for schema in azure monitor.
class ResourceMapResponse {
  /// Resource Map Key.
  final pulumi.Input<String> from;

  /// Resource Map Value.
  final pulumi.Input<String> to;

  /// Creates a new [ResourceMapResponse].
  /// [from] Resource Map Key.
  /// [to] Resource Map Value.
  ResourceMapResponse({required this.from, required this.to});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'from': from, 'to': to};
  }

  factory ResourceMapResponse.fromMap(Map<String, dynamic> map) {
    return ResourceMapResponse(
      from: pulumi.Input.fromValue(map['from'] as String),
      to: pulumi.Input.fromValue(map['to'] as String),
    );
  }
}
