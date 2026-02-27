// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEnvironmentBlueprint.
class GetEnvironmentBlueprintArgs {
  /// ID of the domain.
  final pulumi.Input<String> domainId;

  /// Whether the blueprint is managed by Amazon DataZone.
  final pulumi.Input<bool> managed;

  /// Name of the blueprint.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetEnvironmentBlueprintArgs({
    required this.domainId,
    required this.managed,
    required this.name,
    this.region,
  });

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
      domainId: pulumi.Input.asInput<String>(map['domainId']),
      managed: pulumi.Input.asInput<bool>(map['managed']),
      name: pulumi.Input.asInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
