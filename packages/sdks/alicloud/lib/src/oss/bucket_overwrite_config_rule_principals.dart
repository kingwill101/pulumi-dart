// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketOverwriteConfigRulePrincipals {
  /// Authorized subject. Supports the input of primary accounts, sub-accounts, or roles. Invalid setting if the value is empty.
  final pulumi.Input<List<String>>? principals;

  /// Creates a new [BucketOverwriteConfigRulePrincipals].
  /// [principals] Authorized subject. Supports the input of primary accounts, sub-accounts, or roles. Invalid setting if the value is empty.
  BucketOverwriteConfigRulePrincipals({
    this.principals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principals': ?principals,
    };
  }

  factory BucketOverwriteConfigRulePrincipals.fromMap(Map<String, dynamic> map) {
    return BucketOverwriteConfigRulePrincipals(
      principals: map['principals'] == null ? null : ((map['principals'] as List).cast<String>()).input(),
    );
  }
}

