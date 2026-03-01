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
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? createdBy,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? ownerAccountId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? tableBucketArn,
  }) :
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      createdBy = pulumi.Input.asOptionalInput<String>(createdBy),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      ownerAccountId = pulumi.Input.asOptionalInput<String>(ownerAccountId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tableBucketArn = pulumi.Input.asOptionalInput<String>(tableBucketArn);

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
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<String>(map['createdBy'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      ownerAccountId: map['ownerAccountId'] == null ? null : pulumi.Output.create<String>(map['ownerAccountId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tableBucketArn: map['tableBucketArn'] == null ? null : pulumi.Output.create<String>(map['tableBucketArn'] as String),
    );
  }
}

