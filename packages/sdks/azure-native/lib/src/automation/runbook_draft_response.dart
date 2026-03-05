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
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inEdit: (() { final guardedValue = map['inEdit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputTypes: (() { final guardedValue = map['outputTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<RunbookParameterResponse>(guardedValue, (value) => RunbookParameterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

