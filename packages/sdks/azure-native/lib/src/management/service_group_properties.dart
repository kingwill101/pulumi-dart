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
  ServiceGroupProperties({
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
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      parent: map['parent'] == null ? null : (ParentServiceGroupProperties.fromMap((map['parent']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

