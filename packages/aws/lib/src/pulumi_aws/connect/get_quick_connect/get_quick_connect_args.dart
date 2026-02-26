// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getQuickConnect.
class GetQuickConnectArgs {
  /// Reference to the hosting Amazon Connect Instance
  final Input<String> instanceId;

  /// Returns information on a specific Quick Connect by name
  ///
  /// > **NOTE:** <span pulumi-lang-nodejs="`instanceId`" pulumi-lang-dotnet="`InstanceId`" pulumi-lang-go="`instanceId`" pulumi-lang-python="`instance_id`" pulumi-lang-yaml="`instanceId`" pulumi-lang-java="`instanceId`">`instance_id`</span> and one of either <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`quickConnectId`" pulumi-lang-dotnet="`QuickConnectId`" pulumi-lang-go="`quickConnectId`" pulumi-lang-python="`quick_connect_id`" pulumi-lang-yaml="`quickConnectId`" pulumi-lang-java="`quickConnectId`">`quick_connect_id`</span> is required.
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
