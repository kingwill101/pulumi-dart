// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ExclusionByResourceTypes
class ExclusionByResourceTypes {
  /// &lt;p&gt;A comma-separated list of resource types to exclude from recording by the configuration recorder.&lt;/p&gt;
  final pulumi.Input<List<String>>? resourceTypes;

  /// Creates a new [ExclusionByResourceTypes].
  /// [resourceTypes] &lt;p&gt;A comma-separated list of resource types to exclude from recording by the configuration recorder.&lt;/p&gt;
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
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

