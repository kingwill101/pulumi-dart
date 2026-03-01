// ignore_for_file: unused_element, unnecessary_cast


/// The object that represents all properties related to capacity enforcement on an account.
class Capacity {
  /// The total throughput limit imposed on the account. A totalThroughputLimit of 2000 imposes a strict limit of max throughput that can be provisioned on that account to be 2000. A totalThroughputLimit of -1 indicates no limits on provisioning of throughput.
  final int? totalThroughputLimit;

  /// Creates a new [Capacity].
  /// [totalThroughputLimit] The total throughput limit imposed on the account. A totalThroughputLimit of 2000 imposes a strict limit of max throughput that can be provisioned on that account to be 2000. A totalThroughputLimit of -1 indicates no limits on provisioning of throughput.
  Capacity({
    this.totalThroughputLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalThroughputLimit': ?totalThroughputLimit,
    };
  }

  factory Capacity.fromMap(Map<String, dynamic> map) {
    return Capacity(
      totalThroughputLimit: map['totalThroughputLimit'] == null ? null : map['totalThroughputLimit'] as int,
    );
  }
}

