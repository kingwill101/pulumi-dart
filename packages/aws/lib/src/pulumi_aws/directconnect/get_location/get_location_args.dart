// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getLocation.
class GetLocationArgs {
  /// Code for the location to retrieve.
  final Input<String> locationCode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetLocationArgs({
    required this.locationCode,
    this.region,
  });

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
      locationCode: Input.asInput<String>(map['locationCode']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
