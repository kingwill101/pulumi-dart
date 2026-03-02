// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runbook_parameter_response.dart';

class RunbookDraftResponse {
  /// Gets or sets the creation time of the runbook draft.
  final pulumi.Input<String>? creationTime;
  /// Gets or sets whether runbook is in edit mode.
  final pulumi.Input<bool>? inEdit;
  /// Gets or sets the last modified time of the runbook draft.
  final pulumi.Input<String>? lastModifiedTime;
  /// Gets or sets the runbook output types.
  final pulumi.Input<List<String>>? outputTypes;
  /// Gets or sets the runbook draft parameters.
  final pulumi.Input<Map<String, RunbookParameterResponse>>? parameters;

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
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, RunbookParameterResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<RunbookParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RunbookDraftResponse.fromMap(Map<String, dynamic> map) {
    return RunbookDraftResponse(
      creationTime: map['creationTime'] == null ? null : (map['creationTime'] as String).input(),
      inEdit: map['inEdit'] == null ? null : (map['inEdit'] as bool).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime'] as String).input(),
      outputTypes: map['outputTypes'] == null ? null : ((map['outputTypes'] as List).cast<String>()).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<RunbookParameterResponse>(map['parameters'], (value) => RunbookParameterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

