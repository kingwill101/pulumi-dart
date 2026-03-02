// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_tag.dart';

/// {@template pulumi_autoscaling_tag_tag_args_doc}
/// The set of arguments for Tag.
/// {@endtemplate}
/// {@macro pulumi_autoscaling_tag_tag_args_doc}
class TagArgs {
  /// Name of the Autoscaling Group to apply the tag to.
  final pulumi.Input<String> autoscalingGroupName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tag to create. The `tag` block is documented below.
  final pulumi.Input<TagTag> tag;

  /// Creates a new [TagArgs].
  /// [autoscalingGroupName] Name of the Autoscaling Group to apply the tag to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tag] Tag to create. The `tag` block is documented below.
  TagArgs({
    required this.autoscalingGroupName,
    this.region,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingGroupName': autoscalingGroupName,
      'region': ?region,
      'tag': pulumi.Input.mapInputValue<TagTag, Map<String, dynamic>>(tag, (value) => value.toMap()),
    };
  }

  factory TagArgs.fromMap(Map<String, dynamic> map) {
    return TagArgs(
      autoscalingGroupName: (map['autoscalingGroupName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tag: (TagTag.fromMap((map['tag'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

