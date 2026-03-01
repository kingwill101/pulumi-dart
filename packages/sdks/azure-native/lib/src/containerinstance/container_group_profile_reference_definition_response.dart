// ignore_for_file: unused_element, unnecessary_cast


/// The container group profile reference.
class ContainerGroupProfileReferenceDefinitionResponse {
  /// The container group profile reference id.This will be an ARM resource id in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerInstance/containerGroupProfiles/{containerGroupProfileName}'.
  final String? id;
  /// The container group profile reference revision.
  final int? revision;

  /// Creates a new [ContainerGroupProfileReferenceDefinitionResponse].
  /// [id] The container group profile reference id.This will be an ARM resource id in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerInstance/containerGroupProfiles/{containerGroupProfileName}'.
  /// [revision] The container group profile reference revision.
  ContainerGroupProfileReferenceDefinitionResponse({
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
      id: map['id'] == null ? null : map['id'] as String,
      revision: map['revision'] == null ? null : map['revision'] as int,
    );
  }
}

