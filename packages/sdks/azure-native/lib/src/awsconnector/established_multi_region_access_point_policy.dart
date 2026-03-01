// ignore_for_file: unused_element, unnecessary_cast


/// Definition of EstablishedMultiRegionAccessPointPolicy
class EstablishedMultiRegionAccessPointPolicy {
  /// <p>The details of the last established policy.</p>
  final String? policy;

  /// Creates a new [EstablishedMultiRegionAccessPointPolicy].
  /// [policy] <p>The details of the last established policy.</p>
  EstablishedMultiRegionAccessPointPolicy({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
    };
  }

  factory EstablishedMultiRegionAccessPointPolicy.fromMap(Map<String, dynamic> map) {
    return EstablishedMultiRegionAccessPointPolicy(
      policy: map['policy'] == null ? null : map['policy'] as String,
    );
  }
}

