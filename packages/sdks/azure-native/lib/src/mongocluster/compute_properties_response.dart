// ignore_for_file: unused_element, unnecessary_cast


/// The compute properties of the cluster. This includes the virtual-cores/memory and scaling options applied to servers in the cluster.
class ComputePropertiesResponse {
  /// The compute tier to assign to the cluster, where each tier maps to a virtual-core and memory size. Example values: 'M30', 'M40'.
  final String? tier;

  /// Creates a new [ComputePropertiesResponse].
  /// [tier] The compute tier to assign to the cluster, where each tier maps to a virtual-core and memory size. Example values: 'M30', 'M40'.
  ComputePropertiesResponse({
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tier': ?tier,
    };
  }

  factory ComputePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ComputePropertiesResponse(
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

