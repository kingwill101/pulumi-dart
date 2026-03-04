// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Allocation configuration used by Batch Service to provision the nodes.
class NodePlacementConfigurationResponse {
  /// Allocation policy used by Batch Service to provision the nodes. If not specified, Batch will use the regional policy.
  final pulumi.Input<String>? policy;

  /// Creates a new [NodePlacementConfigurationResponse].
  /// [policy] Allocation policy used by Batch Service to provision the nodes. If not specified, Batch will use the regional policy.
  NodePlacementConfigurationResponse({this.policy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'policy': ?policy};
  }

  factory NodePlacementConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NodePlacementConfigurationResponse(
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
