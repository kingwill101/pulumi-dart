// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_inspect_template_inspect_config_custom_info_type_dictionary_cloud_storage_path.dart';
import 'prevention_inspect_template_inspect_config_custom_info_type_dictionary_word_list.dart';

class PreventionInspectTemplateInspectConfigCustomInfoTypeDictionary {
  /// Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath? cloudStoragePath;
  /// List of words or phrases to search for.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryWordList? wordList;

  /// Creates a new [PreventionInspectTemplateInspectConfigCustomInfoTypeDictionary].
  /// [cloudStoragePath] Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// [wordList] List of words or phrases to search for.
  PreventionInspectTemplateInspectConfigCustomInfoTypeDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStoragePath': ?cloudStoragePath == null ? null : cloudStoragePath!.toMap(),
      'wordList': ?wordList == null ? null : wordList!.toMap(),
    };
  }

  factory PreventionInspectTemplateInspectConfigCustomInfoTypeDictionary.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigCustomInfoTypeDictionary(
      cloudStoragePath: map['cloudStoragePath'] == null ? null : PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath.fromMap((map['cloudStoragePath'] as Map).cast<String, dynamic>()),
      wordList: map['wordList'] == null ? null : PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryWordList.fromMap((map['wordList'] as Map).cast<String, dynamic>()),
    );
  }
}

