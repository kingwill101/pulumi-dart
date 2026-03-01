// ignore_for_file: unused_element, unnecessary_cast

import 'common_export_properties_response.dart';
import 'error_details_response.dart';

/// An export run.
class ExportRunResponse {
  /// eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  final String? eTag;
  /// The details of any error.
  final ErrorDetailsResponse? error;
  /// The type of the export run.
  final String? executionType;
  /// The name of the exported file.
  final String? fileName;
  /// Resource Id.
  final String id;
  /// Resource name.
  final String name;
  /// The time when the export run finished.
  final String? processingEndTime;
  /// The time when export was picked up to be run.
  final String? processingStartTime;
  /// The export settings that were in effect for this run.
  final CommonExportPropertiesResponse? runSettings;
  /// The last known status of the export run.
  final String? status;
  /// The identifier for the entity that triggered the export. For on-demand runs it is the user email. For scheduled runs it is 'System'.
  final String? submittedBy;
  /// The time when export was queued to be run.
  final String? submittedTime;
  /// Resource type.
  final String type;

  /// Creates a new [ExportRunResponse].
  /// [eTag] eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  /// [error] The details of any error.
  /// [executionType] The type of the export run.
  /// [fileName] The name of the exported file.
  /// [id] Resource Id.
  /// [name] Resource name.
  /// [processingEndTime] The time when the export run finished.
  /// [processingStartTime] The time when export was picked up to be run.
  /// [runSettings] The export settings that were in effect for this run.
  /// [status] The last known status of the export run.
  /// [submittedBy] The identifier for the entity that triggered the export. For on-demand runs it is the user email. For scheduled runs it is 'System'.
  /// [submittedTime] The time when export was queued to be run.
  /// [type] Resource type.
  ExportRunResponse({
    this.eTag,
    this.error,
    this.executionType,
    this.fileName,
    required this.id,
    required this.name,
    this.processingEndTime,
    this.processingStartTime,
    this.runSettings,
    this.status,
    this.submittedBy,
    this.submittedTime,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'error': ?error == null ? null : error!.toMap(),
      'executionType': ?executionType,
      'fileName': ?fileName,
      'id': id,
      'name': name,
      'processingEndTime': ?processingEndTime,
      'processingStartTime': ?processingStartTime,
      'runSettings': ?runSettings == null ? null : runSettings!.toMap(),
      'status': ?status,
      'submittedBy': ?submittedBy,
      'submittedTime': ?submittedTime,
      'type': type,
    };
  }

  factory ExportRunResponse.fromMap(Map<String, dynamic> map) {
    return ExportRunResponse(
      eTag: map['eTag'] == null ? null : map['eTag'] as String,
      error: map['error'] == null ? null : ErrorDetailsResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      executionType: map['executionType'] == null ? null : map['executionType'] as String,
      fileName: map['fileName'] == null ? null : map['fileName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      processingEndTime: map['processingEndTime'] == null ? null : map['processingEndTime'] as String,
      processingStartTime: map['processingStartTime'] == null ? null : map['processingStartTime'] as String,
      runSettings: map['runSettings'] == null ? null : CommonExportPropertiesResponse.fromMap((map['runSettings'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
      submittedBy: map['submittedBy'] == null ? null : map['submittedBy'] as String,
      submittedTime: map['submittedTime'] == null ? null : map['submittedTime'] as String,
      type: map['type'] as String,
    );
  }
}

