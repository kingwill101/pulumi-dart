// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parent_service_group_properties_response.dart';

/// ServiceGroup creation request body parameters.
class ServiceGroupPropertiesResponse {
  /// The display name of the serviceGroup. For example, ServiceGroupTest1
  final pulumi.Input<String?>? displayName;
  /// The details of the parent serviceGroup.
  final pulumi.Input<ParentServiceGroupPropertiesResponse?>? parent;
  /// The provisioning state of the serviceGroup. For example, Running
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ServiceGroupPropertiesResponse].
  /// [displayName] The display name of the serviceGroup. For example, ServiceGroupTest1
  /// [parent] The details of the parent serviceGroup.
  /// [provisioningState] The provisioning state of the serviceGroup. For example, Running
  const ServiceGroupPropertiesResponse({
    this.displayName,
    this.parent,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'parent': ?pulumi.Input.mapOptionalInputValue<ParentServiceGroupPropertiesResponse, Map<String, dynamic>>(parent, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory ServiceGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ServiceGroupPropertiesResponse(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParentServiceGroupPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
