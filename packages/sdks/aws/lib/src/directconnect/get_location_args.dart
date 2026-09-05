// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_get_location_get_location_args_doc}
/// Arguments for getLocation.
/// {@endtemplate}
/// {@macro pulumi_directconnect_get_location_get_location_args_doc}
class GetLocationArgs {
  /// Code for the location to retrieve.
  final pulumi.Input<String> locationCode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetLocationArgs].
  /// [locationCode] Code for the location to retrieve.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetLocationArgs({
    required this.locationCode,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationCode': locationCode,
      'region': ?region,
    };
  }

  factory GetLocationArgs.fromMap(Map<String, dynamic> map) {
    return GetLocationArgs(
      locationCode: pulumi.Input.fromValue(map['locationCode'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
