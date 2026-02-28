// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_job_trigger_inspect_job_inspect_config_custom_info_type_dictionary_cloud_storage_path.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_custom_info_type_dictionary_word_list.dart';

class PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionary {
  /// Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryCloudStoragePath?
      cloudStoragePath;

  /// List of words or phrases to search for.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryWordList?
      wordList;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionary].
  /// [cloudStoragePath] Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// [wordList] List of words or phrases to search for.
  PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionary({
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

  factory PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionary.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionary(
      cloudStoragePath: map['cloudStoragePath'] == null
          ? null
          : PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryCloudStoragePath
              .fromMap(
                  (map['cloudStoragePath'] as Map).cast<String, dynamic>()),
      wordList: map['wordList'] == null
          ? null
          : PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryWordList
              .fromMap((map['wordList'] as Map).cast<String, dynamic>()),
    );
  }
}
