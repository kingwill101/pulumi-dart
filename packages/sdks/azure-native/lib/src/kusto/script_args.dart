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
  const ScriptArgs({
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
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      continueOnErrors: (() { final guardedValue = map['continueOnErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      forceUpdateTag: (() { final guardedValue = map['forceUpdateTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalPermissionsAction: (() { final guardedValue = map['principalPermissionsAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scriptContent: (() { final guardedValue = map['scriptContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptLevel: (() { final guardedValue = map['scriptLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptUrl: (() { final guardedValue = map['scriptUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptUrlSasToken: (() { final guardedValue = map['scriptUrlSasToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

