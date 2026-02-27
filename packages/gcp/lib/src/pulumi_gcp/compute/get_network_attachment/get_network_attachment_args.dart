// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNetworkAttachment.
class GetNetworkAttachmentArgs {
  /// The name of the network attachment to retrieve.
  /// The name must be unique within the region.
  final pulumi.Input<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region in which the network attachment resides.
  /// For example, `europe-west1`.
  final pulumi.Input<String> region;

  GetNetworkAttachmentArgs({
    required this.name,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetNetworkAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkAttachmentArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
