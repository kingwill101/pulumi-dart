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
    required this.cidrBlocks,
    required this.cidrCollectionId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlocks': cidrBlocks,
      'cidrCollectionId': cidrCollectionId,
      'name': ?name,
    };
  }

  factory CidrLocationArgs.fromMap(Map<String, dynamic> map) {
    return CidrLocationArgs(
      cidrBlocks: pulumi.Input.fromValue((map['cidrBlocks'] as List).cast<String>()),
      cidrCollectionId: pulumi.Input.fromValue(map['cidrCollectionId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

