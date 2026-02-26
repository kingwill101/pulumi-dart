// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for CidrCollection.
class CidrCollectionArgs {
  /// Unique name for the CIDR collection.
  final Input<String>? name;

  CidrCollectionArgs({
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory CidrCollectionArgs.fromMap(Map<String, dynamic> map) {
    return CidrCollectionArgs(
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
