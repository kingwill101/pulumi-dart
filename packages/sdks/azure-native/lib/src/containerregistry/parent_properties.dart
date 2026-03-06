// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_properties.dart';

/// The properties of the connected registry parent.
class ParentProperties {
  /// The resource ID of the parent to which the connected registry will be associated.
  final pulumi.Input<String>? id;
  /// The sync properties of the connected registry with its parent.
  final pulumi.Input<SyncProperties> syncProperties;

  /// Creates a new [ParentProperties].
  /// [id] The resource ID of the parent to which the connected registry will be associated.
  /// [syncProperties] The sync properties of the connected registry with its parent.
  const ParentProperties({
    this.id,
    required this.syncProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'syncProperties': pulumi.Input.mapInputValue<SyncProperties, Map<String, dynamic>>(syncProperties, (value) => value.toMap()),
    };
  }

  factory ParentProperties.fromMap(Map<String, dynamic> map) {
    return ParentProperties(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncProperties: pulumi.Input.fromValue(SyncProperties.fromMap((map['syncProperties']! as Map).cast<String, dynamic>())),
    );
  }
}

