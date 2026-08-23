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

  /// Creates a new [RaiExternalSafetyProviderArgs].
  /// [properties] Properties of Cognitive Services Rai External Safety provider.
  /// [safetyProviderName] The name of the Rai External Safety Provider associated with the Cognitive Services Account
  const RaiExternalSafetyProviderArgs({
    this.properties,
    this.safetyProviderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<RaiExternalSafetyProviderSchemaProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'safetyProviderName': ?safetyProviderName,
    };
  }

  factory RaiExternalSafetyProviderArgs.fromMap(Map<String, dynamic> map) {
    return RaiExternalSafetyProviderArgs(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RaiExternalSafetyProviderSchemaProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      safetyProviderName: (() { final guardedValue = map['safetyProviderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
