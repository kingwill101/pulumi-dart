// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_script_args_doc}
/// The set of arguments for Script.
/// {@endtemplate}
/// {@macro pulumi_kusto_script_args_doc}
class ScriptArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// Flag that indicates whether to continue if one of the command fails.
  final pulumi.Input<bool>? continueOnErrors;
  /// The name of the database in the Kusto cluster.
  final pulumi.Input<String> databaseName;
  /// A unique string. If changed the script will be applied again.
  final pulumi.Input<String>? forceUpdateTag;
  /// Indicates if the permissions for the script caller are kept following completion of the script.
  final pulumi.Input<String>? principalPermissionsAction;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The script content. This property should be used when the script is provide inline and not through file in a SA. Must not be used together with scriptUrl and scriptUrlSasToken properties.
  final pulumi.Input<String>? scriptContent;
  /// Differentiates between the type of script commands included - Database or Cluster. The default is Database.
  final pulumi.Input<String>? scriptLevel;
  /// The name of the Kusto database script.
  final pulumi.Input<String>? scriptName;
  /// The url to the KQL script blob file. Must not be used together with scriptContent property
  final pulumi.Input<String>? scriptUrl;
  /// The SaS token that provide read access to the file which contain the script. Must be provided when using scriptUrl property.
  final pulumi.Input<String>? scriptUrlSasToken;

  /// Creates a new [ScriptArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [continueOnErrors] Flag that indicates whether to continue if one of the command fails.
  /// [databaseName] The name of the database in the Kusto cluster.
  /// [forceUpdateTag] A unique string. If changed the script will be applied again.
  /// [principalPermissionsAction] Indicates if the permissions for the script caller are kept following completion of the script.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scriptContent] The script content. This property should be used when the script is provide inline and not through file in a SA. Must not be used together with scriptUrl and scriptUrlSasToken properties.
  /// [scriptLevel] Differentiates between the type of script commands included - Database or Cluster. The default is Database.
  /// [scriptName] The name of the Kusto database script.
  /// [scriptUrl] The url to the KQL script blob file. Must not be used together with scriptContent property
  /// [scriptUrlSasToken] The SaS token that provide read access to the file which contain the script. Must be provided when using scriptUrl property.
  ScriptArgs({
    required pulumi.Output<String> clusterName,
    pulumi.Output<bool>? continueOnErrors,
    required pulumi.Output<String> databaseName,
    pulumi.Output<String>? forceUpdateTag,
    pulumi.Output<String>? principalPermissionsAction,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? scriptContent,
    pulumi.Output<String>? scriptLevel,
    pulumi.Output<String>? scriptName,
    pulumi.Output<String>? scriptUrl,
    pulumi.Output<String>? scriptUrlSasToken,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      continueOnErrors = pulumi.Input.asOptionalInput<bool>(continueOnErrors),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      forceUpdateTag = pulumi.Input.asOptionalInput<String>(forceUpdateTag),
      principalPermissionsAction = pulumi.Input.asOptionalInput<String>(principalPermissionsAction),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scriptContent = pulumi.Input.asOptionalInput<String>(scriptContent),
      scriptLevel = pulumi.Input.asOptionalInput<String>(scriptLevel),
      scriptName = pulumi.Input.asOptionalInput<String>(scriptName),
      scriptUrl = pulumi.Input.asOptionalInput<String>(scriptUrl),
      scriptUrlSasToken = pulumi.Input.asOptionalInput<String>(scriptUrlSasToken);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'continueOnErrors': ?continueOnErrors,
      'databaseName': databaseName,
      'forceUpdateTag': ?forceUpdateTag,
      'principalPermissionsAction': ?principalPermissionsAction,
      'resourceGroupName': resourceGroupName,
      'scriptContent': ?scriptContent,
      'scriptLevel': ?scriptLevel,
      'scriptName': ?scriptName,
      'scriptUrl': ?scriptUrl,
      'scriptUrlSasToken': ?scriptUrlSasToken,
    };
  }

  factory ScriptArgs.fromMap(Map<String, dynamic> map) {
    return ScriptArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      continueOnErrors: map['continueOnErrors'] == null ? null : pulumi.Output.create<bool>(map['continueOnErrors'] as bool),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : pulumi.Output.create<String>(map['forceUpdateTag'] as String),
      principalPermissionsAction: map['principalPermissionsAction'] == null ? null : pulumi.Output.create<String>(map['principalPermissionsAction'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scriptContent: map['scriptContent'] == null ? null : pulumi.Output.create<String>(map['scriptContent'] as String),
      scriptLevel: map['scriptLevel'] == null ? null : pulumi.Output.create<String>(map['scriptLevel'] as String),
      scriptName: map['scriptName'] == null ? null : pulumi.Output.create<String>(map['scriptName'] as String),
      scriptUrl: map['scriptUrl'] == null ? null : pulumi.Output.create<String>(map['scriptUrl'] as String),
      scriptUrlSasToken: map['scriptUrlSasToken'] == null ? null : pulumi.Output.create<String>(map['scriptUrlSasToken'] as String),
    );
  }
}

