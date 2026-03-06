// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketReplicationPrefixSet {
  /// The list of object key name prefix identifying one or more objects to which the rule applies.
  ///
  /// `NOTE`: The prefix must be less than or equal to 1024 characters in length.
  final pulumi.Input<List<String>> prefixes;

  /// Creates a new [BucketReplicationPrefixSet].
  /// [prefixes] The list of object key name prefix identifying one or more objects to which the rule applies.
  const BucketReplicationPrefixSet({
    required this.prefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefixes': prefixes,
    };
  }

  factory BucketReplicationPrefixSet.fromMap(Map<String, dynamic> map) {
    return BucketReplicationPrefixSet(
      prefixes: pulumi.Input.fromValue((map['prefixes'] as List).cast<String>()),
    );
  }
}

