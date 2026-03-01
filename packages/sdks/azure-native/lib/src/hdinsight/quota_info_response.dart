// ignore_for_file: unused_element, unnecessary_cast


/// The quota properties for the cluster.
class QuotaInfoResponse {
  /// The cores used by the cluster.
  final int? coresUsed;

  /// Creates a new [QuotaInfoResponse].
  /// [coresUsed] The cores used by the cluster.
  QuotaInfoResponse({
    this.coresUsed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coresUsed': ?coresUsed,
    };
  }

  factory QuotaInfoResponse.fromMap(Map<String, dynamic> map) {
    return QuotaInfoResponse(
      coresUsed: map['coresUsed'] == null ? null : map['coresUsed'] as int,
    );
  }
}

