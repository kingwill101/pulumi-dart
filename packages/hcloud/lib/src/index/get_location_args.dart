// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_location_get_location_args_doc}
/// Arguments for getLocation.
/// {@endtemplate}
/// {@macro pulumi_index_get_location_get_location_args_doc}
class GetLocationArgs {
  /// ID of the Location.
  final pulumi.Input<int>? id;
  /// Name of the Location.
  final pulumi.Input<String>? name;

  /// Creates a new [GetLocationArgs].
  /// [id] ID of the Location.
  /// [name] Name of the Location.
  GetLocationArgs({
    int? id,
    String? name,
  }) :
      id = pulumi.Input.asOptionalInput<int>(id),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetLocationArgs.fromMap(Map<String, dynamic> map) {
    return GetLocationArgs(
      id: map['id'] == null ? null : map['id'] as int,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

