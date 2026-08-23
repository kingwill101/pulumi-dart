// ignore_for_file: unused_element, unnecessary_cast

import 'export_definition_response.dart';
import 'export_delivery_info_response.dart';
import 'export_execution_list_result_response.dart';
import 'export_schedule_response.dart';
import 'system_assigned_service_identity_response.dart';

/// Result data returned by getExport.
class GetExportResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Has the definition for the export.
  final ExportDefinitionResponse definition;
  /// Has delivery information for the export.
  final ExportDeliveryInfoResponse deliveryInfo;
  /// eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  final String? eTag;
  /// The format of the export being delivered. Currently only 'Csv' is supported.
  final String? format;
  /// Resource Id.
  final String id;
  /// The managed identity associated with Export
  final SystemAssignedServiceIdentityResponse? identity;
  /// The location of the Export's managed identity. Only required when utilizing managed identity.
  final String? location;
  /// Resource name.
  final String name;
  /// If the export has an active schedule, provides an estimate of the next run time.
  final String nextRunTimeEstimate;
  /// If set to true, exported data will be partitioned by size and placed in a blob directory together with a manifest file. Note: this option is currently available only for Microsoft Customer Agreement commerce scopes.
  final bool? partitionData;
  /// If requested, has the most recent run history for the export.
  final ExportExecutionListResultResponse? runHistory;
  /// Has schedule information for the export.
  final ExportScheduleResponse? schedule;
  /// Resource type.
  final String type;

  /// Creates a new [GetExportResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [definition] Has the definition for the export.
  /// [deliveryInfo] Has delivery information for the export.
  /// [eTag] eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  /// [format] The format of the export being delivered. Currently only 'Csv' is supported.
  /// [id] Resource Id.
  /// [identity] The managed identity associated with Export
  /// [location] The location of the Export's managed identity. Only required when utilizing managed identity.
  /// [name] Resource name.
  /// [nextRunTimeEstimate] If the export has an active schedule, provides an estimate of the next run time.
  /// [partitionData] If set to true, exported data will be partitioned by size and placed in a blob directory together with a manifest file. Note: this option is currently available only for Microsoft Customer Agreement commerce scopes.
  /// [runHistory] If requested, has the most recent run history for the export.
  /// [schedule] Has schedule information for the export.
  /// [type] Resource type.
  const GetExportResult({
    required this.azureApiVersion,
    required this.definition,
    required this.deliveryInfo,
    this.eTag,
    this.format,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    required this.nextRunTimeEstimate,
    this.partitionData,
    this.runHistory,
    this.schedule,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'definition': definition.toMap(),
      'deliveryInfo': deliveryInfo.toMap(),
      'eTag': ?eTag,
      'format': ?format,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': name,
      'nextRunTimeEstimate': nextRunTimeEstimate,
      'partitionData': ?partitionData,
      'runHistory': ?runHistory?.toMap(),
      'schedule': ?schedule?.toMap(),
      'type': type,
    };
  }

  factory GetExportResult.fromMap(Map<String, dynamic> map) {
    return GetExportResult(
      azureApiVersion: map['azureApiVersion'] as String,
      definition: ExportDefinitionResponse.fromMap((map['definition']! as Map).cast<String, dynamic>()),
      deliveryInfo: ExportDeliveryInfoResponse.fromMap((map['deliveryInfo']! as Map).cast<String, dynamic>()),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return SystemAssignedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      nextRunTimeEstimate: map['nextRunTimeEstimate'] as String,
      partitionData: (() { final guardedValue = map['partitionData']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      runHistory: (() { final guardedValue = map['runHistory']; if (guardedValue == null) return null; return ExportExecutionListResultResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return ExportScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: map['type'] as String,
    );
  }
}
