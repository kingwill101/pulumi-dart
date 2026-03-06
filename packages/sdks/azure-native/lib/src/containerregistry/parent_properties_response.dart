// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_properties_response.dart';

/// The properties of the connected registry parent.
class ParentPropertiesResponse {
  /// The resource ID of the parent to which the connected registry will be associated.
  final pulumi.Input<String>? id;
  /// The sync properties of the connected registry with its parent.
  final pulumi.Input<SyncPropertiesResponse> syncProperties;

  /// Creates a new [ParentPropertiesResponse].
  /// [id] The resource ID of the parent to which the connected registry will be associated.
  /// [syncProperties] The sync properties of the connected registry with its parent.
  const ParentPropertiesResponse({
    this.id,
    required this.syncProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'syncProperties': pulumi.Input.mapInputValue<SyncPropertiesResponse, Map<String, dynamic>>(syncProperties, (value) => value.toMap()),
    };
  }

  factory ParentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ParentPropertiesResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncProperties: pulumi.Input.fromValue(SyncPropertiesResponse.fromMap((map['syncProperties']! as Map).cast<String, dynamic>())),
    );
  }
}

