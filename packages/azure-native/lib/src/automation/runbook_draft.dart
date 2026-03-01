// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_link.dart';
import 'runbook_parameter.dart';

class RunbookDraft {
  /// Gets or sets the creation time of the runbook draft.
  final String? creationTime;
  /// Gets or sets the draft runbook content link.
  final ContentLink? draftContentLink;
  /// Gets or sets whether runbook is in edit mode.
  final bool? inEdit;
  /// Gets or sets the last modified time of the runbook draft.
  final String? lastModifiedTime;
  /// Gets or sets the runbook output types.
  final List<String>? outputTypes;
  /// Gets or sets the runbook draft parameters.
  final Map<String, RunbookParameter>? parameters;

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
      'draftContentLink': ?draftContentLink == null ? null : draftContentLink!.toMap(),
      'inEdit': ?inEdit,
      'lastModifiedTime': ?lastModifiedTime,
      'outputTypes': ?outputTypes,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<RunbookParameter, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
    };
  }

  factory RunbookDraft.fromMap(Map<String, dynamic> map) {
    return RunbookDraft(
      creationTime: map['creationTime'] == null ? null : map['creationTime'] as String,
      draftContentLink: map['draftContentLink'] == null ? null : ContentLink.fromMap((map['draftContentLink'] as Map).cast<String, dynamic>()),
      inEdit: map['inEdit'] == null ? null : map['inEdit'] as bool,
      lastModifiedTime: map['lastModifiedTime'] == null ? null : map['lastModifiedTime'] as String,
      outputTypes: map['outputTypes'] == null ? null : (map['outputTypes'] as List).cast<String>(),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<RunbookParameter>(map['parameters'], (value) => RunbookParameter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

