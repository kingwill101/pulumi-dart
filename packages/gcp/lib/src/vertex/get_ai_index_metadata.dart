// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_index_metadata_config.dart';

class GetAiIndexMetadata {
  /// The configuration of the Matching Engine Index.
  final List<GetAiIndexMetadataConfig> configs;

  /// Allows inserting, updating  or deleting the contents of the Matching Engine Index.
  /// The string must be a valid Cloud Storage directory path. If this
  /// field is set when calling IndexService.UpdateIndex, then no other
  /// Index field can be also updated as part of the same call.
  /// The expected structure and format of the files this URI points to is
  /// described at https://cloud.google.com/vertex-ai/docs/matching-engine/using-matching-engine#input-data-format
  final String contentsDeltaUri;

  /// If this field is set together with contentsDeltaUri when calling IndexService.UpdateIndex,
  /// then existing content of the Index will be replaced by the data from the contentsDeltaUri.
  final bool isCompleteOverwrite;

  /// Creates a new [GetAiIndexMetadata].
  /// [configs] The configuration of the Matching Engine Index.
  /// [contentsDeltaUri] Allows inserting, updating  or deleting the contents of the Matching Engine Index.
  /// [isCompleteOverwrite] If this field is set together with contentsDeltaUri when calling IndexService.UpdateIndex,
  GetAiIndexMetadata({
    required this.configs,
    required this.contentsDeltaUri,
    required this.isCompleteOverwrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs':
          pulumi.Input.encodeList<
            GetAiIndexMetadataConfig,
            Map<String, dynamic>
          >(configs, (value) => value.toMap()),
      'contentsDeltaUri': contentsDeltaUri,
      'isCompleteOverwrite': isCompleteOverwrite,
    };
  }

  factory GetAiIndexMetadata.fromMap(Map<String, dynamic> map) {
    return GetAiIndexMetadata(
      configs: pulumi.Input.decodeList<GetAiIndexMetadataConfig>(
        map['configs'],
        (value) => GetAiIndexMetadataConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      contentsDeltaUri: map['contentsDeltaUri'] as String,
      isCompleteOverwrite: map['isCompleteOverwrite'] as bool,
    );
  }
}
