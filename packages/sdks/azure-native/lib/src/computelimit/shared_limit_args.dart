// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_computelimit_shared_limit_args_doc}
/// The set of arguments for SharedLimit.
/// {@endtemplate}
/// {@macro pulumi_computelimit_shared_limit_args_doc}
class SharedLimitArgs {
  /// The name of the Azure region.
  final pulumi.Input<String> location;

  /// The name of the SharedLimit
  final pulumi.Input<String>? name;

  /// Creates a new [SharedLimitArgs].
  /// [location] The name of the Azure region.
  /// [name] The name of the SharedLimit
  SharedLimitArgs({required this.location, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'location': location, 'name': ?name};
  }

  factory SharedLimitArgs.fromMap(Map<String, dynamic> map) {
    return SharedLimitArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
