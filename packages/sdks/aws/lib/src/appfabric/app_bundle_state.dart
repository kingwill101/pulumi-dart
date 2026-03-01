// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppBundle resources.
class AppBundleState {
  /// ARN of the AppBundle.
  final pulumi.Input<String>? arn;
  /// The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) key to use to encrypt the application data. If this is not specified, an AWS owned key is used for encryption.
  final pulumi.Input<String>? customerManagedKeyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AppBundleState].
  /// [arn] ARN of the AppBundle.
  /// [customerManagedKeyArn] The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) key to use to encrypt the application data. If this is not specified, an AWS owned key is used for encryption.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  AppBundleState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? customerManagedKeyArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      customerManagedKeyArn = pulumi.Input.asOptionalInput<String>(customerManagedKeyArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'customerManagedKeyArn': ?customerManagedKeyArn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AppBundleState.fromMap(Map<String, dynamic> map) {
    return AppBundleState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      customerManagedKeyArn: map['customerManagedKeyArn'] == null ? null : pulumi.Output.create<String>(map['customerManagedKeyArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

