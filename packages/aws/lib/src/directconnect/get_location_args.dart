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
  final pulumi.Input<String>? region;

  /// Creates a new [GetLocationArgs].
  /// [locationCode] Code for the location to retrieve.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetLocationArgs({
    required String locationCode,
    String? region,
  })  : locationCode = pulumi.Input.asInput<String>(locationCode),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locationCode'] = locationCode;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetLocationArgs.fromMap(Map<String, dynamic> map) {
    return GetLocationArgs(
      locationCode: map['locationCode'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
