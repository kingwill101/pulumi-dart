// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the resource scope
class ExpandedPropertiesResponseScope {
  /// Display name of the resource
  final pulumi.Input<String>? displayName;
  /// Scope id of the resource
  final pulumi.Input<String>? id;
  /// Type of the resource
  final pulumi.Input<String>? type;

  /// Creates a new [ExpandedPropertiesResponseScope].
  /// [displayName] Display name of the resource
  /// [id] Scope id of the resource
  /// [type] Type of the resource
  ExpandedPropertiesResponseScope({
    this.displayName,
    this.id,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'type': ?type,
    };
  }

  factory ExpandedPropertiesResponseScope.fromMap(Map<String, dynamic> map) {
    return ExpandedPropertiesResponseScope(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

