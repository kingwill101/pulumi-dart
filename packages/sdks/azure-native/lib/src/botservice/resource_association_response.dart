// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about resource association
class ResourceAssociationResponse {
  /// Access Mode of the resource association
  final pulumi.Input<String?>? accessMode;
  /// Name of the resource association
  final pulumi.Input<String?>? name;

  /// Creates a new [ResourceAssociationResponse].
  /// [accessMode] Access Mode of the resource association
  /// [name] Name of the resource association
  const ResourceAssociationResponse({
    this.accessMode,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'name': ?name,
    };
  }

  factory ResourceAssociationResponse.fromMap(Map<String, dynamic> map) {
    return ResourceAssociationResponse(
      accessMode: (() { final guardedValue = map['accessMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
