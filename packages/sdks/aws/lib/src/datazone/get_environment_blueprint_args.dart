// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datazone_get_environment_blueprint_get_environment_blueprint_args_doc}
/// Arguments for getEnvironmentBlueprint.
/// {@endtemplate}
/// {@macro pulumi_datazone_get_environment_blueprint_get_environment_blueprint_args_doc}
class GetEnvironmentBlueprintArgs {
  /// ID of the domain.
  final pulumi.Input<String> domainId;
  /// Whether the blueprint is managed by Amazon DataZone.
  final pulumi.Input<bool> managed;
  /// Name of the blueprint.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetEnvironmentBlueprintArgs].
  /// [domainId] ID of the domain.
  /// [managed] Whether the blueprint is managed by Amazon DataZone.
  /// [name] Name of the blueprint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetEnvironmentBlueprintArgs({
    required this.domainId,
    required this.managed,
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'managed': managed,
      'name': name,
      'region': ?region,
    };
  }

  factory GetEnvironmentBlueprintArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentBlueprintArgs(
      domainId: pulumi.Input.fromValue(map['domainId'] as String),
      managed: pulumi.Input.fromValue(map['managed'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

