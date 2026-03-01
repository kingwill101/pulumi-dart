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
  final pulumi.Input<String>? description;
  /// Gets or sets the draft runbook properties.
  final pulumi.Input<RunbookDraft>? draft;
  /// Gets or sets the location of the resource.
  final pulumi.Input<String>? location;
  /// Gets or sets the activity-level tracing options of the runbook.
  final pulumi.Input<int>? logActivityTrace;
  /// Gets or sets progress log option.
  final pulumi.Input<bool>? logProgress;
  /// Gets or sets verbose log option.
  final pulumi.Input<bool>? logVerbose;
  /// Gets or sets the name of the resource.
  final pulumi.Input<String>? name;
  /// Gets or sets the published runbook content link.
  final pulumi.Input<ContentLink>? publishContentLink;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The runbook name.
  final pulumi.Input<String>? runbookName;
  /// Gets or sets the type of the runbook.
  final pulumi.Input<String> runbookType;
  /// Gets or sets the tags attached to the resource.
  final pulumi.Input<Map<String, String>>? tags;

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
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [runbookName] The runbook name.
  /// [runbookType] Gets or sets the type of the runbook.
  /// [tags] Gets or sets the tags attached to the resource.
  RunbookArgs({
    required String automationAccountName,
    String? description,
    RunbookDraft? draft,
    String? location,
    int? logActivityTrace,
    bool? logProgress,
    bool? logVerbose,
    String? name,
    ContentLink? publishContentLink,
    required String resourceGroupName,
    String? runbookName,
    required String runbookType,
    Map<String, String>? tags,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      description = pulumi.Input.asOptionalInput<String>(description),
      draft = pulumi.Input.asOptionalInput<RunbookDraft>(draft),
      location = pulumi.Input.asOptionalInput<String>(location),
      logActivityTrace = pulumi.Input.asOptionalInput<int>(logActivityTrace),
      logProgress = pulumi.Input.asOptionalInput<bool>(logProgress),
      logVerbose = pulumi.Input.asOptionalInput<bool>(logVerbose),
      name = pulumi.Input.asOptionalInput<String>(name),
      publishContentLink = pulumi.Input.asOptionalInput<ContentLink>(publishContentLink),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runbookName = pulumi.Input.asOptionalInput<String>(runbookName),
      runbookType = pulumi.Input.asInput<String>(runbookType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      'tags': ?tags,
    };
  }

  factory RunbookArgs.fromMap(Map<String, dynamic> map) {
    return RunbookArgs(
      automationAccountName: map['automationAccountName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      draft: map['draft'] == null ? null : RunbookDraft.fromMap((map['draft'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      logActivityTrace: map['logActivityTrace'] == null ? null : map['logActivityTrace'] as int,
      logProgress: map['logProgress'] == null ? null : map['logProgress'] as bool,
      logVerbose: map['logVerbose'] == null ? null : map['logVerbose'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      publishContentLink: map['publishContentLink'] == null ? null : ContentLink.fromMap((map['publishContentLink'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      runbookName: map['runbookName'] == null ? null : map['runbookName'] as String,
      runbookType: map['runbookType'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

