// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for CidrLocation.
class CidrLocationArgs {
  /// CIDR blocks for the location.
  final Input<List<String>> cidrBlocks;

  /// The ID of the CIDR collection to update.
  final Input<String> cidrCollectionId;

  /// Name for the CIDR location.
  final Input<String>? name;

  CidrLocationArgs({
    required this.cidrBlocks,
    required this.cidrCollectionId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlocks'] = cidrBlocks;
    map['cidrCollectionId'] = cidrCollectionId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory CidrLocationArgs.fromMap(Map<String, dynamic> map) {
    return CidrLocationArgs(
      cidrBlocks: Input.asInput<List<String>>(map['cidrBlocks']),
      cidrCollectionId: Input.asInput<String>(map['cidrCollectionId']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
