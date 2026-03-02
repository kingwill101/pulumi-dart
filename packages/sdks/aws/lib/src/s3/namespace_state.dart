// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Namespace resources.
class NamespaceState {
  /// Date and time when the namespace was created.
  final pulumi.Input<String>? createdAt;
  /// Account ID of the account that created the namespace.
  final pulumi.Input<String>? createdBy;
  /// Name of the namespace.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  final pulumi.Input<String>? namespace;
  /// Account ID of the account that owns the namespace.
  final pulumi.Input<String>? ownerAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN referencing the Table Bucket that contains this Namespace.
  final pulumi.Input<String>? tableBucketArn;

  /// Creates a new [NamespaceState].
  /// [createdAt] Date and time when the namespace was created.
  /// [createdBy] Account ID of the account that created the namespace.
  /// [namespace] Name of the namespace.
  /// [ownerAccountId] Account ID of the account that owns the namespace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableBucketArn] ARN referencing the Table Bucket that contains this Namespace.
  NamespaceState({
    this.createdAt,
    this.createdBy,
    this.namespace,
    this.ownerAccountId,
    this.region,
    this.tableBucketArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'namespace': ?namespace,
      'ownerAccountId': ?ownerAccountId,
      'region': ?region,
      'tableBucketArn': ?tableBucketArn,
    };
  }

  factory NamespaceState.fromMap(Map<String, dynamic> map) {
    return NamespaceState(
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      createdBy: map['createdBy'] == null ? null : ((map['createdBy'] as String).input()).input(),
      namespace: map['namespace'] == null ? null : ((map['namespace'] as String).input()).input(),
      ownerAccountId: map['ownerAccountId'] == null ? null : ((map['ownerAccountId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tableBucketArn: map['tableBucketArn'] == null ? null : ((map['tableBucketArn'] as String).input()).input(),
    );
  }
}

