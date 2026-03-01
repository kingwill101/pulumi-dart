// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourceGroup resources.
class ResourceGroupState {
  /// The resource group ARN.
  final pulumi.Input<String>? arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of tags that are used to select the EC2 instances to be included in an Amazon Inspector assessment target.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResourceGroupState].
  /// [arn] The resource group ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of tags that are used to select the EC2 instances to be included in an Amazon Inspector assessment target.
  ResourceGroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ResourceGroupState.fromMap(Map<String, dynamic> map) {
    return ResourceGroupState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

