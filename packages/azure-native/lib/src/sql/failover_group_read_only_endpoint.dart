// ignore_for_file: unused_element, unnecessary_cast


/// Read-only endpoint of the failover group instance.
class FailoverGroupReadOnlyEndpoint {
  /// Failover policy of the read-only endpoint for the failover group.
  final String? failoverPolicy;
  /// The target partner server where the read-only endpoint points to.
  final String? targetServer;

  /// Creates a new [FailoverGroupReadOnlyEndpoint].
  /// [failoverPolicy] Failover policy of the read-only endpoint for the failover group.
  /// [targetServer] The target partner server where the read-only endpoint points to.
  FailoverGroupReadOnlyEndpoint({
    this.failoverPolicy,
    this.targetServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverPolicy': ?failoverPolicy,
      'targetServer': ?targetServer,
    };
  }

  factory FailoverGroupReadOnlyEndpoint.fromMap(Map<String, dynamic> map) {
    return FailoverGroupReadOnlyEndpoint(
      failoverPolicy: map['failoverPolicy'] == null ? null : map['failoverPolicy'] as String,
      targetServer: map['targetServer'] == null ? null : map['targetServer'] as String,
    );
  }
}

