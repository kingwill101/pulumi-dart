// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of data plane operations permitted through this Role Definition.
class PermissionResponse {
  /// An array of data actions that are allowed.
  final pulumi.Input<List<String>?>? dataActions;
  /// The id for the permission.
  final pulumi.Input<String?>? id;
  /// An array of data actions that are denied.
  final pulumi.Input<List<String>?>? notDataActions;

  /// Creates a new [PermissionResponse].
  /// [dataActions] An array of data actions that are allowed.
  /// [id] The id for the permission.
  /// [notDataActions] An array of data actions that are denied.
  const PermissionResponse({
    this.dataActions,
    this.id,
    this.notDataActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataActions': ?dataActions,
      'id': ?id,
      'notDataActions': ?notDataActions,
    };
  }

  factory PermissionResponse.fromMap(Map<String, dynamic> map) {
    return PermissionResponse(
      dataActions: (() { final guardedValue = map['dataActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notDataActions: (() { final guardedValue = map['notDataActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
