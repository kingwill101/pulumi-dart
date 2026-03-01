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
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'globalParameters': ?globalParameters == null ? null : pulumi.Input.encodeMapValues<GlobalParameterSpecificationResponse, Map<String, dynamic>>(globalParameters!, (value) => value.toMap()),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'purviewConfiguration': ?purviewConfiguration == null ? null : purviewConfiguration!.toMap(),
      'repoConfiguration': ?repoConfiguration == null ? null : repoConfiguration!.toMap(),
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
      encryption: map['encryption'] == null ? null : EncryptionConfigurationResponse.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      globalParameters: map['globalParameters'] == null ? null : pulumi.Input.decodeMapValues<GlobalParameterSpecificationResponse>(map['globalParameters'], (value) => GlobalParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : FactoryIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      purviewConfiguration: map['purviewConfiguration'] == null ? null : PurviewConfigurationResponse.fromMap((map['purviewConfiguration'] as Map).cast<String, dynamic>()),
      repoConfiguration: map['repoConfiguration'] == null ? null : FactoryGitHubConfigurationResponse.fromMap((map['repoConfiguration'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

