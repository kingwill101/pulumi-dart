// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_odb_get_gi_versions_get_gi_versions_args_doc}
/// Arguments for getGiVersions.
/// {@endtemplate}
/// {@macro pulumi_odb_get_gi_versions_get_gi_versions_args_doc}
class GetGiVersionsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The system shape.
  final pulumi.Input<String>? shape;

  /// Creates a new [GetGiVersionsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [shape] The system shape.
  GetGiVersionsArgs({
    this.region,
    this.shape,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'shape': ?shape,
    };
  }

  factory GetGiVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetGiVersionsArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      shape: map['shape'] == null ? null : ((map['shape'] as String).input()).input(),
    );
  }
}

