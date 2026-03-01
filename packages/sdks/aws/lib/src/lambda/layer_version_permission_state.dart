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
    pulumi.Output<String>? action,
    pulumi.Output<String>? layerName,
    pulumi.Output<String>? organizationId,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? principal,
    pulumi.Output<String>? region,
    pulumi.Output<String>? revisionId,
    pulumi.Output<bool>? skipDestroy,
    pulumi.Output<String>? statementId,
    pulumi.Output<int>? versionNumber,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      layerName = pulumi.Input.asOptionalInput<String>(layerName),
      organizationId = pulumi.Input.asOptionalInput<String>(organizationId),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      principal = pulumi.Input.asOptionalInput<String>(principal),
      region = pulumi.Input.asOptionalInput<String>(region),
      revisionId = pulumi.Input.asOptionalInput<String>(revisionId),
      skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy),
      statementId = pulumi.Input.asOptionalInput<String>(statementId),
      versionNumber = pulumi.Input.asOptionalInput<int>(versionNumber);

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
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      layerName: map['layerName'] == null ? null : pulumi.Output.create<String>(map['layerName'] as String),
      organizationId: map['organizationId'] == null ? null : pulumi.Output.create<String>(map['organizationId'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      principal: map['principal'] == null ? null : pulumi.Output.create<String>(map['principal'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      revisionId: map['revisionId'] == null ? null : pulumi.Output.create<String>(map['revisionId'] as String),
      skipDestroy: map['skipDestroy'] == null ? null : pulumi.Output.create<bool>(map['skipDestroy'] as bool),
      statementId: map['statementId'] == null ? null : pulumi.Output.create<String>(map['statementId'] as String),
      versionNumber: map['versionNumber'] == null ? null : pulumi.Output.create<int>(map['versionNumber'] as int),
    );
  }
}

