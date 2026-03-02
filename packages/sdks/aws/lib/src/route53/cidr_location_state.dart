// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CidrLocation resources.
class CidrLocationState {
  /// CIDR blocks for the location.
  final pulumi.Input<List<String>>? cidrBlocks;
  /// The ID of the CIDR collection to update.
  final pulumi.Input<String>? cidrCollectionId;
  /// Name for the CIDR location.
  final pulumi.Input<String>? name;

  /// Creates a new [CidrLocationState].
  /// [cidrBlocks] CIDR blocks for the location.
  /// [cidrCollectionId] The ID of the CIDR collection to update.
  /// [name] Name for the CIDR location.
  CidrLocationState({
    this.cidrBlocks,
    this.cidrCollectionId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlocks': ?cidrBlocks,
      'cidrCollectionId': ?cidrCollectionId,
      'name': ?name,
    };
  }

  factory CidrLocationState.fromMap(Map<String, dynamic> map) {
    return CidrLocationState(
      cidrBlocks: map['cidrBlocks'] == null ? null : (((map['cidrBlocks'] as List).cast<String>()).input()).input(),
      cidrCollectionId: map['cidrCollectionId'] == null ? null : ((map['cidrCollectionId'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
    );
  }
}

