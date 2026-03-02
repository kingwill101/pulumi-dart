// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_codebuild_get_fleet_get_fleet_args_doc}
/// Arguments for getFleet.
/// {@endtemplate}
/// {@macro pulumi_codebuild_get_fleet_get_fleet_args_doc}
class GetFleetArgs {
  /// Fleet name.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Mapping of Key-Value tags for the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetFleetArgs].
  /// [name] Fleet name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Mapping of Key-Value tags for the resource.
  GetFleetArgs({
    required this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetFleetArgs.fromMap(Map<String, dynamic> map) {
    return GetFleetArgs(
      name: (map['name'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

