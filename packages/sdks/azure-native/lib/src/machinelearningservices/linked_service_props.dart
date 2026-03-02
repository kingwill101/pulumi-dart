// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_link_type.dart';

/// LinkedService specific properties.
class LinkedServiceProps {
  /// The creation time of the linked service.
  final pulumi.Input<String>? createdTime;
  /// Type of the link target.
  final pulumi.Input<LinkedServiceLinkType>? linkType;
  /// ResourceId of the link target of the linked service.
  final pulumi.Input<String> linkedServiceResourceId;
  /// The last modified time of the linked service.
  final pulumi.Input<String>? modifiedTime;

  /// Creates a new [LinkedServiceProps].
  /// [createdTime] The creation time of the linked service.
  /// [linkType] Type of the link target.
  /// [linkedServiceResourceId] ResourceId of the link target of the linked service.
  /// [modifiedTime] The last modified time of the linked service.
  LinkedServiceProps({
    this.createdTime,
    this.linkType,
    required this.linkedServiceResourceId,
    this.modifiedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdTime': ?createdTime,
      'linkType': ?pulumi.Input.mapOptionalInputValue<LinkedServiceLinkType, String>(linkType, (value) => value.value),
      'linkedServiceResourceId': linkedServiceResourceId,
      'modifiedTime': ?modifiedTime,
    };
  }

  factory LinkedServiceProps.fromMap(Map<String, dynamic> map) {
    return LinkedServiceProps(
      createdTime: map['createdTime'] == null ? null : (map['createdTime']! as String).input(),
      linkType: map['linkType'] == null ? null : (LinkedServiceLinkType.fromValue(map['linkType']! as String)).input(),
      linkedServiceResourceId: (map['linkedServiceResourceId'] as String).input(),
      modifiedTime: map['modifiedTime'] == null ? null : (map['modifiedTime']! as String).input(),
    );
  }
}

