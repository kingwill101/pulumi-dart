// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_get_locations_get_locations_args_doc}
/// Arguments for getLocations.
/// {@endtemplate}
/// {@macro pulumi_directconnect_get_locations_get_locations_args_doc}
class GetLocationsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetLocationsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetLocationsArgs({
    pulumi.Output<String>? region,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetLocationsArgs.fromMap(Map<String, dynamic> map) {
    return GetLocationsArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

