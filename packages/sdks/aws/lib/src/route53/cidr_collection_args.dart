// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_cidr_collection_cidr_collection_args_doc}
/// The set of arguments for CidrCollection.
/// {@endtemplate}
/// {@macro pulumi_route53_cidr_collection_cidr_collection_args_doc}
class CidrCollectionArgs {
  /// Unique name for the CIDR collection.
  final pulumi.Input<String>? name;

  /// Creates a new [CidrCollectionArgs].
  /// [name] Unique name for the CIDR collection.
  CidrCollectionArgs({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory CidrCollectionArgs.fromMap(Map<String, dynamic> map) {
    return CidrCollectionArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

