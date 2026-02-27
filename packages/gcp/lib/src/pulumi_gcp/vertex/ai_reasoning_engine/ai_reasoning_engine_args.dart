// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../ai_reasoning_engine_encryption_spec/ai_reasoning_engine_encryption_spec.dart';
import '../ai_reasoning_engine_spec/ai_reasoning_engine_spec.dart';

/// The set of arguments for AiReasoningEngine.
class AiReasoningEngineArgs {
  /// The description of the ReasoningEngine.
  final pulumi.Input<String>? description;

  /// The display name of the ReasoningEngine.
  final pulumi.Input<String> displayName;

  /// Optional. Customer-managed encryption key spec for a ReasoningEngine.
  /// If set, this ReasoningEngine and all sub-resources of this ReasoningEngine
  /// will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineEncryptionSpec>? encryptionSpec;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the reasoning engine. eg us-central1
  final pulumi.Input<String>? region;

  /// Optional. Configurations of the ReasoningEngine.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpec>? spec;

  AiReasoningEngineArgs({
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.project,
    this.region,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = pulumi.Input.mapOptionalInputValue<
          AiReasoningEngineEncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final specValue = spec;
    if (specValue != null) {
      map['spec'] = pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpec,
          Map<String, dynamic>>(specValue, (value) => value.toMap());
    }
    return map;
  }

  factory AiReasoningEngineArgs.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      encryptionSpec:
          pulumi.Input.asOptionalInput<AiReasoningEngineEncryptionSpec>(
              map['encryptionSpec']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      spec: pulumi.Input.asOptionalInput<AiReasoningEngineSpec>(map['spec']),
    );
  }
}
