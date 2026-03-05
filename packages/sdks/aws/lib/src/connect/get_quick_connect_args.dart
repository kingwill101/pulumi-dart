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
  /// &gt; **NOTE:** `instance_id` and one of either `name` or `quick_connect_id` is required.
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
    required this.instanceId,
    this.name,
    this.quickConnectId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'name': ?name,
      'quickConnectId': ?quickConnectId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetQuickConnectArgs.fromMap(Map<String, dynamic> map) {
    return GetQuickConnectArgs(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quickConnectId: (() { final guardedValue = map['quickConnectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

