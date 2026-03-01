// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_entity_id.dart';
import 'google_privacy_dlp_v2_field_id.dart';

/// k-anonymity metric, used for analysis of reidentification risk.
class GooglePrivacyDlpV2KAnonymityConfig {
  /// Message indicating that multiple rows might be associated to a single individual. If the same entity_id is associated to multiple quasi-identifier tuples over distinct rows, we consider the entire collection of tuples as the composite quasi-identifier. This collection is a multiset: the order in which the different tuples appear in the dataset is ignored, but their frequency is taken into account. Important note: a maximum of 1000 rows can be associated to a single entity ID. If more rows are associated with the same entity ID, some might be ignored.
  final GooglePrivacyDlpV2EntityId? entityId;

  /// Set of fields to compute k-anonymity over. When multiple fields are specified, they are considered a single composite key. Structs and repeated data types are not supported; however, nested fields are supported so long as they are not structs themselves or nested within a repeated field.
  final List<GooglePrivacyDlpV2FieldId>? quasiIds;

  /// Creates a new [GooglePrivacyDlpV2KAnonymityConfig].
  /// [entityId] Message indicating that multiple rows might be associated to a single individual. If the same entity_id is associated to multiple quasi-identifier tuples over distinct rows, we consider the entire collection of tuples as the composite quasi-identifier. This collection is a multiset: the order in which the different tuples appear in the dataset is ignored, but their frequency is taken into account. Important note: a maximum of 1000 rows can be associated to a single entity ID. If more rows are associated with the same entity ID, some might be ignored.
  /// [quasiIds] Set of fields to compute k-anonymity over. When multiple fields are specified, they are considered a single composite key. Structs and repeated data types are not supported; however, nested fields are supported so long as they are not structs themselves or nested within a repeated field.
  GooglePrivacyDlpV2KAnonymityConfig({this.entityId, this.quasiIds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': ?entityId == null ? null : entityId!.toMap(),
      'quasiIds': ?quasiIds == null
          ? null
          : pulumi.Input.encodeList<
              GooglePrivacyDlpV2FieldId,
              Map<String, dynamic>
            >(quasiIds!, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2KAnonymityConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2KAnonymityConfig(
      entityId: map['entityId'] == null
          ? null
          : GooglePrivacyDlpV2EntityId.fromMap(
              (map['entityId'] as Map).cast<String, dynamic>(),
            ),
      quasiIds: map['quasiIds'] == null
          ? null
          : pulumi.Input.decodeList<GooglePrivacyDlpV2FieldId>(
              map['quasiIds'],
              (value) => GooglePrivacyDlpV2FieldId.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
