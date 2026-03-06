// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The container group profile reference.
class ContainerGroupProfileReferenceDefinitionResponse {
  /// The container group profile reference id.This will be an ARM resource id in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerInstance/containerGroupProfiles/{containerGroupProfileName}'.
  final pulumi.Input<String>? id;
  /// The container group profile reference revision.
  final pulumi.Input<int>? revision;

  /// Creates a new [ContainerGroupProfileReferenceDefinitionResponse].
  /// [id] The container group profile reference id.This will be an ARM resource id in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerInstance/containerGroupProfiles/{containerGroupProfileName}'.
  /// [revision] The container group profile reference revision.
  const ContainerGroupProfileReferenceDefinitionResponse({
    this.id,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'revision': ?revision,
    };
  }

  factory ContainerGroupProfileReferenceDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ContainerGroupProfileReferenceDefinitionResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

