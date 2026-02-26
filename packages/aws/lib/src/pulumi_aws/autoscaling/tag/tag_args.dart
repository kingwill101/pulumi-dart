// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../tag_tag/tag_tag.dart';

/// The set of arguments for Tag.
class TagArgs {
  /// Name of the Autoscaling Group to apply the tag to.
  final Input<String> autoscalingGroupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tag to create. The <span pulumi-lang-nodejs="`tag`" pulumi-lang-dotnet="`Tag`" pulumi-lang-go="`tag`" pulumi-lang-python="`tag`" pulumi-lang-yaml="`tag`" pulumi-lang-java="`tag`">`tag`</span> block is documented below.
  final Input<TagTag> tag;

  TagArgs({
    required this.autoscalingGroupName,
    this.region,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingGroupName'] = autoscalingGroupName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['tag'] = Input.mapInputValue<TagTag, Map<String, dynamic>>(
        tag, (value) => value.toMap());
    return map;
  }

  factory TagArgs.fromMap(Map<String, dynamic> map) {
    return TagArgs(
      autoscalingGroupName: Input.asInput<String>(map['autoscalingGroupName']),
      region: Input.asOptionalInput<String>(map['region']),
      tag: Input.asInput<TagTag>(map['tag']),
    );
  }
}
