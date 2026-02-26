// ignore_for_file: unused_element, unnecessary_cast

import 'gcs_source_response2.dart';

/// Input configuration for glossaries.
class GlossaryInputConfigResponse2 {
  /// Google Cloud Storage location of glossary data. File format is determined based on the filename extension. API returns [google.rpc.Code.INVALID_ARGUMENT] for unsupported URI-s and file formats. Wildcards are not allowed. This must be a single file in one of the following formats: For unidirectional glossaries: - TSV/CSV (`.tsv`/`.csv`): 2 column file, tab- or comma-separated. The first column is source text. The second column is target text. The file must not contain headers. That is, the first row is data, not column names. - TMX (`.tmx`): TMX file with parallel data defining source/target term pairs. For equivalent term sets glossaries: - CSV (`.csv`): Multi-column CSV file defining equivalent glossary terms in multiple languages. See documentation for more information - [glossaries](https://cloud.google.com/translate/docs/advanced/glossary).
  final GcsSourceResponse2 gcsSource;

  GlossaryInputConfigResponse2({
    required this.gcsSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcsSource'] = gcsSource.toMap();
    return map;
  }

  factory GlossaryInputConfigResponse2.fromMap(Map<String, dynamic> map) {
    return GlossaryInputConfigResponse2(
      gcsSource: GcsSourceResponse2.fromMap(
          (map['gcsSource'] as Map).cast<String, dynamic>()),
    );
  }
}
