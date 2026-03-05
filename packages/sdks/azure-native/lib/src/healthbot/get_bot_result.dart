// ignore_for_file: unused_element, unnecessary_cast

import 'health_bot_properties_response.dart';
import 'identity_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBot.
class GetBotResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource Id for the resource.
  final String id;
  /// The identity of the Azure Health Bot.
  final IdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The set of properties specific to Azure Health Bot resource.
  final HealthBotPropertiesResponse properties;
  /// SKU of the Azure Health Bot.
  final SkuResponse sku;
  /// Metadata pertaining to creation and last modification of the resource
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetBotResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource Id for the resource.
  /// [identity] The identity of the Azure Health Bot.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [properties] The set of properties specific to Azure Health Bot resource.
  /// [sku] SKU of the Azure Health Bot.
  /// [systemData] Metadata pertaining to creation and last modification of the resource
  /// [tags] Resource tags.
  /// [type] The type of the resource.
  GetBotResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    required this.properties,
    required this.sku,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'name': name,
      'properties': properties.toMap(),
      'sku': sku.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetBotResult.fromMap(Map<String, dynamic> map) {
    return GetBotResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      properties: HealthBotPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      sku: SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

