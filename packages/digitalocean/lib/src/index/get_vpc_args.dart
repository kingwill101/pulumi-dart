// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_vpc_get_vpc_args_doc}
/// Arguments for getVpc.
/// {@endtemplate}
/// {@macro pulumi_index_get_vpc_get_vpc_args_doc}
class GetVpcArgs {
  /// The unique identifier of an existing VPC.
  final pulumi.Input<String>? id;
  /// The name of an existing VPC.
  final pulumi.Input<String>? name;
  /// The DigitalOcean region slug for the VPC's location.
  final pulumi.Input<String>? region;

  /// Creates a new [GetVpcArgs].
  /// [id] The unique identifier of an existing VPC.
  /// [name] The name of an existing VPC.
  /// [region] The DigitalOcean region slug for the VPC's location.
  GetVpcArgs({
    String? id,
    String? name,
    String? region,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetVpcArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcArgs(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

