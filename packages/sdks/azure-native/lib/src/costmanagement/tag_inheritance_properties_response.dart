// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the tag inheritance setting.
class TagInheritancePropertiesResponse {
  /// This property defines the behavior when an inherited tag being applied matches a lower scope tag (Eg. Subscription tag matches the resource tag). If set to true - when tags match, the highest scope tags will be applied. Billing profile is the highest scope,  followed by invoice sections, subscriptions and resource groups (allows overriding of lower scope tag values). If set to false - when tags match, the lowest scope tags will be applied. So, if a resource has the same tag as a subscription tag, the resource tag will be applied (does not allow overriding of lower scope tag values).
  final pulumi.Input<bool> preferContainerTags;

  /// Creates a new [TagInheritancePropertiesResponse].
  /// [preferContainerTags] This property defines the behavior when an inherited tag being applied matches a lower scope tag (Eg. Subscription tag matches the resource tag). If set to true - when tags match, the highest scope tags will be applied. Billing profile is the highest scope,  followed by invoice sections, subscriptions and resource groups (allows overriding of lower scope tag values). If set to false - when tags match, the lowest scope tags will be applied. So, if a resource has the same tag as a subscription tag, the resource tag will be applied (does not allow overriding of lower scope tag values).
  const TagInheritancePropertiesResponse({
    required this.preferContainerTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferContainerTags': preferContainerTags,
    };
  }

  factory TagInheritancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TagInheritancePropertiesResponse(
      preferContainerTags: pulumi.Input.fromValue(map['preferContainerTags'] as bool),
    );
  }
}

