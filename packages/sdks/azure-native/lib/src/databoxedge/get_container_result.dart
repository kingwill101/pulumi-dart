// ignore_for_file: unused_element, unnecessary_cast

import 'refresh_details_response.dart';
import 'system_data_response.dart';

/// Result data returned by getContainer.
class GetContainerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Current status of the container.
  final String containerStatus;
  /// The UTC time when container got created.
  final String createdDateTime;
  /// DataFormat for Container
  final String dataFormat;
  /// The path ID that uniquely identifies the object.
  final String id;
  /// The object name.
  final String name;
  /// Details of the refresh job on this container.
  final RefreshDetailsResponse refreshDetails;
  /// Metadata pertaining to creation and last modification of Container
  final SystemDataResponse systemData;
  /// The hierarchical type of the object.
  final String type;

  /// Creates a new [GetContainerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [containerStatus] Current status of the container.
  /// [createdDateTime] The UTC time when container got created.
  /// [dataFormat] DataFormat for Container
  /// [id] The path ID that uniquely identifies the object.
  /// [name] The object name.
  /// [refreshDetails] Details of the refresh job on this container.
  /// [systemData] Metadata pertaining to creation and last modification of Container
  /// [type] The hierarchical type of the object.
  const GetContainerResult({
    required this.azureApiVersion,
    required this.containerStatus,
    required this.createdDateTime,
    required this.dataFormat,
    required this.id,
    required this.name,
    required this.refreshDetails,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'containerStatus': containerStatus,
      'createdDateTime': createdDateTime,
      'dataFormat': dataFormat,
      'id': id,
      'name': name,
      'refreshDetails': refreshDetails.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetContainerResult.fromMap(Map<String, dynamic> map) {
    return GetContainerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      containerStatus: map['containerStatus'] as String,
      createdDateTime: map['createdDateTime'] as String,
      dataFormat: map['dataFormat'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      refreshDetails: RefreshDetailsResponse.fromMap((map['refreshDetails']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

