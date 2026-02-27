// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getApis.
class GetApisArgs {
  /// API name.
  final pulumi.Input<String>? name;

  /// API protocol.
  final pulumi.Input<String>? protocolType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired APIs.
  final pulumi.Input<Map<String, String>>? tags;

  GetApisArgs({
    this.name,
    this.protocolType,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final protocolTypeValue = protocolType;
    if (protocolTypeValue != null) {
      map['protocolType'] = protocolTypeValue;
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

  factory GetApisArgs.fromMap(Map<String, dynamic> map) {
    return GetApisArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      protocolType: pulumi.Input.asOptionalInput<String>(map['protocolType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
