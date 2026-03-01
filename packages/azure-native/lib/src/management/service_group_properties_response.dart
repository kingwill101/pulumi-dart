// ignore_for_file: unused_element, unnecessary_cast

import 'parent_service_group_properties_response.dart';

/// ServiceGroup creation request body parameters.
class ServiceGroupPropertiesResponse {
  /// The display name of the serviceGroup. For example, ServiceGroupTest1
  final String? displayName;
  /// The details of the parent serviceGroup.
  final ParentServiceGroupPropertiesResponse? parent;
  /// The provisioning state of the serviceGroup. For example, Running
  final String provisioningState;

  /// Creates a new [ServiceGroupPropertiesResponse].
  /// [displayName] The display name of the serviceGroup. For example, ServiceGroupTest1
  /// [parent] The details of the parent serviceGroup.
  /// [provisioningState] The provisioning state of the serviceGroup. For example, Running
  ServiceGroupPropertiesResponse({
    this.displayName,
    this.parent,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'parent': ?parent == null ? null : parent!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory ServiceGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ServiceGroupPropertiesResponse(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      parent: map['parent'] == null ? null : ParentServiceGroupPropertiesResponse.fromMap((map['parent'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

