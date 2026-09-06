// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'antivirus_ruleset_response.dart';
import 'archive_ruleset_response.dart';
import 'data_size_ruleset_response.dart';
import 'mime_filter_ruleset_response.dart';
import 'text_matching_ruleset_response.dart';
import 'xml_filter_ruleset_response.dart';

/// The allowed set of configurable rulesets for a FlowProfile resource, used during data replication. All rulesets are optional, and any ruleset configured will be applied to every applicable replicating data. Any data that fails a ruleset will be denied replication. If a ruleset is not configured then the ruleset is considered disabled and will not apply towards replicating data.
class FlowProfileRulesetsResponse {
  /// Antivirus scanning rules for replicated data.
  final pulumi.Input<AntivirusRulesetResponse?>? antivirus;
  /// Rules for handling archive files during replication.
  final pulumi.Input<ArchiveRulesetResponse?>? archives;
  /// Rules that enforce minimum and maximum data size limits.
  final pulumi.Input<DataSizeRulesetResponse?>? dataSize;
  /// Rules for filtering files based on MIME types.
  final pulumi.Input<MimeFilterRulesetResponse?>? mimeFilters;
  /// Rules for detecting and blocking specific text patterns.
  final pulumi.Input<TextMatchingRulesetResponse?>? textMatching;
  /// Rules for filtering XML content using XSD schemas.
  final pulumi.Input<XmlFilterRulesetResponse?>? xmlFilters;

  /// Creates a new [FlowProfileRulesetsResponse].
  /// [antivirus] Antivirus scanning rules for replicated data.
  /// [archives] Rules for handling archive files during replication.
  /// [dataSize] Rules that enforce minimum and maximum data size limits.
  /// [mimeFilters] Rules for filtering files based on MIME types.
  /// [textMatching] Rules for detecting and blocking specific text patterns.
  /// [xmlFilters] Rules for filtering XML content using XSD schemas.
  const FlowProfileRulesetsResponse({
    this.antivirus,
    this.archives,
    this.dataSize,
    this.mimeFilters,
    this.textMatching,
    this.xmlFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'antivirus': ?pulumi.Input.mapOptionalInputValue<AntivirusRulesetResponse, Map<String, dynamic>>(antivirus, (value) => value.toMap()),
      'archives': ?pulumi.Input.mapOptionalInputValue<ArchiveRulesetResponse, Map<String, dynamic>>(archives, (value) => value.toMap()),
      'dataSize': ?pulumi.Input.mapOptionalInputValue<DataSizeRulesetResponse, Map<String, dynamic>>(dataSize, (value) => value.toMap()),
      'mimeFilters': ?pulumi.Input.mapOptionalInputValue<MimeFilterRulesetResponse, Map<String, dynamic>>(mimeFilters, (value) => value.toMap()),
      'textMatching': ?pulumi.Input.mapOptionalInputValue<TextMatchingRulesetResponse, Map<String, dynamic>>(textMatching, (value) => value.toMap()),
      'xmlFilters': ?pulumi.Input.mapOptionalInputValue<XmlFilterRulesetResponse, Map<String, dynamic>>(xmlFilters, (value) => value.toMap()),
    };
  }

  factory FlowProfileRulesetsResponse.fromMap(Map<String, dynamic> map) {
    return FlowProfileRulesetsResponse(
      antivirus: (() { final guardedValue = map['antivirus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AntivirusRulesetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      archives: (() { final guardedValue = map['archives']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArchiveRulesetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataSize: (() { final guardedValue = map['dataSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSizeRulesetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mimeFilters: (() { final guardedValue = map['mimeFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MimeFilterRulesetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      textMatching: (() { final guardedValue = map['textMatching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TextMatchingRulesetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      xmlFilters: (() { final guardedValue = map['xmlFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(XmlFilterRulesetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
