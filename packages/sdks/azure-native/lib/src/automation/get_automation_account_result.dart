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
      'encryption': ?encryption?.toMap(),
      'etag': ?etag,
      'id': id,
      'identity': ?identity?.toMap(),
      'lastModifiedBy': ?lastModifiedBy,
      'lastModifiedTime': lastModifiedTime,
      'location': ?location,
      'name': name,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'publicNetworkAccess': ?publicNetworkAccess,
      'sku': ?sku?.toMap(),
      'state': state,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAutomationAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAutomationAccountResult(
      automationHybridServiceUrl: (() { final guardedValue = map['automationHybridServiceUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return EncryptionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastModifiedBy: (() { final guardedValue = map['lastModifiedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedTime: map['lastModifiedTime'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: map['state'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

