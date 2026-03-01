// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_control_security_token_properties.dart';

/// {@template pulumi_automation_source_control_args_doc}
/// The set of arguments for SourceControl.
/// {@endtemplate}
/// {@macro pulumi_automation_source_control_args_doc}
class SourceControlArgs {
  /// The auto async of the source control. Default is false.
  final pulumi.Input<bool>? autoSync;
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The repo branch of the source control. Include branch as empty string for VsoTfvc.
  final pulumi.Input<String>? branch;
  /// The user description of the source control.
  final pulumi.Input<String>? description;
  /// The folder path of the source control. Path must be relative.
  final pulumi.Input<String>? folderPath;
  /// The auto publish of the source control. Default is true.
  final pulumi.Input<bool>? publishRunbook;
  /// The repo url of the source control.
  final pulumi.Input<String>? repoUrl;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The authorization token for the repo of the source control.
  final pulumi.Input<SourceControlSecurityTokenProperties>? securityToken;
  /// The source control name.
  final pulumi.Input<String>? sourceControlName;
  /// The source type. Must be one of VsoGit, VsoTfvc, GitHub, case sensitive.
  final pulumi.Input<String>? sourceType;

  /// Creates a new [SourceControlArgs].
  /// [autoSync] The auto async of the source control. Default is false.
  /// [automationAccountName] The name of the automation account.
  /// [branch] The repo branch of the source control. Include branch as empty string for VsoTfvc.
  /// [description] The user description of the source control.
  /// [folderPath] The folder path of the source control. Path must be relative.
  /// [publishRunbook] The auto publish of the source control. Default is true.
  /// [repoUrl] The repo url of the source control.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [securityToken] The authorization token for the repo of the source control.
  /// [sourceControlName] The source control name.
  /// [sourceType] The source type. Must be one of VsoGit, VsoTfvc, GitHub, case sensitive.
  SourceControlArgs({
    bool? autoSync,
    required String automationAccountName,
    String? branch,
    String? description,
    String? folderPath,
    bool? publishRunbook,
    String? repoUrl,
    required String resourceGroupName,
    SourceControlSecurityTokenProperties? securityToken,
    String? sourceControlName,
    String? sourceType,
  }) :
      autoSync = pulumi.Input.asOptionalInput<bool>(autoSync),
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      branch = pulumi.Input.asOptionalInput<String>(branch),
      description = pulumi.Input.asOptionalInput<String>(description),
      folderPath = pulumi.Input.asOptionalInput<String>(folderPath),
      publishRunbook = pulumi.Input.asOptionalInput<bool>(publishRunbook),
      repoUrl = pulumi.Input.asOptionalInput<String>(repoUrl),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityToken = pulumi.Input.asOptionalInput<SourceControlSecurityTokenProperties>(securityToken),
      sourceControlName = pulumi.Input.asOptionalInput<String>(sourceControlName),
      sourceType = pulumi.Input.asOptionalInput<String>(sourceType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSync': ?autoSync,
      'automationAccountName': automationAccountName,
      'branch': ?branch,
      'description': ?description,
      'folderPath': ?folderPath,
      'publishRunbook': ?publishRunbook,
      'repoUrl': ?repoUrl,
      'resourceGroupName': resourceGroupName,
      'securityToken': ?pulumi.Input.mapOptionalInputValue<SourceControlSecurityTokenProperties, Map<String, dynamic>>(securityToken, (value) => value.toMap()),
      'sourceControlName': ?sourceControlName,
      'sourceType': ?sourceType,
    };
  }

  factory SourceControlArgs.fromMap(Map<String, dynamic> map) {
    return SourceControlArgs(
      autoSync: map['autoSync'] == null ? null : map['autoSync'] as bool,
      automationAccountName: map['automationAccountName'] as String,
      branch: map['branch'] == null ? null : map['branch'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      folderPath: map['folderPath'] == null ? null : map['folderPath'] as String,
      publishRunbook: map['publishRunbook'] == null ? null : map['publishRunbook'] as bool,
      repoUrl: map['repoUrl'] == null ? null : map['repoUrl'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      securityToken: map['securityToken'] == null ? null : SourceControlSecurityTokenProperties.fromMap((map['securityToken'] as Map).cast<String, dynamic>()),
      sourceControlName: map['sourceControlName'] == null ? null : map['sourceControlName'] as String,
      sourceType: map['sourceType'] == null ? null : map['sourceType'] as String,
    );
  }
}

