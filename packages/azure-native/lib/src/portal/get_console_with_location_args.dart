// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_portal_get_console_with_location_args_doc}
/// Arguments for getConsoleWithLocation.
/// {@endtemplate}
/// {@macro pulumi_portal_get_console_with_location_args_doc}
class GetConsoleWithLocationArgs {
  /// The name of the console
  final pulumi.Input<String> consoleName;
  /// The provider location
  final pulumi.Input<String> location;

  /// Creates a new [GetConsoleWithLocationArgs].
  /// [consoleName] The name of the console
  /// [location] The provider location
  GetConsoleWithLocationArgs({
    required String consoleName,
    required String location,
  }) :
      consoleName = pulumi.Input.asInput<String>(consoleName),
      location = pulumi.Input.asInput<String>(location);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consoleName': consoleName,
      'location': location,
    };
  }

  factory GetConsoleWithLocationArgs.fromMap(Map<String, dynamic> map) {
    return GetConsoleWithLocationArgs(
      consoleName: map['consoleName'] as String,
      location: map['location'] as String,
    );
  }
}

