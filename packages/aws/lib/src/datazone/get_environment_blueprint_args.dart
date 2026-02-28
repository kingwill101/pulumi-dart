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
  GetEnvironmentBlueprintArgs({
    required String domainId,
    required bool managed,
    required String name,
    String? region,
  })  : domainId = pulumi.Input.asInput<String>(domainId),
        managed = pulumi.Input.asInput<bool>(managed),
        name = pulumi.Input.asInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainId'] = domainId;
    map['managed'] = managed;
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetEnvironmentBlueprintArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentBlueprintArgs(
      domainId: map['domainId'] as String,
      managed: map['managed'] as bool,
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
