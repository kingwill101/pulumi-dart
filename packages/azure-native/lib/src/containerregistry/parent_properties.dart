// ignore_for_file: unused_element, unnecessary_cast

import 'sync_properties.dart';

/// The properties of the connected registry parent.
class ParentProperties {
  /// The resource ID of the parent to which the connected registry will be associated.
  final String? id;
  /// The sync properties of the connected registry with its parent.
  final SyncProperties syncProperties;

  /// Creates a new [ParentProperties].
  /// [id] The resource ID of the parent to which the connected registry will be associated.
  /// [syncProperties] The sync properties of the connected registry with its parent.
  ParentProperties({
    this.id,
    required this.syncProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'syncProperties': syncProperties.toMap(),
    };
  }

  factory ParentProperties.fromMap(Map<String, dynamic> map) {
    return ParentProperties(
      id: map['id'] == null ? null : map['id'] as String,
      syncProperties: SyncProperties.fromMap((map['syncProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

