// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostedPublicVirtualInterfaceAccepter resources.
class HostedPublicVirtualInterfaceAccepterState {
  /// The ARN of the virtual interface.
  final pulumi.Input<String>? arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The ID of the Direct Connect virtual interface to accept.
  final pulumi.Input<String>? virtualInterfaceId;

  /// Creates a new [HostedPublicVirtualInterfaceAccepterState].
  /// [arn] The ARN of the virtual interface.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [virtualInterfaceId] The ID of the Direct Connect virtual interface to accept.
  HostedPublicVirtualInterfaceAccepterState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? virtualInterfaceId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      virtualInterfaceId = pulumi.Input.asOptionalInput<String>(virtualInterfaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'virtualInterfaceId': ?virtualInterfaceId,
    };
  }

  factory HostedPublicVirtualInterfaceAccepterState.fromMap(Map<String, dynamic> map) {
    return HostedPublicVirtualInterfaceAccepterState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      virtualInterfaceId: map['virtualInterfaceId'] == null ? null : pulumi.Output.create<String>(map['virtualInterfaceId'] as String),
    );
  }
}

