// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ExclusionByResourceTypes
class ExclusionByResourceTypesResponse {
  /// &lt;p&gt;A comma-separated list of resource types to exclude from recording by the configuration recorder.&lt;/p&gt;
  final pulumi.Input<List<String>?>? resourceTypes;

  /// Creates a new [ExclusionByResourceTypesResponse].
  /// [resourceTypes] &lt;p&gt;A comma-separated list of resource types to exclude from recording by the configuration recorder.&lt;/p&gt;
  const ExclusionByResourceTypesResponse({
    this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceTypes': ?resourceTypes,
    };
  }

  factory ExclusionByResourceTypesResponse.fromMap(Map<String, dynamic> map) {
    return ExclusionByResourceTypesResponse(
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
