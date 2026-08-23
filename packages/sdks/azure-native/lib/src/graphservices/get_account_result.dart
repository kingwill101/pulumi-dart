// ignore_for_file: unused_element, unnecessary_cast

import 'account_resource_response_properties.dart';
import 'account_resource_response_system_data.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Azure resource ID.
  final String id;
  /// Location of the resource.
  final String? location;
  /// Azure resource name.
  final String name;
  /// Property bag from billing account
  final AccountResourceResponseProperties properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final AccountResourceResponseSystemData systemData;
  /// resource tags.
  final Map<String, String>? tags;
  /// Azure resource type.
  final String type;

  /// Creates a new [GetAccountResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Azure resource ID.
  /// [location] Location of the resource.
  /// [name] Azure resource name.
  /// [properties] Property bag from billing account
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] resource tags.
  /// [type] Azure resource type.
  const GetAccountResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    required this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: AccountResourceResponseProperties.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: AccountResourceResponseSystemData.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
