// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_dependency_response.dart';

/// Deployment dependency information.
class DependencyResponse {
  /// The list of dependencies.
  final List<BasicDependencyResponse>? dependsOn;
  /// The ID of the dependency.
  final String? id;
  /// The dependency resource name.
  final String? resourceName;
  /// The dependency resource type.
  final String? resourceType;

  /// Creates a new [DependencyResponse].
  /// [dependsOn] The list of dependencies.
  /// [id] The ID of the dependency.
  /// [resourceName] The dependency resource name.
  /// [resourceType] The dependency resource type.
  DependencyResponse({
    this.dependsOn,
    this.id,
    this.resourceName,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<BasicDependencyResponse, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'id': ?id,
      'resourceName': ?resourceName,
      'resourceType': ?resourceType,
    };
  }

  factory DependencyResponse.fromMap(Map<String, dynamic> map) {
    return DependencyResponse(
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<BasicDependencyResponse>(map['dependsOn'], (value) => BasicDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
    );
  }
}

