// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getGuestUsage.
class GetGuestUsageResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// An identifier that represents the Guest Usages resource.
  final String id;

  /// Location of the Guest Usages resource.
  final String? location;

  /// The name of the Guest Usages resource.
  final String name;

  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;

  /// Key-value pairs of additional resource provisioning properties.
  final Map<String, String>? tags;

  /// An identifier for the tenant for which the resource is being created
  final String? tenantId;

  /// The type of the Guest Usages resource.
  final String type;

  /// Creates a new [GetGuestUsageResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] An identifier that represents the Guest Usages resource.
  /// [location] Location of the Guest Usages resource.
  /// [name] The name of the Guest Usages resource.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Key-value pairs of additional resource provisioning properties.
  /// [tenantId] An identifier for the tenant for which the resource is being created
  /// [type] The type of the Guest Usages resource.
  GetGuestUsageResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    required this.systemData,
    this.tags,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory GetGuestUsageResult.fromMap(Map<String, dynamic> map) {
    return GetGuestUsageResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
    );
  }
}
