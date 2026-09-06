// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getScopeMap.
class GetScopeMapResult {
  /// The list of scoped permissions for registry artifacts.
  /// E.g. repositories/repository-name/content/read,
  /// repositories/repository-name/metadata/write
  final List<String>? actions;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The creation date of scope map.
  final String? creationDate;
  /// The user friendly description of the scope map.
  final String? description;
  /// The resource ID.
  final String? id;
  /// The name of the resource.
  final String? name;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetScopeMapResult].
  /// [actions] The list of scoped permissions for registry artifacts.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationDate] The creation date of scope map.
  /// [description] The user friendly description of the scope map.
  /// [id] The resource ID.
  /// [name] The name of the resource.
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource.
  const GetScopeMapResult({
    this.actions,
    this.azureApiVersion,
    this.creationDate,
    this.description,
    this.id,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'azureApiVersion': ?azureApiVersion,
      'creationDate': ?creationDate,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetScopeMapResult.fromMap(Map<String, dynamic> map) {
    return GetScopeMapResult(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
