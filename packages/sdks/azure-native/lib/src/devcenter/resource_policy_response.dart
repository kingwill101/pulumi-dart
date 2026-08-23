// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A resource policy.
class ResourcePolicyResponse {
  /// Optional. When specified, this expression is used to filter the resources.
  final pulumi.Input<String>? filter;
  /// Resources that are included and shared as a part of a project policy.
  final pulumi.Input<String>? resources;

  /// Creates a new [ResourcePolicyResponse].
  /// [filter] Optional. When specified, this expression is used to filter the resources.
  /// [resources] Resources that are included and shared as a part of a project policy.
  const ResourcePolicyResponse({
    this.filter,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'resources': ?resources,
    };
  }

  factory ResourcePolicyResponse.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyResponse(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
