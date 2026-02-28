// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_word_list.dart';

/// Replace each input value with a value randomly selected from the dictionary.
class GooglePrivacyDlpV2ReplaceDictionaryConfig {
  /// A list of words to select from for random replacement. The [limits](https://cloud.google.com/dlp/limits) page contains details about the size limits of dictionaries.
  final GooglePrivacyDlpV2WordList? wordList;

  /// Creates a new [GooglePrivacyDlpV2ReplaceDictionaryConfig].
  /// [wordList] A list of words to select from for random replacement. The [limits](https://cloud.google.com/dlp/limits) page contains details about the size limits of dictionaries.
  GooglePrivacyDlpV2ReplaceDictionaryConfig({
    this.wordList,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final wordListValue = wordList;
    if (wordListValue != null) {
      map['wordList'] = wordListValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2ReplaceDictionaryConfig.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ReplaceDictionaryConfig(
      wordList: map['wordList'] == null
          ? null
          : GooglePrivacyDlpV2WordList.fromMap(
              (map['wordList'] as Map).cast<String, dynamic>()),
    );
  }
}
