// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppGroupQuota {
  /// Computing resources. Unit: LCU.
  final pulumi.Input<int> computeResource;
  /// Storage Size. Unit: GB.
  final pulumi.Input<int> docSize;
  /// Search request. Unit: times/second.
  final pulumi.Input<int>? qps;
  /// Specification. Valid values:
  /// * `opensearch.share.junior`: Entry-level.
  /// * `opensearch.share.common`: Shared universal.
  /// * `opensearch.share.compute`: Shared computing.
  /// * `opensearch.share.storage`: Shared storage type.
  /// * `opensearch.private.common`: Exclusive universal type.
  /// * `opensearch.private.compute`: Exclusive computing type.
  /// * `opensearch.private.storage`: Exclusive storage type
  final pulumi.Input<String> spec;

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
      computeResource: pulumi.Input.fromValue(map['computeResource'] as int),
      docSize: pulumi.Input.fromValue(map['docSize'] as int),
      qps: (() { final guardedValue = map['qps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      spec: pulumi.Input.fromValue(map['spec'] as String),
    );
  }
}

