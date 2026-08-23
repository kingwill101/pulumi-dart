// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lambda_layer_version_permission_layer_version_permission_args_doc}
/// The set of arguments for LayerVersionPermission.
/// {@endtemplate}
/// {@macro pulumi_lambda_layer_version_permission_layer_version_permission_args_doc}
class LayerVersionPermissionArgs {
  /// Action that will be allowed. `lambda:GetLayerVersion` is the standard value for layer access.
  final pulumi.Input<String> action;
  /// Name or ARN of the Lambda Layer.
  final pulumi.Input<String> layerName;
  /// AWS Organization ID that should be able to use your Lambda Layer. `principal` should be set to `*` when `organizationId` is provided.
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

  /// Creates a new [LayerVersionPermissionArgs].
  /// [action] Action that will be allowed. `lambda:GetLayerVersion` is the standard value for layer access.
  /// [layerName] Name or ARN of the Lambda Layer.
  /// [organizationId] AWS Organization ID that should be able to use your Lambda Layer. `principal` should be set to `*` when `organizationId` is provided.
  /// [principal] AWS account ID that should be able to use your Lambda Layer. Use `*` to share with all AWS accounts.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipDestroy] Whether to retain the permission when the resource is destroyed. Default is `false`.
  /// [statementId] Unique identifier for the permission statement.
  /// [versionNumber] Version of Lambda Layer to grant access to. Note: permissions only apply to a single version of a layer.
  const LayerVersionPermissionArgs({
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
    return <String, dynamic>{
      'action': action,
      'layerName': layerName,
      'organizationId': ?organizationId,
      'principal': principal,
      'region': ?region,
      'skipDestroy': ?skipDestroy,
      'statementId': statementId,
      'versionNumber': versionNumber,
    };
  }

  factory LayerVersionPermissionArgs.fromMap(Map<String, dynamic> map) {
    return LayerVersionPermissionArgs(
      action: pulumi.Input.fromValue(map['action'] as String),
      layerName: pulumi.Input.fromValue(map['layerName'] as String),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principal: pulumi.Input.fromValue(map['principal'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipDestroy: (() { final guardedValue = map['skipDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      statementId: pulumi.Input.fromValue(map['statementId'] as String),
      versionNumber: pulumi.Input.fromValue(map['versionNumber'] as int),
    );
  }
}
