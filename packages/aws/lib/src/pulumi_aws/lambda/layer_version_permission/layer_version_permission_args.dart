// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LayerVersionPermission.
class LayerVersionPermissionArgs {
  /// Action that will be allowed. `lambda:GetLayerVersion` is the standard value for layer access.
  final pulumi.Input<String> action;

  /// Name or ARN of the Lambda Layer.
  final pulumi.Input<String> layerName;

  /// AWS Organization ID that should be able to use your Lambda Layer. `principal` should be set to `*` when `organization_id` is provided.
  final pulumi.Input<String>? organizationId;

  /// AWS account ID that should be able to use your Lambda Layer. Use `*` to share with all AWS accounts.
  final pulumi.Input<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Whether to retain the permission when the resource is destroyed. Default is `false`.
  final pulumi.Input<bool>? skipDestroy;

  /// Unique identifier for the permission statement.
  final pulumi.Input<String> statementId;

  /// Version of Lambda Layer to grant access to. Note: permissions only apply to a single version of a layer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> versionNumber;

  LayerVersionPermissionArgs({
    required this.action,
    required this.layerName,
    this.organizationId,
    required this.principal,
    this.region,
    this.skipDestroy,
    required this.statementId,
    required this.versionNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['layerName'] = layerName;
    final organizationIdValue = organizationId;
    if (organizationIdValue != null) {
      map['organizationId'] = organizationIdValue;
    }
    map['principal'] = principal;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final skipDestroyValue = skipDestroy;
    if (skipDestroyValue != null) {
      map['skipDestroy'] = skipDestroyValue;
    }
    map['statementId'] = statementId;
    map['versionNumber'] = versionNumber;
    return map;
  }

  factory LayerVersionPermissionArgs.fromMap(Map<String, dynamic> map) {
    return LayerVersionPermissionArgs(
      action: pulumi.Input.asInput<String>(map['action']),
      layerName: pulumi.Input.asInput<String>(map['layerName']),
      organizationId:
          pulumi.Input.asOptionalInput<String>(map['organizationId']),
      principal: pulumi.Input.asInput<String>(map['principal']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      skipDestroy: pulumi.Input.asOptionalInput<bool>(map['skipDestroy']),
      statementId: pulumi.Input.asInput<String>(map['statementId']),
      versionNumber: pulumi.Input.asInput<int>(map['versionNumber']),
    );
  }
}
