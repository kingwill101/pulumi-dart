// ignore_for_file: unused_element, unnecessary_cast


/// Allocation configuration used by Batch Service to provision the nodes.
class NodePlacementConfigurationResponse {
  /// Allocation policy used by Batch Service to provision the nodes. If not specified, Batch will use the regional policy.
  final String? policy;

  /// Creates a new [NodePlacementConfigurationResponse].
  /// [policy] Allocation policy used by Batch Service to provision the nodes. If not specified, Batch will use the regional policy.
  NodePlacementConfigurationResponse({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory NodePlacementConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NodePlacementConfigurationResponse(
      policy: map['policy'] == null ? null : map['policy'] as String,
    );
  }
}

