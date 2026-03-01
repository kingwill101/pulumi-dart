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
    required pulumi.Output<String> aclResourceName,
    required pulumi.Output<String> aclResourceType,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> username,
  }) :
      aclResourceName = pulumi.Input.asInput<String>(aclResourceName),
      aclResourceType = pulumi.Input.asInput<String>(aclResourceType),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      username = pulumi.Input.asInput<String>(username);

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
      aclResourceName: pulumi.Output.create<String>(map['aclResourceName'] as String),
      aclResourceType: pulumi.Output.create<String>(map['aclResourceType'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      username: pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

