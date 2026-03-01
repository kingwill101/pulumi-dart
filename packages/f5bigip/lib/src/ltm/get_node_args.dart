// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_fqdn.dart';

/// {@template pulumi_ltm_get_node_get_node_args_doc}
/// Arguments for getNode.
/// {@endtemplate}
/// {@macro pulumi_ltm_get_node_get_node_args_doc}
class GetNodeArgs {
  /// The address of the node.
  final pulumi.Input<String>? address;
  /// User defined description of the node.
  final pulumi.Input<String>? description;
  final pulumi.Input<GetNodeFqdn>? fqdn;
  /// Full path of the node (partition and name)
  final pulumi.Input<String>? fullPath;
  /// Name of the node.
  final pulumi.Input<String> name;
  /// partition of the node.
  final pulumi.Input<String> partition;

  /// Creates a new [GetNodeArgs].
  /// [address] The address of the node.
  /// [description] User defined description of the node.
  /// [fqdn] Optional.
  /// [fullPath] Full path of the node (partition and name)
  /// [name] Name of the node.
  /// [partition] partition of the node.
  GetNodeArgs({
    String? address,
    String? description,
    GetNodeFqdn? fqdn,
    String? fullPath,
    required String name,
    required String partition,
  }) :
      address = pulumi.Input.asOptionalInput<String>(address),
      description = pulumi.Input.asOptionalInput<String>(description),
      fqdn = pulumi.Input.asOptionalInput<GetNodeFqdn>(fqdn),
      fullPath = pulumi.Input.asOptionalInput<String>(fullPath),
      name = pulumi.Input.asInput<String>(name),
      partition = pulumi.Input.asInput<String>(partition);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'description': ?description,
      'fqdn': ?pulumi.Input.mapOptionalInputValue<GetNodeFqdn, Map<String, dynamic>>(fqdn, (value) => value.toMap()),
      'fullPath': ?fullPath,
      'name': name,
      'partition': partition,
    };
  }

  factory GetNodeArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeArgs(
      address: map['address'] == null ? null : map['address'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      fqdn: map['fqdn'] == null ? null : GetNodeFqdn.fromMap((map['fqdn'] as Map).cast<String, dynamic>()),
      fullPath: map['fullPath'] == null ? null : map['fullPath'] as String,
      name: map['name'] as String,
      partition: map['partition'] as String,
    );
  }
}

