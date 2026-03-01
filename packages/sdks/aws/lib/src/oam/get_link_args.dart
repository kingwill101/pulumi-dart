// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oam_get_link_get_link_args_doc}
/// Arguments for getLink.
/// {@endtemplate}
/// {@macro pulumi_oam_get_link_get_link_args_doc}
class GetLinkArgs {
  /// ARN of the link.
  final pulumi.Input<String> linkIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetLinkArgs].
  /// [linkIdentifier] ARN of the link.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  GetLinkArgs({
    required pulumi.Output<String> linkIdentifier,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      linkIdentifier = pulumi.Input.asInput<String>(linkIdentifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkIdentifier': linkIdentifier,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkArgs(
      linkIdentifier: pulumi.Output.create<String>(map['linkIdentifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

