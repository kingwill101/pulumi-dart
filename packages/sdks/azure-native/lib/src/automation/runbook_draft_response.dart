// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runbook_parameter_response.dart';

class RunbookDraftResponse {
  /// Gets or sets the creation time of the runbook draft.
  final String? creationTime;
  /// Gets or sets whether runbook is in edit mode.
  final bool? inEdit;
  /// Gets or sets the last modified time of the runbook draft.
  final String? lastModifiedTime;
  /// Gets or sets the runbook output types.
  final List<String>? outputTypes;
  /// Gets or sets the runbook draft parameters.
  final Map<String, RunbookParameterResponse>? parameters;

  /// Creates a new [RunbookDraftResponse].
  /// [creationTime] Gets or sets the creation time of the runbook draft.
  /// [inEdit] Gets or sets whether runbook is in edit mode.
  /// [lastModifiedTime] Gets or sets the last modified time of the runbook draft.
  /// [outputTypes] Gets or sets the runbook output types.
  /// [parameters] Gets or sets the runbook draft parameters.
  RunbookDraftResponse({
    this.creationTime,
    this.inEdit,
    this.lastModifiedTime,
    this.outputTypes,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': ?creationTime,
      'inEdit': ?inEdit,
      'lastModifiedTime': ?lastModifiedTime,
      'outputTypes': ?outputTypes,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<RunbookParameterResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
    };
  }

  factory RunbookDraftResponse.fromMap(Map<String, dynamic> map) {
    return RunbookDraftResponse(
      creationTime: map['creationTime'] == null ? null : map['creationTime'] as String,
      inEdit: map['inEdit'] == null ? null : map['inEdit'] as bool,
      lastModifiedTime: map['lastModifiedTime'] == null ? null : map['lastModifiedTime'] as String,
      outputTypes: map['outputTypes'] == null ? null : (map['outputTypes'] as List).cast<String>(),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<RunbookParameterResponse>(map['parameters'], (value) => RunbookParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

