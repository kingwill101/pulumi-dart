// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getVirtualGateway.
class GetVirtualGatewayArgs {
  /// Name of the service mesh in which the virtual gateway exists.
  final Input<String> meshName;

  /// Name of the virtual gateway.
  final Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags.
  final Input<Map<String, String>>? tags;

  GetVirtualGatewayArgs({
    required this.meshName,
    required this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['meshName'] = meshName;
    map['name'] = name;
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

  factory GetVirtualGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewayArgs(
      meshName: Input.asInput<String>(map['meshName']),
      name: Input.asInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
