// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_tag.dart';

/// Input properties used for looking up and filtering Tag resources.
class TagState {
  /// Name of the Autoscaling Group to apply the tag to.
  final pulumi.Input<String>? autoscalingGroupName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tag to create. The `tag` block is documented below.
  final pulumi.Input<TagTag>? tag;

  /// Creates a new [TagState].
  /// [autoscalingGroupName] Name of the Autoscaling Group to apply the tag to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tag] Tag to create. The `tag` block is documented below.
  TagState({
    pulumi.Output<String>? autoscalingGroupName,
    pulumi.Output<String>? region,
    pulumi.Output<TagTag>? tag,
  }) :
      autoscalingGroupName = pulumi.Input.asOptionalInput<String>(autoscalingGroupName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tag = pulumi.Input.asOptionalInput<TagTag>(tag);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingGroupName': ?autoscalingGroupName,
      'region': ?region,
      'tag': ?pulumi.Input.mapOptionalInputValue<TagTag, Map<String, dynamic>>(tag, (value) => value.toMap()),
    };
  }

  factory TagState.fromMap(Map<String, dynamic> map) {
    return TagState(
      autoscalingGroupName: map['autoscalingGroupName'] == null ? null : pulumi.Output.create<String>(map['autoscalingGroupName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tag: map['tag'] == null ? null : pulumi.Output.create<TagTag>(TagTag.fromMap((map['tag'] as Map).cast<String, dynamic>())),
    );
  }
}

