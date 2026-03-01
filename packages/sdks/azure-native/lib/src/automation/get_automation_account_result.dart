// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_properties_response.dart';
import 'identity_response.dart';
import 'private_endpoint_connection_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAutomationAccount.
class GetAutomationAccountResult {
  /// URL of automation hybrid service which is used for hybrid worker on-boarding.
  final String? automationHybridServiceUrl;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets the creation time.
  final String creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Indicates whether requests using non-AAD authentication are blocked
  final bool? disableLocalAuth;
  /// Encryption properties for the automation account
  final EncryptionPropertiesResponse? encryption;
  /// Gets or sets the etag of the resource.
  final String? etag;
  /// Fully qualified resource Id for the resource
  final String id;
  /// Identity for the resource.
  final IdentityResponse? identity;
  /// Gets or sets the last modified by.
  final String? lastModifiedBy;
  /// Gets the last modified time.
  final String lastModifiedTime;
  /// The Azure Region where the resource lives
  final String? location;
  /// The name of the resource
  final String name;
  /// List of Automation operations supported by the Automation resource provider.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// Indicates whether traffic on the non-ARM endpoint (Webhook/Agent) is allowed from the public internet
  final bool? publicNetworkAccess;
  /// Gets or sets the SKU of account.
  final SkuResponse? sku;
  /// Gets status of account.
  final String state;
  /// Resource system metadata.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetAutomationAccountResult].
  /// [automationHybridServiceUrl] URL of automation hybrid service which is used for hybrid worker on-boarding.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Gets the creation time.
  /// [description] Gets or sets the description.
  /// [disableLocalAuth] Indicates whether requests using non-AAD authentication are blocked
  /// [encryption] Encryption properties for the automation account
  /// [etag] Gets or sets the etag of the resource.
  /// [id] Fully qualified resource Id for the resource
  /// [identity] Identity for the resource.
  /// [lastModifiedBy] Gets or sets the last modified by.
  /// [lastModifiedTime] Gets the last modified time.
  /// [location] The Azure Region where the resource lives
  /// [name] The name of the resource
  /// [privateEndpointConnections] List of Automation operations supported by the Automation resource provider.
  /// [publicNetworkAccess] Indicates whether traffic on the non-ARM endpoint (Webhook/Agent) is allowed from the public internet
  /// [sku] Gets or sets the SKU of account.
  /// [state] Gets status of account.
  /// [systemData] Resource system metadata.
  /// [tags] Resource tags.
  /// [type] The type of the resource.
  GetAutomationAccountResult({
    this.automationHybridServiceUrl,
    required this.azureApiVersion,
    required this.creationTime,
    this.description,
    this.disableLocalAuth,
    this.encryption,
    this.etag,
    required this.id,
    this.identity,
    this.lastModifiedBy,
    required this.lastModifiedTime,
    this.location,
    required this.name,
    this.privateEndpointConnections,
    this.publicNetworkAccess,
    this.sku,
    required this.state,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationHybridServiceUrl': ?automationHybridServiceUrl,
      'azureApiVersion': azureApiVersion,
      'creationTime': creationTime,
      'description': ?description,
      'disableLocalAuth': ?disableLocalAuth,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'etag': ?etag,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'lastModifiedBy': ?lastModifiedBy,
      'lastModifiedTime': lastModifiedTime,
      'location': ?location,
      'name': name,
      'privateEndpointConnections': ?privateEndpointConnections == null ? null : pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections!, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'sku': ?sku == null ? null : sku!.toMap(),
      'state': state,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAutomationAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAutomationAccountResult(
      automationHybridServiceUrl: map['automationHybridServiceUrl'] == null ? null : map['automationHybridServiceUrl'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      disableLocalAuth: map['disableLocalAuth'] == null ? null : map['disableLocalAuth'] as bool,
      encryption: map['encryption'] == null ? null : EncryptionPropertiesResponse.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      lastModifiedBy: map['lastModifiedBy'] == null ? null : map['lastModifiedBy'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as bool,
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

