// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_cidr_location_cidr_location_args_doc}
/// The set of arguments for CidrLocation.
/// {@endtemplate}
/// {@macro pulumi_route53_cidr_location_cidr_location_args_doc}
class CidrLocationArgs {
  /// CIDR blocks for the location.
  final pulumi.Input<List<String>> cidrBlocks;
  /// The ID of the CIDR collection to update.
  final pulumi.Input<String> cidrCollectionId;
  /// Name for the CIDR location.
  final pulumi.Input<String>? name;

  /// Creates a new [CidrLocationArgs].
  /// [cidrBlocks] CIDR blocks for the location.
  /// [cidrCollectionId] The ID of the CIDR collection to update.
  /// [name] Name for the CIDR location.
  CidrLocationArgs({
    required List<String> cidrBlocks,
    required String cidrCollectionId,
    String? name,
  }) :
      cidrBlocks = pulumi.Input.asInput<List<String>>(cidrBlocks),
      cidrCollectionId = pulumi.Input.asInput<String>(cidrCollectionId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlocks': cidrBlocks,
      'cidrCollectionId': cidrCollectionId,
      'name': ?name,
    };
  }

  factory CidrLocationArgs.fromMap(Map<String, dynamic> map) {
    return CidrLocationArgs(
      cidrBlocks: (map['cidrBlocks'] as List).cast<String>(),
      cidrCollectionId: map['cidrCollectionId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

