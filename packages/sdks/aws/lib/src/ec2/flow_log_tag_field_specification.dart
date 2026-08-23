// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowLogTagFieldSpecification {
  /// Resource type to associate the tag keys with. Valid values: `instance`, `network-interface`, `auto-scaling-group`.
  final pulumi.Input<String> resourceType;
  /// Ordered list of tag keys, on resources of `resourceType`, to display in Flow Log records. The position of each key determines which field it populates in `logFormat` (e.g., the first `instance` tag key populates `$${instance-tag}` and the second populates `$${instance-tag-2}`).
  final pulumi.Input<List<String>> tagKeys;

  /// Creates a new [FlowLogTagFieldSpecification].
  /// [resourceType] Resource type to associate the tag keys with. Valid values: `instance`, `network-interface`, `auto-scaling-group`.
  /// [tagKeys] Ordered list of tag keys, on resources of `resourceType`, to display in Flow Log records. The position of each key determines which field it populates in `logFormat` (e.g., the first `instance` tag key populates `$${instance-tag}` and the second populates `$${instance-tag-2}`).
  const FlowLogTagFieldSpecification({
    required this.resourceType,
    required this.tagKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceType': resourceType,
      'tagKeys': tagKeys,
    };
  }

  factory FlowLogTagFieldSpecification.fromMap(Map<String, dynamic> map) {
    return FlowLogTagFieldSpecification(
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      tagKeys: pulumi.Input.fromValue((map['tagKeys'] as List).cast<String>()),
    );
  }
}
