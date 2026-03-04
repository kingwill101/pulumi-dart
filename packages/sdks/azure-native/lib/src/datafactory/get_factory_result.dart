// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_configuration_response.dart';
import 'factory_git_hub_configuration_response.dart';
import 'factory_identity_response.dart';
import 'global_parameter_specification_response.dart';
import 'purview_configuration_response.dart';

/// Result data returned by getFactory.
class GetFactoryResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Time the factory was created in ISO8601 format.
  final String createTime;

  /// Etag identifies change in the resource.
  final String eTag;

  /// Properties to enable Customer Managed Key for the factory.
  final EncryptionConfigurationResponse? encryption;

  /// List of parameters for factory.
  final Map<String, GlobalParameterSpecificationResponse>? globalParameters;

  /// The resource identifier.
  final String id;

  /// Managed service identity of the factory.
  final FactoryIdentityResponse? identity;

  /// The resource location.
  final String? location;

  /// The resource name.
  final String name;

  /// Factory provisioning state, example Succeeded.
  final String provisioningState;

  /// Whether or not public network access is allowed for the data factory.
  final String? publicNetworkAccess;

  /// Purview information of the factory.
  final PurviewConfigurationResponse? purviewConfiguration;

  /// Git repo information of the factory.
  final FactoryGitHubConfigurationResponse? repoConfiguration;

  /// The resource tags.
  final Map<String, String>? tags;

  /// The resource type.
  final String type;

  /// Version of the factory.
  final String version;

  /// Creates a new [GetFactoryResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createTime] Time the factory was created in ISO8601 format.
  /// [eTag] Etag identifies change in the resource.
  /// [encryption] Properties to enable Customer Managed Key for the factory.
  /// [globalParameters] List of parameters for factory.
  /// [id] The resource identifier.
  /// [identity] Managed service identity of the factory.
  /// [location] The resource location.
  /// [name] The resource name.
  /// [provisioningState] Factory provisioning state, example Succeeded.
  /// [publicNetworkAccess] Whether or not public network access is allowed for the data factory.
  /// [purviewConfiguration] Purview information of the factory.
  /// [repoConfiguration] Git repo information of the factory.
  /// [tags] The resource tags.
  /// [type] The resource type.
  /// [version] Version of the factory.
  GetFactoryResult({
    required this.azureApiVersion,
    required this.createTime,
    required this.eTag,
    this.encryption,
    this.globalParameters,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.purviewConfiguration,
    this.repoConfiguration,
    this.tags,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createTime': createTime,
      'eTag': eTag,
      'encryption': ?encryption?.toMap(),
      'globalParameters': ?(() {
        final guardedValue = globalParameters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeMapValues<
          GlobalParameterSpecificationResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'id': id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'purviewConfiguration': ?purviewConfiguration?.toMap(),
      'repoConfiguration': ?repoConfiguration?.toMap(),
      'tags': ?tags,
      'type': type,
      'version': version,
    };
  }

  factory GetFactoryResult.fromMap(Map<String, dynamic> map) {
    return GetFactoryResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createTime: map['createTime'] as String,
      eTag: map['eTag'] as String,
      encryption: (() {
        final guardedValue = map['encryption'];
        if (guardedValue == null) return null;
        return EncryptionConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      globalParameters: (() {
        final guardedValue = map['globalParameters'];
        if (guardedValue == null) return null;
        return pulumi
            .Input.decodeMapValues<GlobalParameterSpecificationResponse>(
          guardedValue,
          (value) => GlobalParameterSpecificationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: map['id'] as String,
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return FactoryIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: (() {
        final guardedValue = map['publicNetworkAccess'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      purviewConfiguration: (() {
        final guardedValue = map['purviewConfiguration'];
        if (guardedValue == null) return null;
        return PurviewConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      repoConfiguration: (() {
        final guardedValue = map['repoConfiguration'];
        if (guardedValue == null) return null;
        return FactoryGitHubConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}
