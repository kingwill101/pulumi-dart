// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_computelimit_get_shared_limit_args_doc}
/// Arguments for getSharedLimit.
/// {@endtemplate}
/// {@macro pulumi_computelimit_get_shared_limit_args_doc}
class GetSharedLimitArgs {
  /// The name of the Azure region.
  final pulumi.Input<String> location;
  /// The name of the SharedLimit
  final pulumi.Input<String> name;

  /// Creates a new [GetSharedLimitArgs].
  /// [location] The name of the Azure region.
  /// [name] The name of the SharedLimit
  GetSharedLimitArgs({
    required this.location,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
    };
  }

  factory GetSharedLimitArgs.fromMap(Map<String, dynamic> map) {
    return GetSharedLimitArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

