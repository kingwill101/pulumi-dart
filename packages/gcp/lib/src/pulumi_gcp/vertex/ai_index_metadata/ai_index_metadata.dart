// ignore_for_file: unused_element, unnecessary_cast

import '../ai_index_metadata_config/ai_index_metadata_config.dart';

class AiIndexMetadata {
  /// The configuration of the Matching Engine Index.
  /// Structure is documented below.
  final AiIndexMetadataConfig config;

  /// Allows inserting, updating  or deleting the contents of the Matching Engine Index.
  /// The string must be a valid Cloud Storage directory path. If this
  /// field is set when calling IndexService.UpdateIndex, then no other
  /// Index field can be also updated as part of the same call.
  /// The expected structure and format of the files this URI points to is
  /// described at https://cloud.google.com/vertex-ai/docs/matching-engine/using-matching-engine#input-data-format
  final String? contentsDeltaUri;

  /// If this field is set together with contentsDeltaUri when calling IndexService.UpdateIndex,
  /// then existing content of the Index will be replaced by the data from the contentsDeltaUri.
  final bool? isCompleteOverwrite;

  AiIndexMetadata({
    required this.config,
    this.contentsDeltaUri,
    this.isCompleteOverwrite,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config.toMap();
    final contentsDeltaUriValue = contentsDeltaUri;
    if (contentsDeltaUriValue != null) {
      map['contentsDeltaUri'] = contentsDeltaUriValue;
    }
    final isCompleteOverwriteValue = isCompleteOverwrite;
    if (isCompleteOverwriteValue != null) {
      map['isCompleteOverwrite'] = isCompleteOverwriteValue;
    }
    return map;
  }

  factory AiIndexMetadata.fromMap(Map<String, dynamic> map) {
    return AiIndexMetadata(
      config: AiIndexMetadataConfig.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      contentsDeltaUri: map['contentsDeltaUri'] == null
          ? null
          : map['contentsDeltaUri'] as String,
      isCompleteOverwrite: map['isCompleteOverwrite'] == null
          ? null
          : map['isCompleteOverwrite'] as bool,
    );
  }
}
