// ignore_for_file: unused_element, unnecessary_cast


/// configuration for the servers offering subPlan
class DefenderForServersGcpOfferingSubPlan {
  /// The available sub plans
  final String? type;

  /// Creates a new [DefenderForServersGcpOfferingSubPlan].
  /// [type] The available sub plans
  DefenderForServersGcpOfferingSubPlan({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory DefenderForServersGcpOfferingSubPlan.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingSubPlan(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

