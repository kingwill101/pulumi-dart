// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSchemaVersion.
class GetSchemaVersionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Human-readable description of the schema.
  final String? description;
  /// Hash of the schema content.
  final String? hash;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Schema content.
  final String? schemaContent;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Globally unique, immutable, non-reusable id.
  final String? uuid;

  /// Creates a new [GetSchemaVersionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Human-readable description of the schema.
  /// [hash] Hash of the schema content.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the resource.
  /// [schemaContent] Schema content.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uuid] Globally unique, immutable, non-reusable id.
  const GetSchemaVersionResult({
    this.azureApiVersion,
    this.description,
    this.hash,
    this.id,
    this.name,
    this.provisioningState,
    this.schemaContent,
    this.systemData,
    this.type,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'hash': ?hash,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'schemaContent': ?schemaContent,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'uuid': ?uuid,
    };
  }

  factory GetSchemaVersionResult.fromMap(Map<String, dynamic> map) {
    return GetSchemaVersionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hash: (() { final guardedValue = map['hash']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schemaContent: (() { final guardedValue = map['schemaContent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
