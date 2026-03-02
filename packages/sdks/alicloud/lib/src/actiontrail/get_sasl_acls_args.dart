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
  GetSaslAclsArgs({
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
      aclResourceName: (map['aclResourceName'] as String).input(),
      aclResourceType: (map['aclResourceType'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

