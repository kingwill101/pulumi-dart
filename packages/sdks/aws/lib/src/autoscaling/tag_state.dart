// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_tag.dart';

/// Input properties used for looking up and filtering Tag resources.
class TagState {
  /// Name of the Autoscaling Group to apply the tag to.
  final pulumi.Input<String?>? autoscalingGroupName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Tag to create. The `tag` block is documented below.
  final pulumi.Input<TagTag?>? tag;

  /// Creates a new [TagState].
  /// [autoscalingGroupName] Name of the Autoscaling Group to apply the tag to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tag] Tag to create. The `tag` block is documented below.
  const TagState({
    this.autoscalingGroupName,
    this.region,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingGroupName': ?autoscalingGroupName,
      'region': ?region,
      'tag': ?pulumi.Input.mapOptionalInputValue<TagTag, Map<String, dynamic>>(tag, (value) => value.toMap()),
    };
  }

  factory TagState.fromMap(Map<String, dynamic> map) {
    return TagState(
      autoscalingGroupName: (() { final guardedValue = map['autoscalingGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TagTag.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
