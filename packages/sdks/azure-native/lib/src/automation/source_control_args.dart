// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_control_security_token_properties.dart';

/// {@template pulumi_automation_source_control_args_doc}
/// The set of arguments for SourceControl.
/// {@endtemplate}
/// {@macro pulumi_automation_source_control_args_doc}
class SourceControlArgs {
  /// The auto async of the source control. Default is false.
  final pulumi.Input<bool?>? autoSync;
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The repo branch of the source control. Include branch as empty string for VsoTfvc.
  final pulumi.Input<String?>? branch;
  /// The user description of the source control.
  final pulumi.Input<String?>? description;
  /// The folder path of the source control. Path must be relative.
  final pulumi.Input<String?>? folderPath;
  /// The auto publish of the source control. Default is true.
  final pulumi.Input<bool?>? publishRunbook;
  /// The repo url of the source control.
  final pulumi.Input<String?>? repoUrl;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The authorization token for the repo of the source control.
  final pulumi.Input<SourceControlSecurityTokenProperties?>? securityToken;
  /// The name of source control.
  final pulumi.Input<String?>? sourceControlName;
  /// The source type. Must be one of VsoGit, VsoTfvc, GitHub, case sensitive.
  final pulumi.Input<dynamic>? sourceType;

  /// Creates a new [SourceControlArgs].
  /// [autoSync] The auto async of the source control. Default is false.
  /// [automationAccountName] The name of the automation account.
  /// [branch] The repo branch of the source control. Include branch as empty string for VsoTfvc.
  /// [description] The user description of the source control.
  /// [folderPath] The folder path of the source control. Path must be relative.
  /// [publishRunbook] The auto publish of the source control. Default is true.
  /// [repoUrl] The repo url of the source control.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityToken] The authorization token for the repo of the source control.
  /// [sourceControlName] The name of source control.
  /// [sourceType] The source type. Must be one of VsoGit, VsoTfvc, GitHub, case sensitive.
  const SourceControlArgs({
    this.autoSync,
    required this.automationAccountName,
    this.branch,
    this.description,
    this.folderPath,
    this.publishRunbook,
    this.repoUrl,
    required this.resourceGroupName,
    this.securityToken,
    this.sourceControlName,
    this.sourceType,
  });

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
      autoSync: (() { final guardedValue = map['autoSync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folderPath: (() { final guardedValue = map['folderPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publishRunbook: (() { final guardedValue = map['publishRunbook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      repoUrl: (() { final guardedValue = map['repoUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityToken: (() { final guardedValue = map['securityToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceControlSecurityTokenProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceControlName: (() { final guardedValue = map['sourceControlName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
