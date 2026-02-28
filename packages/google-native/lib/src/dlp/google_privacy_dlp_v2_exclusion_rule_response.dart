// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_dictionary_response.dart';
import 'google_privacy_dlp_v2_exclude_by_hotword_response.dart';
import 'google_privacy_dlp_v2_exclude_info_types_response.dart';
import 'google_privacy_dlp_v2_regex_response.dart';

/// The rule that specifies conditions when findings of infoTypes specified in `InspectionRuleSet` are removed from results.
class GooglePrivacyDlpV2ExclusionRuleResponse {
  /// Dictionary which defines the rule.
  final GooglePrivacyDlpV2DictionaryResponse dictionary;
  /// Drop if the hotword rule is contained in the proximate context. For tabular data, the context includes the column name.
  final GooglePrivacyDlpV2ExcludeByHotwordResponse excludeByHotword;
  /// Set of infoTypes for which findings would affect this rule.
  final GooglePrivacyDlpV2ExcludeInfoTypesResponse excludeInfoTypes;
  /// How the rule is applied, see MatchingType documentation for details.
  final String matchingType;
  /// Regular expression which defines the rule.
  final GooglePrivacyDlpV2RegexResponse regex;

  /// Creates a new [GooglePrivacyDlpV2ExclusionRuleResponse].
  /// [dictionary] Dictionary which defines the rule.
  /// [excludeByHotword] Drop if the hotword rule is contained in the proximate context. For tabular data, the context includes the column name.
  /// [excludeInfoTypes] Set of infoTypes for which findings would affect this rule.
  /// [matchingType] How the rule is applied, see MatchingType documentation for details.
  /// [regex] Regular expression which defines the rule.
  GooglePrivacyDlpV2ExclusionRuleResponse({
    required this.dictionary,
    required this.excludeByHotword,
    required this.excludeInfoTypes,
    required this.matchingType,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dictionary': dictionary.toMap(),
      'excludeByHotword': excludeByHotword.toMap(),
      'excludeInfoTypes': excludeInfoTypes.toMap(),
      'matchingType': matchingType,
      'regex': regex.toMap(),
    };
  }

  factory GooglePrivacyDlpV2ExclusionRuleResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ExclusionRuleResponse(
      dictionary: GooglePrivacyDlpV2DictionaryResponse.fromMap((map['dictionary'] as Map).cast<String, dynamic>()),
      excludeByHotword: GooglePrivacyDlpV2ExcludeByHotwordResponse.fromMap((map['excludeByHotword'] as Map).cast<String, dynamic>()),
      excludeInfoTypes: GooglePrivacyDlpV2ExcludeInfoTypesResponse.fromMap((map['excludeInfoTypes'] as Map).cast<String, dynamic>()),
      matchingType: map['matchingType'] as String,
      regex: GooglePrivacyDlpV2RegexResponse.fromMap((map['regex'] as Map).cast<String, dynamic>()),
    );
  }
}

