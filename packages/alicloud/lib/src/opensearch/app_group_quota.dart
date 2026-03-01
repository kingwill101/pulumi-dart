// ignore_for_file: unused_element, unnecessary_cast


class AppGroupQuota {
  /// Computing resources. Unit: LCU.
  final int computeResource;
  /// Storage Size. Unit: GB.
  final int docSize;
  /// Search request. Unit: times/second.
  final int? qps;
  /// Specification. Valid values:
  /// * `opensearch.share.junior`: Entry-level.
  /// * `opensearch.share.common`: Shared universal.
  /// * `opensearch.share.compute`: Shared computing.
  /// * `opensearch.share.storage`: Shared storage type.
  /// * `opensearch.private.common`: Exclusive universal type.
  /// * `opensearch.private.compute`: Exclusive computing type.
  /// * `opensearch.private.storage`: Exclusive storage type
  final String spec;

  /// Creates a new [AppGroupQuota].
  /// [computeResource] Computing resources. Unit: LCU.
  /// [docSize] Storage Size. Unit: GB.
  /// [qps] Search request. Unit: times/second.
  /// [spec] Specification. Valid values:
  AppGroupQuota({
    required this.computeResource,
    required this.docSize,
    this.qps,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeResource': computeResource,
      'docSize': docSize,
      'qps': ?qps,
      'spec': spec,
    };
  }

  factory AppGroupQuota.fromMap(Map<String, dynamic> map) {
    return AppGroupQuota(
      computeResource: map['computeResource'] as int,
      docSize: map['docSize'] as int,
      qps: map['qps'] == null ? null : map['qps'] as int,
      spec: map['spec'] as String,
    );
  }
}

