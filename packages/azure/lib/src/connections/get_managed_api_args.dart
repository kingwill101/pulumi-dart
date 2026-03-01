// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connections_get_managed_api_get_managed_api_args_doc}
/// Arguments for getManagedApi.
/// {@endtemplate}
/// {@macro pulumi_connections_get_managed_api_get_managed_api_args_doc}
class GetManagedApiArgs {
  /// The Azure location for this Managed API.
  final pulumi.Input<String> location;
  /// Specifies the name of the Managed API.
  final pulumi.Input<String> name;

  /// Creates a new [GetManagedApiArgs].
  /// [location] The Azure location for this Managed API.
  /// [name] Specifies the name of the Managed API.
  GetManagedApiArgs({
    required String location,
    required String name,
  }) :
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
    };
  }

  factory GetManagedApiArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedApiArgs(
      location: map['location'] as String,
      name: map['name'] as String,
    );
  }
}

