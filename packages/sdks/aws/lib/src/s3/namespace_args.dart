// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_tables_namespace_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_s3_tables_namespace_namespace_args_doc}
class NamespaceArgs {
  /// Name of the namespace.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  final pulumi.Input<String> namespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN referencing the Table Bucket that contains this Namespace.
  final pulumi.Input<String> tableBucketArn;

  /// Creates a new [NamespaceArgs].
  /// [namespace] Name of the namespace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableBucketArn] ARN referencing the Table Bucket that contains this Namespace.
  NamespaceArgs({
    required pulumi.Output<String> namespace,
    pulumi.Output<String>? region,
    required pulumi.Output<String> tableBucketArn,
  }) :
      namespace = pulumi.Input.asInput<String>(namespace),
      region = pulumi.Input.asOptionalInput<String>(region),
      tableBucketArn = pulumi.Input.asInput<String>(tableBucketArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': namespace,
      'region': ?region,
      'tableBucketArn': tableBucketArn,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      namespace: pulumi.Output.create<String>(map['namespace'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tableBucketArn: pulumi.Output.create<String>(map['tableBucketArn'] as String),
    );
  }
}

