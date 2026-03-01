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
  SharedLimitArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
  }) :
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': ?name,
    };
  }

  factory SharedLimitArgs.fromMap(Map<String, dynamic> map) {
    return SharedLimitArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

