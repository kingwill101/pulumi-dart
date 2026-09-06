// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_configuration_response.dart';
import 'factory_identity_response.dart';
import 'global_parameter_specification_response.dart';
import 'purview_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getFactory.
class GetFactoryResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Time the factory was created in ISO8601 format.
  final String? createTime;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  final String? eTag;
  /// Properties to enable Customer Managed Key for the factory.
  final EncryptionConfigurationResponse? encryption;
  /// List of parameters for factory.
  final Map<String, GlobalParameterSpecificationResponse>? globalParameters;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Managed service identity of the factory.
  final FactoryIdentityResponse? identity;
  /// The resource location.
  final String? location;
  /// The name of the resource
  final String? name;
  /// Factory provisioning state, example Succeeded.
  final String? provisioningState;
  /// Whether or not public network access is allowed for the data factory.
  final String? publicNetworkAccess;
  /// Purview information of the factory.
  final PurviewConfigurationResponse? purviewConfiguration;
  /// Git repo information of the factory.
  final dynamic repoConfiguration;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Version of the factory.
  final String? version;

  /// Creates a new [GetFactoryResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createTime] Time the factory was created in ISO8601 format.
  /// [eTag] If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  /// [encryption] Properties to enable Customer Managed Key for the factory.
  /// [globalParameters] List of parameters for factory.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Managed service identity of the factory.
  /// [location] The resource location.
  /// [name] The name of the resource
  /// [provisioningState] Factory provisioning state, example Succeeded.
  /// [publicNetworkAccess] Whether or not public network access is allowed for the data factory.
  /// [purviewConfiguration] Purview information of the factory.
  /// [repoConfiguration] Git repo information of the factory.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] The resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Version of the factory.
  const GetFactoryResult({
    this.azureApiVersion,
    this.createTime,
    this.eTag,
    this.encryption,
    this.globalParameters,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.provisioningState,
    this.publicNetworkAccess,
    this.purviewConfiguration,
    this.repoConfiguration,
    this.systemData,
    this.tags,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createTime': ?createTime,
      'eTag': ?eTag,
      'encryption': ?encryption?.toMap(),
      'globalParameters': ?(() { final guardedValue = globalParameters; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<GlobalParameterSpecificationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'purviewConfiguration': ?purviewConfiguration?.toMap(),
      'repoConfiguration': ?repoConfiguration,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetFactoryResult.fromMap(Map<String, dynamic> map) {
    return GetFactoryResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return EncryptionConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      globalParameters: (() { final guardedValue = map['globalParameters']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<GlobalParameterSpecificationResponse>(guardedValue, (value) => GlobalParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return FactoryIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      purviewConfiguration: (() { final guardedValue = map['purviewConfiguration']; if (guardedValue == null) return null; return PurviewConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      repoConfiguration: (() { final guardedValue = map['repoConfiguration']; if (guardedValue == null) return null; return guardedValue; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
