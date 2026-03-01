// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getArchiveVersion.
class GetArchiveVersionResult {
  /// The detailed error message for the archive version in the case of failure.
  final String? archiveVersionErrorMessage;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource ID.
  final String id;
  /// The name of the resource.
  final String name;
  /// The provisioning state of the archive at the time the operation was called.
  final String provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetArchiveVersionResult].
  /// [archiveVersionErrorMessage] The detailed error message for the archive version in the case of failure.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource ID.
  /// [name] The name of the resource.
  /// [provisioningState] The provisioning state of the archive at the time the operation was called.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource.
  GetArchiveVersionResult({
    this.archiveVersionErrorMessage,
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveVersionErrorMessage': ?archiveVersionErrorMessage,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetArchiveVersionResult.fromMap(Map<String, dynamic> map) {
    return GetArchiveVersionResult(
      archiveVersionErrorMessage: map['archiveVersionErrorMessage'] == null ? null : map['archiveVersionErrorMessage'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

