// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_proximity.dart';
import 'google_privacy_dlp_v2_regex.dart';

/// The rule to exclude findings based on a hotword. For record inspection of tables, column names are considered hotwords. An example of this is to exclude a finding if it belongs to a BigQuery column that matches a specific pattern.
class GooglePrivacyDlpV2ExcludeByHotword {
  /// Regular expression pattern defining what qualifies as a hotword.
  final GooglePrivacyDlpV2Regex? hotwordRegex;
  /// Range of characters within which the entire hotword must reside. The total length of the window cannot exceed 1000 characters. The windowBefore property in proximity should be set to 1 if the hotword needs to be included in a column header.
  final GooglePrivacyDlpV2Proximity? proximity;

  /// Creates a new [GooglePrivacyDlpV2ExcludeByHotword].
  /// [hotwordRegex] Regular expression pattern defining what qualifies as a hotword.
  /// [proximity] Range of characters within which the entire hotword must reside. The total length of the window cannot exceed 1000 characters. The windowBefore property in proximity should be set to 1 if the hotword needs to be included in a column header.
  GooglePrivacyDlpV2ExcludeByHotword({
    this.hotwordRegex,
    this.proximity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hotwordRegex': ?hotwordRegex == null ? null : hotwordRegex!.toMap(),
      'proximity': ?proximity == null ? null : proximity!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2ExcludeByHotword.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ExcludeByHotword(
      hotwordRegex: map['hotwordRegex'] == null ? null : GooglePrivacyDlpV2Regex.fromMap((map['hotwordRegex'] as Map).cast<String, dynamic>()),
      proximity: map['proximity'] == null ? null : GooglePrivacyDlpV2Proximity.fromMap((map['proximity'] as Map).cast<String, dynamic>()),
    );
  }
}

