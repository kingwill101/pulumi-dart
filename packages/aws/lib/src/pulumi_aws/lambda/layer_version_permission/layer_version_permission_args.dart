// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LayerVersionPermission.
class LayerVersionPermissionArgs {
  /// Action that will be allowed. `lambda:GetLayerVersion` is the standard value for layer access.
  final Input<String> action;

  /// Name or ARN of the Lambda Layer.
  final Input<String> layerName;

  /// AWS Organization ID that should be able to use your Lambda Layer. `principal` should be set to `*` when `organization_id` is provided.
  final Input<String>? organizationId;

  /// AWS account ID that should be able to use your Lambda Layer. Use `*` to share with all AWS accounts.
  final Input<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Whether to retain the permission when the resource is destroyed. Default is `false`.
  final Input<bool>? skipDestroy;

  /// Unique identifier for the permission statement.
  final Input<String> statementId;

  /// Version of Lambda Layer to grant access to. Note: permissions only apply to a single version of a layer.
  ///
  /// The following arguments are optional:
  final Input<int> versionNumber;

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
      action: Input.asInput<String>(map['action']),
      layerName: Input.asInput<String>(map['layerName']),
      organizationId: Input.asOptionalInput<String>(map['organizationId']),
      principal: Input.asInput<String>(map['principal']),
      region: Input.asOptionalInput<String>(map['region']),
      skipDestroy: Input.asOptionalInput<bool>(map['skipDestroy']),
      statementId: Input.asInput<String>(map['statementId']),
      versionNumber: Input.asInput<int>(map['versionNumber']),
    );
  }
}
