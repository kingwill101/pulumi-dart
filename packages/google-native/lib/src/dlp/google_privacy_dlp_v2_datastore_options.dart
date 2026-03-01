// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_kind_expression.dart';
import 'google_privacy_dlp_v2_partition_id.dart';

/// Options defining a data set within Google Cloud Datastore.
class GooglePrivacyDlpV2DatastoreOptions {
  /// The kind to process.
  final GooglePrivacyDlpV2KindExpression? kind;

  /// A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty.
  final GooglePrivacyDlpV2PartitionId? partitionId;

  /// Creates a new [GooglePrivacyDlpV2DatastoreOptions].
  /// [kind] The kind to process.
  /// [partitionId] A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty.
  GooglePrivacyDlpV2DatastoreOptions({this.kind, this.partitionId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind == null ? null : kind!.toMap(),
      'partitionId': ?partitionId == null ? null : partitionId!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2DatastoreOptions.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DatastoreOptions(
      kind: map['kind'] == null
          ? null
          : GooglePrivacyDlpV2KindExpression.fromMap(
              (map['kind'] as Map).cast<String, dynamic>(),
            ),
      partitionId: map['partitionId'] == null
          ? null
          : GooglePrivacyDlpV2PartitionId.fromMap(
              (map['partitionId'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
