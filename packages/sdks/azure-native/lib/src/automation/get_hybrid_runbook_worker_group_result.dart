// ignore_for_file: unused_element, unnecessary_cast

import 'run_as_credential_association_property_response.dart';
import 'system_data_response.dart';

/// Result data returned by getHybridRunbookWorkerGroup.
class GetHybridRunbookWorkerGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Sets the credential of a worker group.
  final RunAsCredentialAssociationPropertyResponse? credential;
  /// Type of the HybridWorkerGroup.
  final String? groupType;
  /// Fully qualified resource Id for the resource
  final String id;
  /// The name of the resource
  final String name;
  /// Resource system metadata.
  final SystemDataResponse systemData;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetHybridRunbookWorkerGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [credential] Sets the credential of a worker group.
  /// [groupType] Type of the HybridWorkerGroup.
  /// [id] Fully qualified resource Id for the resource
  /// [name] The name of the resource
  /// [systemData] Resource system metadata.
  /// [type] The type of the resource.
  GetHybridRunbookWorkerGroupResult({
    required this.azureApiVersion,
    this.credential,
    this.groupType,
    required this.id,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'credential': ?credential?.toMap(),
      'groupType': ?groupType,
      'id': id,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetHybridRunbookWorkerGroupResult.fromMap(Map<String, dynamic> map) {
    return GetHybridRunbookWorkerGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      credential: (() { final guardedValue = map['credential']; if (guardedValue == null) return null; return RunAsCredentialAssociationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      groupType: (() { final guardedValue = map['groupType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

