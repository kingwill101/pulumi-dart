// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppGroupsGroupQuota {
  /// Computing resources. Unit: LCU.
  final pulumi.Input<String> computeResource;
  /// Storage Size. Unit: GB.
  final pulumi.Input<String> docSize;
  /// Specification. Valid values:
  /// * `opensearch.share.junior`: Entry-level.
  /// * `opensearch.share.common`: Shared universal.
  /// * `opensearch.share.compute`: Shared computing.
  /// * `opensearch.share.storage`: Shared storage type.
  /// * `opensearch.private.common`: Exclusive universal type.
  /// * `opensearch.private.compute`: Exclusive computing type.
  /// * `opensearch.private.storage`: Exclusive storage type
  final pulumi.Input<String> spec;

  /// Creates a new [GetAppGroupsGroupQuota].
  /// [computeResource] Computing resources. Unit: LCU.
  /// [docSize] Storage Size. Unit: GB.
  /// [spec] Specification. Valid values:
  const GetAppGroupsGroupQuota({
    required this.computeResource,
    required this.docSize,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeResource': computeResource,
      'docSize': docSize,
      'spec': spec,
    };
  }

  factory GetAppGroupsGroupQuota.fromMap(Map<String, dynamic> map) {
    return GetAppGroupsGroupQuota(
      computeResource: pulumi.Input.fromValue(map['computeResource'] as String),
      docSize: pulumi.Input.fromValue(map['docSize'] as String),
      spec: pulumi.Input.fromValue(map['spec'] as String),
    );
  }
}

