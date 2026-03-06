// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parent_service_group_properties.dart';

/// ServiceGroup creation request body parameters.
class ServiceGroupProperties {
  /// The display name of the serviceGroup. For example, ServiceGroupTest1
  final pulumi.Input<String>? displayName;
  /// The details of the parent serviceGroup.
  final pulumi.Input<ParentServiceGroupProperties>? parent;

  /// Creates a new [ServiceGroupProperties].
  /// [displayName] The display name of the serviceGroup. For example, ServiceGroupTest1
  /// [parent] The details of the parent serviceGroup.
  const ServiceGroupProperties({
    this.displayName,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'parent': ?pulumi.Input.mapOptionalInputValue<ParentServiceGroupProperties, Map<String, dynamic>>(parent, (value) => value.toMap()),
    };
  }

  factory ServiceGroupProperties.fromMap(Map<String, dynamic> map) {
    return ServiceGroupProperties(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParentServiceGroupProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

