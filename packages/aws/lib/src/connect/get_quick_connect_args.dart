// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_get_quick_connect_get_quick_connect_args_doc}
/// Arguments for getQuickConnect.
/// {@endtemplate}
/// {@macro pulumi_connect_get_quick_connect_get_quick_connect_args_doc}
class GetQuickConnectArgs {
  /// Reference to the hosting Amazon Connect Instance
  final pulumi.Input<String> instanceId;

  /// Returns information on a specific Quick Connect by name
  ///
  /// > **NOTE:** `instance_id` and one of either `name` or `quick_connect_id` is required.
  final pulumi.Input<String>? name;

  /// Returns information on a specific Quick Connect by Quick Connect id
  final pulumi.Input<String>? quickConnectId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the Quick Connect.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetQuickConnectArgs].
  /// [instanceId] Reference to the hosting Amazon Connect Instance
  /// [name] Returns information on a specific Quick Connect by name
  /// [quickConnectId] Returns information on a specific Quick Connect by Quick Connect id
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the Quick Connect.
  GetQuickConnectArgs({
    required String instanceId,
    String? name,
    String? quickConnectId,
    String? region,
    Map<String, String>? tags,
  })  : instanceId = pulumi.Input.asInput<String>(instanceId),
        name = pulumi.Input.asOptionalInput<String>(name),
        quickConnectId = pulumi.Input.asOptionalInput<String>(quickConnectId),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      instanceId: map['instanceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      quickConnectId: map['quickConnectId'] == null
          ? null
          : map['quickConnectId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
