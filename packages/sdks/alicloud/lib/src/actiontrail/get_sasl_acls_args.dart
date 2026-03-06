// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_actiontrail_get_sasl_acls_get_sasl_acls_args_doc}
/// Arguments for getSaslAcls.
/// {@endtemplate}
/// {@macro pulumi_actiontrail_get_sasl_acls_get_sasl_acls_args_doc}
class GetSaslAclsArgs {
  /// Get results for the specified resource name.
  final pulumi.Input<String> aclResourceName;
  /// Get results for the specified resource type.
  final pulumi.Input<String> aclResourceType;
  /// ID of the ALIKAFKA Instance that owns the sasl acls.
  final pulumi.Input<String> instanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Get results for the specified username.
  final pulumi.Input<String> username;

  /// Creates a new [GetSaslAclsArgs].
  /// [aclResourceName] Get results for the specified resource name.
  /// [aclResourceType] Get results for the specified resource type.
  /// [instanceId] ID of the ALIKAFKA Instance that owns the sasl acls.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [username] Get results for the specified username.
  const GetSaslAclsArgs({
    required this.aclResourceName,
    required this.aclResourceType,
    required this.instanceId,
    this.outputFile,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclResourceName': aclResourceName,
      'aclResourceType': aclResourceType,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
      'username': username,
    };
  }

  factory GetSaslAclsArgs.fromMap(Map<String, dynamic> map) {
    return GetSaslAclsArgs(
      aclResourceName: pulumi.Input.fromValue(map['aclResourceName'] as String),
      aclResourceType: pulumi.Input.fromValue(map['aclResourceType'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

