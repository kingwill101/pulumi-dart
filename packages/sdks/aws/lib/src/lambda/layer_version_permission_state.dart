// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LayerVersionPermission resources.
class LayerVersionPermissionState {
  /// Action that will be allowed. `lambda:GetLayerVersion` is the standard value for layer access.
  final pulumi.Input<String>? action;
  /// Name or ARN of the Lambda Layer.
  final pulumi.Input<String>? layerName;
  /// AWS Organization ID that should be able to use your Lambda Layer. `principal` should be set to `*` when `organization_id` is provided.
  final pulumi.Input<String>? organizationId;
  /// Full Lambda Layer Permission policy.
  final pulumi.Input<String>? policy;
  /// AWS account ID that should be able to use your Lambda Layer. Use `*` to share with all AWS accounts.
  final pulumi.Input<String>? principal;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Unique identifier for the current revision of the policy.
  final pulumi.Input<String>? revisionId;
  /// Whether to retain the permission when the resource is destroyed. Default is `false`.
  final pulumi.Input<bool>? skipDestroy;
  /// Unique identifier for the permission statement.
  final pulumi.Input<String>? statementId;
  /// Version of Lambda Layer to grant access to. Note: permissions only apply to a single version of a layer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int>? versionNumber;

  /// Creates a new [LayerVersionPermissionState].
  /// [action] Action that will be allowed. `lambda:GetLayerVersion` is the standard value for layer access.
  /// [layerName] Name or ARN of the Lambda Layer.
  /// [organizationId] AWS Organization ID that should be able to use your Lambda Layer. `principal` should be set to `*` when `organization_id` is provided.
  /// [policy] Full Lambda Layer Permission policy.
  /// [principal] AWS account ID that should be able to use your Lambda Layer. Use `*` to share with all AWS accounts.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revisionId] Unique identifier for the current revision of the policy.
  /// [skipDestroy] Whether to retain the permission when the resource is destroyed. Default is `false`.
  /// [statementId] Unique identifier for the permission statement.
  /// [versionNumber] Version of Lambda Layer to grant access to. Note: permissions only apply to a single version of a layer.
  LayerVersionPermissionState({
    this.action,
    this.layerName,
    this.organizationId,
    this.policy,
    this.principal,
    this.region,
    this.revisionId,
    this.skipDestroy,
    this.statementId,
    this.versionNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'layerName': ?layerName,
      'organizationId': ?organizationId,
      'policy': ?policy,
      'principal': ?principal,
      'region': ?region,
      'revisionId': ?revisionId,
      'skipDestroy': ?skipDestroy,
      'statementId': ?statementId,
      'versionNumber': ?versionNumber,
    };
  }

  factory LayerVersionPermissionState.fromMap(Map<String, dynamic> map) {
    return LayerVersionPermissionState(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      layerName: map['layerName'] == null ? null : (map['layerName'] as String).input(),
      organizationId: map['organizationId'] == null ? null : (map['organizationId'] as String).input(),
      policy: map['policy'] == null ? null : (map['policy'] as String).input(),
      principal: map['principal'] == null ? null : (map['principal'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      revisionId: map['revisionId'] == null ? null : (map['revisionId'] as String).input(),
      skipDestroy: map['skipDestroy'] == null ? null : (map['skipDestroy'] as bool).input(),
      statementId: map['statementId'] == null ? null : (map['statementId'] as String).input(),
      versionNumber: map['versionNumber'] == null ? null : (map['versionNumber'] as int).input(),
    );
  }
}

