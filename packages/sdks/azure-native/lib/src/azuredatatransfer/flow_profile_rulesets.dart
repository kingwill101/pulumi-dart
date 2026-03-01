// ignore_for_file: unused_element, unnecessary_cast

import 'antivirus_ruleset.dart';
import 'archive_ruleset.dart';
import 'data_size_ruleset.dart';
import 'mime_filter_ruleset.dart';
import 'text_matching_ruleset.dart';
import 'xml_filter_ruleset.dart';

/// The allowed set of configurable rulesets for a FlowProfile resource, used during data replication. All rulesets are optional, and any ruleset configured will be applied to every applicable replicating data. Any data that fails a ruleset will be denied replication. If a ruleset is not configured then the ruleset is considered disabled and will not apply towards replicating data.
class FlowProfileRulesets {
  /// Antivirus scanning rules for replicated data.
  final AntivirusRuleset? antivirus;
  /// Rules for handling archive files during replication.
  final ArchiveRuleset? archives;
  /// Rules that enforce minimum and maximum data size limits.
  final DataSizeRuleset? dataSize;
  /// Rules for filtering files based on MIME types.
  final MimeFilterRuleset? mimeFilters;
  /// Rules for detecting and blocking specific text patterns.
  final TextMatchingRuleset? textMatching;
  /// Rules for filtering XML content using XSD schemas.
  final XmlFilterRuleset? xmlFilters;

  /// Creates a new [FlowProfileRulesets].
  /// [antivirus] Antivirus scanning rules for replicated data.
  /// [archives] Rules for handling archive files during replication.
  /// [dataSize] Rules that enforce minimum and maximum data size limits.
  /// [mimeFilters] Rules for filtering files based on MIME types.
  /// [textMatching] Rules for detecting and blocking specific text patterns.
  /// [xmlFilters] Rules for filtering XML content using XSD schemas.
  FlowProfileRulesets({
    this.antivirus,
    this.archives,
    this.dataSize,
    this.mimeFilters,
    this.textMatching,
    this.xmlFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'antivirus': ?antivirus == null ? null : antivirus!.toMap(),
      'archives': ?archives == null ? null : archives!.toMap(),
      'dataSize': ?dataSize == null ? null : dataSize!.toMap(),
      'mimeFilters': ?mimeFilters == null ? null : mimeFilters!.toMap(),
      'textMatching': ?textMatching == null ? null : textMatching!.toMap(),
      'xmlFilters': ?xmlFilters == null ? null : xmlFilters!.toMap(),
    };
  }

  factory FlowProfileRulesets.fromMap(Map<String, dynamic> map) {
    return FlowProfileRulesets(
      antivirus: map['antivirus'] == null ? null : AntivirusRuleset.fromMap((map['antivirus'] as Map).cast<String, dynamic>()),
      archives: map['archives'] == null ? null : ArchiveRuleset.fromMap((map['archives'] as Map).cast<String, dynamic>()),
      dataSize: map['dataSize'] == null ? null : DataSizeRuleset.fromMap((map['dataSize'] as Map).cast<String, dynamic>()),
      mimeFilters: map['mimeFilters'] == null ? null : MimeFilterRuleset.fromMap((map['mimeFilters'] as Map).cast<String, dynamic>()),
      textMatching: map['textMatching'] == null ? null : TextMatchingRuleset.fromMap((map['textMatching'] as Map).cast<String, dynamic>()),
      xmlFilters: map['xmlFilters'] == null ? null : XmlFilterRuleset.fromMap((map['xmlFilters'] as Map).cast<String, dynamic>()),
    );
  }
}

