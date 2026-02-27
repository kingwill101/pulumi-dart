// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getQuickConnect.
class GetQuickConnectArgs {
  /// Reference to the hosting Amazon Connect Instance
  final Input<String> instanceId;

  /// Returns information on a specific Quick Connect by name
  ///
  /// > **NOTE:** `instance_id` and one of either `name` or `quick_connect_id` is required.
  final Input<String>? name;

  /// Returns information on a specific Quick Connect by Quick Connect id
  final Input<String>? quickConnectId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the Quick Connect.
  final Input<Map<String, String>>? tags;

  GetQuickConnectArgs({
    required this.instanceId,
    this.name,
    this.quickConnectId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final quickConnectIdValue = quickConnectId;
    if (quickConnectIdValue != null) {
      map['quickConnectId'] = quickConnectIdValue;
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

  factory GetQuickConnectArgs.fromMap(Map<String, dynamic> map) {
    return GetQuickConnectArgs(
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
      quickConnectId: Input.asOptionalInput<String>(map['quickConnectId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
