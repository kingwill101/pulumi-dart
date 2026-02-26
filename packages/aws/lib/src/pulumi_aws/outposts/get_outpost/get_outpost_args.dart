// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOutpost.
class GetOutpostArgs {
  /// ARN.
  final Input<String>? arn;

  /// Identifier of the Outpost.
  final Input<String>? id;

  /// Name of the Outpost.
  final Input<String>? name;

  /// AWS Account identifier of the Outpost owner.
  final Input<String>? ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Outpost tags.
  final Input<Map<String, String>>? tags;

  GetOutpostArgs({
    this.arn,
    this.id,
    this.name,
    this.ownerId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final ownerIdValue = ownerId;
    if (ownerIdValue != null) {
      map['ownerId'] = ownerIdValue;
    }
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

  factory GetOutpostArgs.fromMap(Map<String, dynamic> map) {
    return GetOutpostArgs(
      arn: Input.asOptionalInput<String>(map['arn']),
      id: Input.asOptionalInput<String>(map['id']),
      name: Input.asOptionalInput<String>(map['name']),
      ownerId: Input.asOptionalInput<String>(map['ownerId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
