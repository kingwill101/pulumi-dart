// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_link.dart';
import 'runbook_draft.dart';

/// {@template pulumi_automation_runbook_args_doc}
/// The set of arguments for Runbook.
/// {@endtemplate}
/// {@macro pulumi_automation_runbook_args_doc}
class RunbookArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Gets or sets the description of the runbook.
  final pulumi.Input<String?>? description;
  /// Gets or sets the draft runbook properties.
  final pulumi.Input<RunbookDraft?>? draft;
  /// Gets or sets the location of the resource.
  final pulumi.Input<String?>? location;
  /// Gets or sets the activity-level tracing options of the runbook.
  final pulumi.Input<int?>? logActivityTrace;
  /// Gets or sets progress log option.
  final pulumi.Input<bool?>? logProgress;
  /// Gets or sets verbose log option.
  final pulumi.Input<bool?>? logVerbose;
  /// Gets or sets the name of the resource.
  final pulumi.Input<String?>? name;
  /// Gets or sets the published runbook content link.
  final pulumi.Input<ContentLink?>? publishContentLink;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The runbook name.
  final pulumi.Input<String?>? runbookName;
  /// Gets or sets the type of the runbook.
  final pulumi.Input<dynamic> runbookType;
  /// Environment of the runbook.
  final pulumi.Input<String?>? runtimeEnvironment;
  /// Gets or sets the tags attached to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [RunbookArgs].
  /// [automationAccountName] The name of the automation account.
  /// [description] Gets or sets the description of the runbook.
  /// [draft] Gets or sets the draft runbook properties.
  /// [location] Gets or sets the location of the resource.
  /// [logActivityTrace] Gets or sets the activity-level tracing options of the runbook.
  /// [logProgress] Gets or sets progress log option.
  /// [logVerbose] Gets or sets verbose log option.
  /// [name] Gets or sets the name of the resource.
  /// [publishContentLink] Gets or sets the published runbook content link.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [runbookName] The runbook name.
  /// [runbookType] Gets or sets the type of the runbook.
  /// [runtimeEnvironment] Environment of the runbook.
  /// [tags] Gets or sets the tags attached to the resource.
  const RunbookArgs({
    required this.automationAccountName,
    this.description,
    this.draft,
    this.location,
    this.logActivityTrace,
    this.logProgress,
    this.logVerbose,
    this.name,
    this.publishContentLink,
    required this.resourceGroupName,
    this.runbookName,
    required this.runbookType,
    this.runtimeEnvironment,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'description': ?description,
      'draft': ?pulumi.Input.mapOptionalInputValue<RunbookDraft, Map<String, dynamic>>(draft, (value) => value.toMap()),
      'location': ?location,
      'logActivityTrace': ?logActivityTrace,
      'logProgress': ?logProgress,
      'logVerbose': ?logVerbose,
      'name': ?name,
      'publishContentLink': ?pulumi.Input.mapOptionalInputValue<ContentLink, Map<String, dynamic>>(publishContentLink, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'runbookName': ?runbookName,
      'runbookType': runbookType,
      'runtimeEnvironment': ?runtimeEnvironment,
      'tags': ?tags,
    };
  }

  factory RunbookArgs.fromMap(Map<String, dynamic> map) {
    return RunbookArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      draft: (() { final guardedValue = map['draft']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RunbookDraft.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logActivityTrace: (() { final guardedValue = map['logActivityTrace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      logProgress: (() { final guardedValue = map['logProgress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logVerbose: (() { final guardedValue = map['logVerbose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publishContentLink: (() { final guardedValue = map['publishContentLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContentLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      runbookName: (() { final guardedValue = map['runbookName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runbookType: pulumi.Input.fromValue(map['runbookType']),
      runtimeEnvironment: (() { final guardedValue = map['runtimeEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
