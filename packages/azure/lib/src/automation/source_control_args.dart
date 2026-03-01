// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_control_security.dart';

/// {@template pulumi_automation_source_control_source_control_args_doc}
/// The set of arguments for SourceControl.
/// {@endtemplate}
/// {@macro pulumi_automation_source_control_source_control_args_doc}
class SourceControlArgs {
  /// Whether auto async the Source Control.
  final pulumi.Input<bool>? automaticSync;
  /// The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created.
  final pulumi.Input<String> automationAccountId;
  /// Specify the repo branch of the Source Control. Empty value is valid only for `VsoTfvc`.
  final pulumi.Input<String>? branch;
  /// A short description of the Source Control.
  final pulumi.Input<String>? description;
  /// The folder path of the source control. This Path must be relative.
  final pulumi.Input<String> folderPath;
  /// The name which should be used for this Automation Source Control. Changing this forces a new Automation Source Control to be created.
  final pulumi.Input<String>? name;
  /// Whether auto publish the Source Control. Defaults to `true`.
  final pulumi.Input<bool>? publishRunbookEnabled;
  /// The Repository URL of the source control.
  final pulumi.Input<String> repositoryUrl;
  /// A `security` block as defined below.
  final pulumi.Input<SourceControlSecurity> security;
  /// The source type of Source Control, possible vaules are `VsoGit`, `VsoTfvc` and `GitHub`, and the value is case sensitive.
  final pulumi.Input<String> sourceControlType;

  /// Creates a new [SourceControlArgs].
  /// [automaticSync] Whether auto async the Source Control.
  /// [automationAccountId] The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created.
  /// [branch] Specify the repo branch of the Source Control. Empty value is valid only for `VsoTfvc`.
  /// [description] A short description of the Source Control.
  /// [folderPath] The folder path of the source control. This Path must be relative.
  /// [name] The name which should be used for this Automation Source Control. Changing this forces a new Automation Source Control to be created.
  /// [publishRunbookEnabled] Whether auto publish the Source Control. Defaults to `true`.
  /// [repositoryUrl] The Repository URL of the source control.
  /// [security] A `security` block as defined below.
  /// [sourceControlType] The source type of Source Control, possible vaules are `VsoGit`, `VsoTfvc` and `GitHub`, and the value is case sensitive.
  SourceControlArgs({
    bool? automaticSync,
    required String automationAccountId,
    String? branch,
    String? description,
    required String folderPath,
    String? name,
    bool? publishRunbookEnabled,
    required String repositoryUrl,
    required SourceControlSecurity security,
    required String sourceControlType,
  }) :
      automaticSync = pulumi.Input.asOptionalInput<bool>(automaticSync),
      automationAccountId = pulumi.Input.asInput<String>(automationAccountId),
      branch = pulumi.Input.asOptionalInput<String>(branch),
      description = pulumi.Input.asOptionalInput<String>(description),
      folderPath = pulumi.Input.asInput<String>(folderPath),
      name = pulumi.Input.asOptionalInput<String>(name),
      publishRunbookEnabled = pulumi.Input.asOptionalInput<bool>(publishRunbookEnabled),
      repositoryUrl = pulumi.Input.asInput<String>(repositoryUrl),
      security = pulumi.Input.asInput<SourceControlSecurity>(security),
      sourceControlType = pulumi.Input.asInput<String>(sourceControlType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticSync': ?automaticSync,
      'automationAccountId': automationAccountId,
      'branch': ?branch,
      'description': ?description,
      'folderPath': folderPath,
      'name': ?name,
      'publishRunbookEnabled': ?publishRunbookEnabled,
      'repositoryUrl': repositoryUrl,
      'security': pulumi.Input.mapInputValue<SourceControlSecurity, Map<String, dynamic>>(security, (value) => value.toMap()),
      'sourceControlType': sourceControlType,
    };
  }

  factory SourceControlArgs.fromMap(Map<String, dynamic> map) {
    return SourceControlArgs(
      automaticSync: map['automaticSync'] == null ? null : map['automaticSync'] as bool,
      automationAccountId: map['automationAccountId'] as String,
      branch: map['branch'] == null ? null : map['branch'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      folderPath: map['folderPath'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      publishRunbookEnabled: map['publishRunbookEnabled'] == null ? null : map['publishRunbookEnabled'] as bool,
      repositoryUrl: map['repositoryUrl'] as String,
      security: SourceControlSecurity.fromMap((map['security'] as Map).cast<String, dynamic>()),
      sourceControlType: map['sourceControlType'] as String,
    );
  }
}

