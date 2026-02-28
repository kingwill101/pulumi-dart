// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_stored_info_type_dictionary_cloud_storage_path.dart';
import 'prevention_stored_info_type_dictionary_word_list.dart';

class PreventionStoredInfoTypeDictionary {
  /// Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// Structure is documented below.
  final PreventionStoredInfoTypeDictionaryCloudStoragePath? cloudStoragePath;

  /// List of words or phrases to search for.
  /// Structure is documented below.
  final PreventionStoredInfoTypeDictionaryWordList? wordList;

  /// Creates a new [PreventionStoredInfoTypeDictionary].
  /// [cloudStoragePath] Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// [wordList] List of words or phrases to search for.
  PreventionStoredInfoTypeDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudStoragePathValue = cloudStoragePath;
    if (cloudStoragePathValue != null) {
      map['cloudStoragePath'] = cloudStoragePathValue.toMap();
    }
    final wordListValue = wordList;
    if (wordListValue != null) {
      map['wordList'] = wordListValue.toMap();
    }
    return map;
  }

  factory PreventionStoredInfoTypeDictionary.fromMap(Map<String, dynamic> map) {
    return PreventionStoredInfoTypeDictionary(
      cloudStoragePath: map['cloudStoragePath'] == null
          ? null
          : PreventionStoredInfoTypeDictionaryCloudStoragePath.fromMap(
              (map['cloudStoragePath'] as Map).cast<String, dynamic>()),
      wordList: map['wordList'] == null
          ? null
          : PreventionStoredInfoTypeDictionaryWordList.fromMap(
              (map['wordList'] as Map).cast<String, dynamic>()),
    );
  }
}
