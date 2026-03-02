// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_export_properties_response.dart';
import 'error_details_response.dart';

/// An export run.
class ExportRunResponse {
  /// eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  final pulumi.Input<String>? eTag;
  /// The details of any error.
  final pulumi.Input<ErrorDetailsResponse>? error;
  /// The type of the export run.
  final pulumi.Input<String>? executionType;
  /// The name of the exported file.
  final pulumi.Input<String>? fileName;
  /// Resource Id.
  final pulumi.Input<String> id;
  /// Resource name.
  final pulumi.Input<String> name;
  /// The time when the export run finished.
  final pulumi.Input<String>? processingEndTime;
  /// The time when export was picked up to be run.
  final pulumi.Input<String>? processingStartTime;
  /// The export settings that were in effect for this run.
  final pulumi.Input<CommonExportPropertiesResponse>? runSettings;
  /// The last known status of the export run.
  final pulumi.Input<String>? status;
  /// The identifier for the entity that triggered the export. For on-demand runs it is the user email. For scheduled runs it is 'System'.
  final pulumi.Input<String>? submittedBy;
  /// The time when export was queued to be run.
  final pulumi.Input<String>? submittedTime;
  /// Resource type.
  final pulumi.Input<String> type;

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
      'error': ?pulumi.Input.mapOptionalInputValue<ErrorDetailsResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'executionType': ?executionType,
      'fileName': ?fileName,
      'id': id,
      'name': name,
      'processingEndTime': ?processingEndTime,
      'processingStartTime': ?processingStartTime,
      'runSettings': ?pulumi.Input.mapOptionalInputValue<CommonExportPropertiesResponse, Map<String, dynamic>>(runSettings, (value) => value.toMap()),
      'status': ?status,
      'submittedBy': ?submittedBy,
      'submittedTime': ?submittedTime,
      'type': type,
    };
  }

  factory ExportRunResponse.fromMap(Map<String, dynamic> map) {
    return ExportRunResponse(
      eTag: map['eTag'] == null ? null : (map['eTag'] as String).input(),
      error: map['error'] == null ? null : (ErrorDetailsResponse.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      executionType: map['executionType'] == null ? null : (map['executionType'] as String).input(),
      fileName: map['fileName'] == null ? null : (map['fileName'] as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      processingEndTime: map['processingEndTime'] == null ? null : (map['processingEndTime'] as String).input(),
      processingStartTime: map['processingStartTime'] == null ? null : (map['processingStartTime'] as String).input(),
      runSettings: map['runSettings'] == null ? null : (CommonExportPropertiesResponse.fromMap((map['runSettings'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      submittedBy: map['submittedBy'] == null ? null : (map['submittedBy'] as String).input(),
      submittedTime: map['submittedTime'] == null ? null : (map['submittedTime'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

