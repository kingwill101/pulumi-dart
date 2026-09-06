// ignore_for_file: unused_element, unnecessary_cast

import 'account_resource_response_properties.dart';
import 'account_resource_response_system_data.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Azure resource ID.
  final String? id;
  /// Location of the resource.
  final String? location;
  /// Azure resource name.
  final String? name;
  /// Property bag from billing account
  final AccountResourceResponseProperties? properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final AccountResourceResponseSystemData? systemData;
  /// resource tags.
  final Map<String, String>? tags;
  /// Azure resource type.
  final String? type;

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
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.properties,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return AccountResourceResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return AccountResourceResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
