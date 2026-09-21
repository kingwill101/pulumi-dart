// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_agentregistry_get_registry_get_registry_args_doc}
/// Arguments for getRegistry.
/// {@endtemplate}
/// {@macro pulumi_agentregistry_get_registry_get_registry_args_doc}
class GetRegistryArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Identifier of the registry to retrieve. Accepts a registry ID or ARN.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> registryId;

  /// Creates a new [GetRegistryArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryId] Identifier of the registry to retrieve. Accepts a registry ID or ARN.
  const GetRegistryArgs({
    this.region,
    required this.registryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'registryId': registryId,
    };
  }

  factory GetRegistryArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryId: pulumi.Input.fromValue(map['registryId'] as String),
    );
  }
}
