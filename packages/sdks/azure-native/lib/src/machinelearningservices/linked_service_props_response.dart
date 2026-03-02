// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LinkedService specific properties.
class LinkedServicePropsResponse {
  /// The creation time of the linked service.
  final pulumi.Input<String>? createdTime;
  /// Type of the link target.
  final pulumi.Input<String>? linkType;
  /// ResourceId of the link target of the linked service.
  final pulumi.Input<String> linkedServiceResourceId;
  /// The last modified time of the linked service.
  final pulumi.Input<String>? modifiedTime;

  /// Creates a new [LinkedServicePropsResponse].
  /// [createdTime] The creation time of the linked service.
  /// [linkType] Type of the link target.
  /// [linkedServiceResourceId] ResourceId of the link target of the linked service.
  /// [modifiedTime] The last modified time of the linked service.
  LinkedServicePropsResponse({
    this.createdTime,
    this.linkType,
    required this.linkedServiceResourceId,
    this.modifiedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdTime': ?createdTime,
      'linkType': ?linkType,
      'linkedServiceResourceId': linkedServiceResourceId,
      'modifiedTime': ?modifiedTime,
    };
  }

  factory LinkedServicePropsResponse.fromMap(Map<String, dynamic> map) {
    return LinkedServicePropsResponse(
      createdTime: map['createdTime'] == null ? null : (map['createdTime'] as String).input(),
      linkType: map['linkType'] == null ? null : (map['linkType'] as String).input(),
      linkedServiceResourceId: (map['linkedServiceResourceId'] as String).input(),
      modifiedTime: map['modifiedTime'] == null ? null : (map['modifiedTime'] as String).input(),
    );
  }
}

