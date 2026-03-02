// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A path element of a management group ancestors.
class ManagementGroupPathElementResponse {
  /// The friendly name of the group.
  final pulumi.Input<String>? displayName;
  /// The name of the group.
  final pulumi.Input<String>? name;

  /// Creates a new [ManagementGroupPathElementResponse].
  /// [displayName] The friendly name of the group.
  /// [name] The name of the group.
  ManagementGroupPathElementResponse({
    this.displayName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'name': ?name,
    };
  }

  factory ManagementGroupPathElementResponse.fromMap(Map<String, dynamic> map) {
    return ManagementGroupPathElementResponse(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

