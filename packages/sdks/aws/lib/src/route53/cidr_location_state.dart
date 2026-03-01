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
    pulumi.Output<List<String>>? cidrBlocks,
    pulumi.Output<String>? cidrCollectionId,
    pulumi.Output<String>? name,
  }) :
      cidrBlocks = pulumi.Input.asOptionalInput<List<String>>(cidrBlocks),
      cidrCollectionId = pulumi.Input.asOptionalInput<String>(cidrCollectionId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlocks': ?cidrBlocks,
      'cidrCollectionId': ?cidrCollectionId,
      'name': ?name,
    };
  }

  factory CidrLocationState.fromMap(Map<String, dynamic> map) {
    return CidrLocationState(
      cidrBlocks: map['cidrBlocks'] == null ? null : pulumi.Output.create<List<String>>((map['cidrBlocks'] as List).cast<String>()),
      cidrCollectionId: map['cidrCollectionId'] == null ? null : pulumi.Output.create<String>(map['cidrCollectionId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

