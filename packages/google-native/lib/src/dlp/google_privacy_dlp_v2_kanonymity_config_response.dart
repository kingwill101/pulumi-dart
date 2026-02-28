// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_entity_id_response.dart';
import 'google_privacy_dlp_v2_field_id_response.dart';

/// k-anonymity metric, used for analysis of reidentification risk.
class GooglePrivacyDlpV2KAnonymityConfigResponse {
  /// Message indicating that multiple rows might be associated to a single individual. If the same entity_id is associated to multiple quasi-identifier tuples over distinct rows, we consider the entire collection of tuples as the composite quasi-identifier. This collection is a multiset: the order in which the different tuples appear in the dataset is ignored, but their frequency is taken into account. Important note: a maximum of 1000 rows can be associated to a single entity ID. If more rows are associated with the same entity ID, some might be ignored.
  final GooglePrivacyDlpV2EntityIdResponse entityId;
  /// Set of fields to compute k-anonymity over. When multiple fields are specified, they are considered a single composite key. Structs and repeated data types are not supported; however, nested fields are supported so long as they are not structs themselves or nested within a repeated field.
  final List<GooglePrivacyDlpV2FieldIdResponse> quasiIds;

  /// Creates a new [GooglePrivacyDlpV2KAnonymityConfigResponse].
  /// [entityId] Message indicating that multiple rows might be associated to a single individual. If the same entity_id is associated to multiple quasi-identifier tuples over distinct rows, we consider the entire collection of tuples as the composite quasi-identifier. This collection is a multiset: the order in which the different tuples appear in the dataset is ignored, but their frequency is taken into account. Important note: a maximum of 1000 rows can be associated to a single entity ID. If more rows are associated with the same entity ID, some might be ignored.
  /// [quasiIds] Set of fields to compute k-anonymity over. When multiple fields are specified, they are considered a single composite key. Structs and repeated data types are not supported; however, nested fields are supported so long as they are not structs themselves or nested within a repeated field.
  GooglePrivacyDlpV2KAnonymityConfigResponse({
    required this.entityId,
    required this.quasiIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId.toMap(),
      'quasiIds': pulumi.Input.encodeList<GooglePrivacyDlpV2FieldIdResponse, Map<String, dynamic>>(quasiIds, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2KAnonymityConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2KAnonymityConfigResponse(
      entityId: GooglePrivacyDlpV2EntityIdResponse.fromMap((map['entityId'] as Map).cast<String, dynamic>()),
      quasiIds: pulumi.Input.decodeList<GooglePrivacyDlpV2FieldIdResponse>(map['quasiIds'], (value) => GooglePrivacyDlpV2FieldIdResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

