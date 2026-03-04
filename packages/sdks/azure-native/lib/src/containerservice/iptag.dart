// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains the IPTag associated with the object.
class IPTag {
  /// The IP tag type. Example: RoutingPreference.
  final pulumi.Input<String>? ipTagType;

  /// The value of the IP tag associated with the public IP. Example: Internet.
  final pulumi.Input<String>? tag;

  /// Creates a new [IPTag].
  /// [ipTagType] The IP tag type. Example: RoutingPreference.
  /// [tag] The value of the IP tag associated with the public IP. Example: Internet.
  IPTag({this.ipTagType, this.tag});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipTagType': ?ipTagType, 'tag': ?tag};
  }

  factory IPTag.fromMap(Map<String, dynamic> map) {
    return IPTag(
      ipTagType: (() {
        final guardedValue = map['ipTagType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tag: (() {
        final guardedValue = map['tag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
