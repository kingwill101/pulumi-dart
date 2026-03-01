// ignore_for_file: unused_element, unnecessary_cast

import 'integration_account_sku_response.dart';
import 'resource_reference_response.dart';

/// Result data returned by getIntegrationAccount.
class GetIntegrationAccountResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource id.
  final String id;
  /// The integration service environment.
  final ResourceReferenceResponse? integrationServiceEnvironment;
  /// The resource location.
  final String? location;
  /// Gets the resource name.
  final String name;
  /// The sku.
  final IntegrationAccountSkuResponse? sku;
  /// The workflow state.
  final String? state;
  /// The resource tags.
  final Map<String, String>? tags;
  /// Gets the resource type.
  final String type;

  /// Creates a new [GetIntegrationAccountResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource id.
  /// [integrationServiceEnvironment] The integration service environment.
  /// [location] The resource location.
  /// [name] Gets the resource name.
  /// [sku] The sku.
  /// [state] The workflow state.
  /// [tags] The resource tags.
  /// [type] Gets the resource type.
  GetIntegrationAccountResult({
    required this.azureApiVersion,
    required this.id,
    this.integrationServiceEnvironment,
    this.location,
    required this.name,
    this.sku,
    this.state,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'integrationServiceEnvironment': ?integrationServiceEnvironment == null ? null : integrationServiceEnvironment!.toMap(),
      'location': ?location,
      'name': name,
      'sku': ?sku == null ? null : sku!.toMap(),
      'state': ?state,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetIntegrationAccountResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      integrationServiceEnvironment: map['integrationServiceEnvironment'] == null ? null : ResourceReferenceResponse.fromMap((map['integrationServiceEnvironment'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      sku: map['sku'] == null ? null : IntegrationAccountSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

