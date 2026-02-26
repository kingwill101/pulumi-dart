// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_word_list_response.dart';

/// Replace each input value with a value randomly selected from the dictionary.
class GooglePrivacyDlpV2ReplaceDictionaryConfigResponse {
  /// A list of words to select from for random replacement. The [limits](https://cloud.google.com/dlp/limits) page contains details about the size limits of dictionaries.
  final GooglePrivacyDlpV2WordListResponse wordList;

  GooglePrivacyDlpV2ReplaceDictionaryConfigResponse({
    required this.wordList,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['wordList'] = wordList.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2ReplaceDictionaryConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ReplaceDictionaryConfigResponse(
      wordList: GooglePrivacyDlpV2WordListResponse.fromMap(
          (map['wordList'] as Map).cast<String, dynamic>()),
    );
  }
}
