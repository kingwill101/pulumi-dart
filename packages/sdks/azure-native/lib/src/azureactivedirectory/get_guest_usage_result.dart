// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getGuestUsage.
class GetGuestUsageResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// An identifier that represents the Guest Usages resource.
  final String? id;
  /// Location of the Guest Usages resource.
  final String? location;
  /// The name of the Guest Usages resource.
  final String? name;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// Key-value pairs of additional resource provisioning properties.
  final Map<String, String>? tags;
  /// An identifier for the tenant for which the resource is being created
  final String? tenantId;
  /// The type of the Guest Usages resource.
  final String? type;

  /// Creates a new [GetGuestUsageResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] An identifier that represents the Guest Usages resource.
  /// [location] Location of the Guest Usages resource.
  /// [name] The name of the Guest Usages resource.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Key-value pairs of additional resource provisioning properties.
  /// [tenantId] An identifier for the tenant for which the resource is being created
  /// [type] The type of the Guest Usages resource.
  const GetGuestUsageResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.systemData,
    this.tags,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory GetGuestUsageResult.fromMap(Map<String, dynamic> map) {
    return GetGuestUsageResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
