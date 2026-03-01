// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_external_safety_provider_schema_properties.dart';

/// {@template pulumi_cognitiveservices_rai_external_safety_provider_args_doc}
/// The set of arguments for RaiExternalSafetyProvider.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_rai_external_safety_provider_args_doc}
class RaiExternalSafetyProviderArgs {
  /// Properties of Cognitive Services Rai External Safety provider.
  final pulumi.Input<RaiExternalSafetyProviderSchemaProperties>? properties;
  /// The name of the Rai External Safety Provider associated with the Cognitive Services Account
  final pulumi.Input<String>? safetyProviderName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RaiExternalSafetyProviderArgs].
  /// [properties] Properties of Cognitive Services Rai External Safety provider.
  /// [safetyProviderName] The name of the Rai External Safety Provider associated with the Cognitive Services Account
  /// [tags] Resource tags.
  RaiExternalSafetyProviderArgs({
    pulumi.Output<RaiExternalSafetyProviderSchemaProperties>? properties,
    pulumi.Output<String>? safetyProviderName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      properties = pulumi.Input.asOptionalInput<RaiExternalSafetyProviderSchemaProperties>(properties),
      safetyProviderName = pulumi.Input.asOptionalInput<String>(safetyProviderName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<RaiExternalSafetyProviderSchemaProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'safetyProviderName': ?safetyProviderName,
      'tags': ?tags,
    };
  }

  factory RaiExternalSafetyProviderArgs.fromMap(Map<String, dynamic> map) {
    return RaiExternalSafetyProviderArgs(
      properties: map['properties'] == null ? null : pulumi.Output.create<RaiExternalSafetyProviderSchemaProperties>(RaiExternalSafetyProviderSchemaProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      safetyProviderName: map['safetyProviderName'] == null ? null : pulumi.Output.create<String>(map['safetyProviderName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

