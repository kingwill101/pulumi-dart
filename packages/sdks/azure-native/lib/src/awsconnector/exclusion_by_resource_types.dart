// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ExclusionByResourceTypes
class ExclusionByResourceTypes {
  /// <p>A comma-separated list of resource types to exclude from recording by the configuration recorder.</p>
  final pulumi.Input<List<String>>? resourceTypes;

  /// Creates a new [ExclusionByResourceTypes].
  /// [resourceTypes] <p>A comma-separated list of resource types to exclude from recording by the configuration recorder.</p>
  ExclusionByResourceTypes({
    this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceTypes': ?resourceTypes,
    };
  }

  factory ExclusionByResourceTypes.fromMap(Map<String, dynamic> map) {
    return ExclusionByResourceTypes(
      resourceTypes: map['resourceTypes'] == null ? null : ((map['resourceTypes']! as List).cast<String>()).input(),
    );
  }
}

