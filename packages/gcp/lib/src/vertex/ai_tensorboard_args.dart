// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_tensorboard_encryption_spec.dart';

/// {@template pulumi_vertex_ai_tensorboard_ai_tensorboard_args_doc}
/// The set of arguments for AiTensorboard.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_tensorboard_ai_tensorboard_args_doc}
class AiTensorboardArgs {
  /// Description of this Tensorboard.
  final pulumi.Input<String>? description;
  /// User provided name of this Tensorboard.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiTensorboardEncryptionSpec>? encryptionSpec;
  /// The labels with user-defined metadata to organize your Tensorboards.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the tensorboard. eg us-central1
  final pulumi.Input<String>? region;

  /// Creates a new [AiTensorboardArgs].
  /// [description] Description of this Tensorboard.
  /// [displayName] User provided name of this Tensorboard.
  /// [encryptionSpec] Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key.
  /// [labels] The labels with user-defined metadata to organize your Tensorboards.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the tensorboard. eg us-central1
  AiTensorboardArgs({
    String? description,
    required String displayName,
    AiTensorboardEncryptionSpec? encryptionSpec,
    Map<String, String>? labels,
    String? project,
    String? region,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      encryptionSpec = pulumi.Input.asOptionalInput<AiTensorboardEncryptionSpec>(encryptionSpec),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiTensorboardEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'project': ?project,
      'region': ?region,
    };
  }

  factory AiTensorboardArgs.fromMap(Map<String, dynamic> map) {
    return AiTensorboardArgs(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      encryptionSpec: map['encryptionSpec'] == null ? null : AiTensorboardEncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

