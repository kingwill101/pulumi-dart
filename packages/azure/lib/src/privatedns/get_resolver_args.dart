// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_get_resolver_get_resolver_args_doc}
/// Arguments for getResolver.
/// {@endtemplate}
/// {@macro pulumi_privatedns_get_resolver_get_resolver_args_doc}
class GetResolverArgs {
  /// Name of the Private DNS Resolver.
  final pulumi.Input<String> name;
  /// Name of the Resource Group where the Private DNS Resolver exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetResolverArgs].
  /// [name] Name of the Private DNS Resolver.
  /// [resourceGroupName] Name of the Resource Group where the Private DNS Resolver exists.
  GetResolverArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetResolverArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

