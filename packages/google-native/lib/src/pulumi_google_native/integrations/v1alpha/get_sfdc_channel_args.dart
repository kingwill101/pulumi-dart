// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSfdcChannel.
class GetSfdcChannelArgs {
  final Input<String> location;
  final Input<String> productId;
  final Input<String>? project;
  final Input<String> sfdcChannelId;
  final Input<String> sfdcInstanceId;

  GetSfdcChannelArgs({
    required this.location,
    required this.productId,
    this.project,
    required this.sfdcChannelId,
    required this.sfdcInstanceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sfdcChannelId'] = sfdcChannelId;
    map['sfdcInstanceId'] = sfdcInstanceId;
    return map;
  }

  factory GetSfdcChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetSfdcChannelArgs(
      location: Input.asInput<String>(map['location']),
      productId: Input.asInput<String>(map['productId']),
      project: Input.asOptionalInput<String>(map['project']),
      sfdcChannelId: Input.asInput<String>(map['sfdcChannelId']),
      sfdcInstanceId: Input.asInput<String>(map['sfdcInstanceId']),
    );
  }
}
