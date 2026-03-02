// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ExclusionByResourceTypes
class ExclusionByResourceTypesResponse {
  /// <p>A comma-separated list of resource types to exclude from recording by the configuration recorder.</p>
  final pulumi.Input<List<String>>? resourceTypes;

  /// Creates a new [ExclusionByResourceTypesResponse].
  /// [resourceTypes] <p>A comma-separated list of resource types to exclude from recording by the configuration recorder.</p>
  ExclusionByResourceTypesResponse({
    this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceTypes': ?resourceTypes,
    };
  }

  factory ExclusionByResourceTypesResponse.fromMap(Map<String, dynamic> map) {
    return ExclusionByResourceTypesResponse(
      resourceTypes: map['resourceTypes'] == null ? null : ((map['resourceTypes'] as List).cast<String>()).input(),
    );
  }
}

