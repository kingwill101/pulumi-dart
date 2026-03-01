// ignore_for_file: unused_element, unnecessary_cast

import 'parent_service_group_properties.dart';

/// ServiceGroup creation request body parameters.
class ServiceGroupProperties {
  /// The display name of the serviceGroup. For example, ServiceGroupTest1
  final String? displayName;
  /// The details of the parent serviceGroup.
  final ParentServiceGroupProperties? parent;

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
      'parent': ?parent == null ? null : parent!.toMap(),
    };
  }

  factory ServiceGroupProperties.fromMap(Map<String, dynamic> map) {
    return ServiceGroupProperties(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      parent: map['parent'] == null ? null : ParentServiceGroupProperties.fromMap((map['parent'] as Map).cast<String, dynamic>()),
    );
  }
}

