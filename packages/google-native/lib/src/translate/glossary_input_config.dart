// ignore_for_file: unused_element, unnecessary_cast

import 'gcs_source.dart';

/// Input configuration for glossaries.
class GlossaryInputConfig {
  /// Google Cloud Storage location of glossary data. File format is determined based on the filename extension. API returns [google.rpc.Code.INVALID_ARGUMENT] for unsupported URI-s and file formats. Wildcards are not allowed. This must be a single file in one of the following formats: For unidirectional glossaries: - TSV/CSV (`.tsv`/`.csv`): Two column file, tab- or comma-separated. The first column is source text. The second column is target text. No headers in this file. The first row contains data and not column names. - TMX (`.tmx`): TMX file with parallel data defining source/target term pairs. For equivalent term sets glossaries: - CSV (`.csv`): Multi-column CSV file defining equivalent glossary terms in multiple languages. See documentation for more information - [glossaries](https://cloud.google.com/translate/docs/advanced/glossary).
  final GcsSource gcsSource;

  /// Creates a new [GlossaryInputConfig].
  /// [gcsSource] Google Cloud Storage location of glossary data. File format is determined based on the filename extension. API returns [google.rpc.Code.INVALID_ARGUMENT] for unsupported URI-s and file formats. Wildcards are not allowed. This must be a single file in one of the following formats: For unidirectional glossaries: - TSV/CSV (`.tsv`/`.csv`): Two column file, tab- or comma-separated. The first column is source text. The second column is target text. No headers in this file. The first row contains data and not column names. - TMX (`.tmx`): TMX file with parallel data defining source/target term pairs. For equivalent term sets glossaries: - CSV (`.csv`): Multi-column CSV file defining equivalent glossary terms in multiple languages. See documentation for more information - [glossaries](https://cloud.google.com/translate/docs/advanced/glossary).
  GlossaryInputConfig({required this.gcsSource});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'gcsSource': gcsSource.toMap()};
  }

  factory GlossaryInputConfig.fromMap(Map<String, dynamic> map) {
    return GlossaryInputConfig(
      gcsSource: GcsSource.fromMap(
        (map['gcsSource'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
