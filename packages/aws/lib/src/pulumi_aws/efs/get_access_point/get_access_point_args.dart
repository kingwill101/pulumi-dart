// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAccessPoint.
class GetAccessPointArgs {
  /// ID that identifies the file system.
  final pulumi.Input<String> accessPointId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value mapping of resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  GetAccessPointArgs({
    required this.accessPointId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPointId'] = accessPointId;
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

  factory GetAccessPointArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPointArgs(
      accessPointId: pulumi.Input.asInput<String>(map['accessPointId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
