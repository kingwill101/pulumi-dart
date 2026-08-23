// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details of the parent serviceGroup.
class ParentServiceGroupProperties {
  /// The fully qualified ID of the parent serviceGroup.  For example, '/providers/Microsoft.Management/serviceGroups/TestServiceGroup'
  final pulumi.Input<String>? resourceId;

  /// Creates a new [ParentServiceGroupProperties].
  /// [resourceId] The fully qualified ID of the parent serviceGroup.  For example, '/providers/Microsoft.Management/serviceGroups/TestServiceGroup'
  const ParentServiceGroupProperties({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory ParentServiceGroupProperties.fromMap(Map<String, dynamic> map) {
    return ParentServiceGroupProperties(
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
