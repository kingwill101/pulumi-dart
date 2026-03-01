// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_external_address_external_address_args_doc}
/// The set of arguments for ExternalAddress.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_external_address_external_address_args_doc}
class ExternalAddressArgs {
  /// User-provided description for this resource.
  final pulumi.Input<String>? description;

  /// The internal IP address of a workload VM.
  final pulumi.Input<String> internalIp;

  /// The ID of the external IP Address.
  final pulumi.Input<String>? name;

  /// The resource name of the private cloud to create a new external address in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  final pulumi.Input<String> parent;

  /// Creates a new [ExternalAddressArgs].
  /// [description] User-provided description for this resource.
  /// [internalIp] The internal IP address of a workload VM.
  /// [name] The ID of the external IP Address.
  /// [parent] The resource name of the private cloud to create a new external address in.
  ExternalAddressArgs({
    String? description,
    required String internalIp,
    String? name,
    required String parent,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       internalIp = pulumi.Input.asInput<String>(internalIp),
       name = pulumi.Input.asOptionalInput<String>(name),
       parent = pulumi.Input.asInput<String>(parent);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'internalIp': internalIp,
      'name': ?name,
      'parent': parent,
    };
  }

  factory ExternalAddressArgs.fromMap(Map<String, dynamic> map) {
    return ExternalAddressArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      internalIp: map['internalIp'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parent: map['parent'] as String,
    );
  }
}
