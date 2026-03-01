// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_get_location_get_location_args_doc}
/// Arguments for getLocation.
/// {@endtemplate}
/// {@macro pulumi_core_get_location_get_location_args_doc}
class GetLocationArgs {
  /// Specifies the supported Azure location where the resource exists.
  final pulumi.Input<String> location;

  /// Creates a new [GetLocationArgs].
  /// [location] Specifies the supported Azure location where the resource exists.
  GetLocationArgs({
    required String location,
  }) :
      location = pulumi.Input.asInput<String>(location);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
    };
  }

  factory GetLocationArgs.fromMap(Map<String, dynamic> map) {
    return GetLocationArgs(
      location: map['location'] as String,
    );
  }
}

