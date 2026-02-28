// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_info_type.dart';

/// List of excluded infoTypes.
class GooglePrivacyDlpV2ExcludeInfoTypes {
  /// InfoType list in ExclusionRule rule drops a finding when it overlaps or contained within with a finding of an infoType from this list. For example, for `InspectionRuleSet.info_types` containing "PHONE_NUMBER"` and `exclusion_rule` containing `exclude_info_types.info_types` with "EMAIL_ADDRESS" the phone number findings are dropped if they overlap with EMAIL_ADDRESS finding. That leads to "555-222-2222@example.org" to generate only a single finding, namely email address.
  final List<GooglePrivacyDlpV2InfoType>? infoTypes;

  /// Creates a new [GooglePrivacyDlpV2ExcludeInfoTypes].
  /// [infoTypes] InfoType list in ExclusionRule rule drops a finding when it overlaps or contained within with a finding of an infoType from this list. For example, for `InspectionRuleSet.info_types` containing "PHONE_NUMBER"` and `exclusion_rule` containing `exclude_info_types.info_types` with "EMAIL_ADDRESS" the phone number findings are dropped if they overlap with EMAIL_ADDRESS finding. That leads to "555-222-2222@example.org" to generate only a single finding, namely email address.
  GooglePrivacyDlpV2ExcludeInfoTypes({
    this.infoTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes': ?infoTypes == null ? null : pulumi.Input.encodeList<GooglePrivacyDlpV2InfoType, Map<String, dynamic>>(infoTypes!, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2ExcludeInfoTypes.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ExcludeInfoTypes(
      infoTypes: map['infoTypes'] == null ? null : pulumi.Input.decodeList<GooglePrivacyDlpV2InfoType>(map['infoTypes'], (value) => GooglePrivacyDlpV2InfoType.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

