// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_link.dart';
import 'runbook_parameter.dart';

class RunbookDraft {
  /// Gets or sets the creation time of the runbook draft.
  final pulumi.Input<String>? creationTime;
  /// Gets or sets the draft runbook content link.
  final pulumi.Input<ContentLink>? draftContentLink;
  /// Gets or sets whether runbook is in edit mode.
  final pulumi.Input<bool>? inEdit;
  /// Gets or sets the last modified time of the runbook draft.
  final pulumi.Input<String>? lastModifiedTime;
  /// Gets or sets the runbook output types.
  final pulumi.Input<List<String>>? outputTypes;
  /// Gets or sets the runbook draft parameters.
  final pulumi.Input<Map<String, RunbookParameter>>? parameters;

  /// Creates a new [RunbookDraft].
  /// [creationTime] Gets or sets the creation time of the runbook draft.
  /// [draftContentLink] Gets or sets the draft runbook content link.
  /// [inEdit] Gets or sets whether runbook is in edit mode.
  /// [lastModifiedTime] Gets or sets the last modified time of the runbook draft.
  /// [outputTypes] Gets or sets the runbook output types.
  /// [parameters] Gets or sets the runbook draft parameters.
  RunbookDraft({
    this.creationTime,
    this.draftContentLink,
    this.inEdit,
    this.lastModifiedTime,
    this.outputTypes,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': ?creationTime,
      'draftContentLink': ?pulumi.Input.mapOptionalInputValue<ContentLink, Map<String, dynamic>>(draftContentLink, (value) => value.toMap()),
      'inEdit': ?inEdit,
      'lastModifiedTime': ?lastModifiedTime,
      'outputTypes': ?outputTypes,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, RunbookParameter>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<RunbookParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RunbookDraft.fromMap(Map<String, dynamic> map) {
    return RunbookDraft(
      creationTime: map['creationTime'] == null ? null : (map['creationTime']! as String).input(),
      draftContentLink: map['draftContentLink'] == null ? null : (ContentLink.fromMap((map['draftContentLink']! as Map).cast<String, dynamic>())).input(),
      inEdit: map['inEdit'] == null ? null : (map['inEdit']! as bool).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime']! as String).input(),
      outputTypes: map['outputTypes'] == null ? null : ((map['outputTypes']! as List).cast<String>()).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<RunbookParameter>(map['parameters']!, (value) => RunbookParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

