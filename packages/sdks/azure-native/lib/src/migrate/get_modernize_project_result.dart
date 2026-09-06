// ignore_for_file: unused_element, unnecessary_cast

import 'modernize_project_model_properties_response.dart';
import 'modernize_project_model_response_system_data.dart';
import 'resource_identity_response.dart';

/// Result data returned by getModernizeProject.
class GetModernizeProjectResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets or sets the Id of the resource.
  final String? id;
  final ResourceIdentityResponse? identity;
  /// Gets or sets the location of the modernizeProject.
  final String? location;
  /// Gets or sets the name of the resource.
  final String? name;
  /// ModernizeProject properties.
  final ModernizeProjectModelPropertiesResponse? properties;
  final ModernizeProjectModelResponseSystemData? systemData;
  /// Gets or sets the resource tags.
  final Map<String, String>? tags;
  /// Gets or sets the type of the resource.
  final String? type;

  /// Creates a new [GetModernizeProjectResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Gets or sets the Id of the resource.
  /// [identity] Optional.
  /// [location] Gets or sets the location of the modernizeProject.
  /// [name] Gets or sets the name of the resource.
  /// [properties] ModernizeProject properties.
  /// [systemData] Optional.
  /// [tags] Gets or sets the resource tags.
  /// [type] Gets or sets the type of the resource.
  const GetModernizeProjectResult({
    this.azureApiVersion,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.properties,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetModernizeProjectResult.fromMap(Map<String, dynamic> map) {
    return GetModernizeProjectResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ResourceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ModernizeProjectModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return ModernizeProjectModelResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
