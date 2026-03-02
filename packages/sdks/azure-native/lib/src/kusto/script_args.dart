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
    required this.clusterName,
    this.continueOnErrors,
    required this.databaseName,
    this.forceUpdateTag,
    this.principalPermissionsAction,
    required this.resourceGroupName,
    this.scriptContent,
    this.scriptLevel,
    this.scriptName,
    this.scriptUrl,
    this.scriptUrlSasToken,
  });

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
      clusterName: (map['clusterName'] as String).input(),
      continueOnErrors: map['continueOnErrors'] == null ? null : (map['continueOnErrors'] as bool).input(),
      databaseName: (map['databaseName'] as String).input(),
      forceUpdateTag: map['forceUpdateTag'] == null ? null : (map['forceUpdateTag'] as String).input(),
      principalPermissionsAction: map['principalPermissionsAction'] == null ? null : (map['principalPermissionsAction'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scriptContent: map['scriptContent'] == null ? null : (map['scriptContent'] as String).input(),
      scriptLevel: map['scriptLevel'] == null ? null : (map['scriptLevel'] as String).input(),
      scriptName: map['scriptName'] == null ? null : (map['scriptName'] as String).input(),
      scriptUrl: map['scriptUrl'] == null ? null : (map['scriptUrl'] as String).input(),
      scriptUrlSasToken: map['scriptUrlSasToken'] == null ? null : (map['scriptUrlSasToken'] as String).input(),
    );
  }
}

