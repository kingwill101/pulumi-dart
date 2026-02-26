// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Namespace.
class NamespaceArgs3 {
  /// Name of the namespace.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  final Input<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN referencing the Table Bucket that contains this Namespace.
  final Input<String> tableBucketArn;

  NamespaceArgs3({
    required this.namespace,
    this.region,
    required this.tableBucketArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespace'] = namespace;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['tableBucketArn'] = tableBucketArn;
    return map;
  }

  factory NamespaceArgs3.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs3(
      namespace: Input.asInput<String>(map['namespace']),
      region: Input.asOptionalInput<String>(map['region']),
      tableBucketArn: Input.asInput<String>(map['tableBucketArn']),
    );
  }
}
