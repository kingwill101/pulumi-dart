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
    required String linkIdentifier,
    String? region,
    Map<String, String>? tags,
  })  : linkIdentifier = pulumi.Input.asInput<String>(linkIdentifier),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['linkIdentifier'] = linkIdentifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkArgs(
      linkIdentifier: map['linkIdentifier'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
