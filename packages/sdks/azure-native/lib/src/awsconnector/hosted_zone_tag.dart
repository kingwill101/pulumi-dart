// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of HostedZoneTag
class HostedZoneTag {
  /// The value of ``Key`` depends on the operation that you want to perform:  +   *Add a tag to a health check or hosted zone*: ``Key`` is the name that you want to give the new tag.  +   *Edit a tag*: ``Key`` is the name of the tag that you want to change the ``Value`` for.  +   *Delete a key*: ``Key`` is the name of the tag you want to remove.  +   *Give a name to a health check*: Edit the default ``Name`` tag. In the Amazon Route 53 console, the list of your health checks includes a *Name* column that lets you see the name that you've given to each health check.
  final pulumi.Input<String>? key;
  /// The value of ``Value`` depends on the operation that you want to perform:  +   *Add a tag to a health check or hosted zone*: ``Value`` is the value that you want to give the new tag.  +   *Edit a tag*: ``Value`` is the new value that you want to assign the tag.
  final pulumi.Input<String>? value;

  /// Creates a new [HostedZoneTag].
  /// [key] The value of ``Key`` depends on the operation that you want to perform:  +   *Add a tag to a health check or hosted zone*: ``Key`` is the name that you want to give the new tag.  +   *Edit a tag*: ``Key`` is the name of the tag that you want to change the ``Value`` for.  +   *Delete a key*: ``Key`` is the name of the tag you want to remove.  +   *Give a name to a health check*: Edit the default ``Name`` tag. In the Amazon Route 53 console, the list of your health checks includes a *Name* column that lets you see the name that you've given to each health check.
  /// [value] The value of ``Value`` depends on the operation that you want to perform:  +   *Add a tag to a health check or hosted zone*: ``Value`` is the value that you want to give the new tag.  +   *Edit a tag*: ``Value`` is the new value that you want to assign the tag.
  HostedZoneTag({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory HostedZoneTag.fromMap(Map<String, dynamic> map) {
    return HostedZoneTag(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

