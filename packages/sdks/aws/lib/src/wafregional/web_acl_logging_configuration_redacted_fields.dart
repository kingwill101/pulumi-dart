// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_logging_configuration_redacted_fields_field_to_match.dart';

class WebAclLoggingConfigurationRedactedFields {
  /// Set of configuration blocks for fields to redact. Detailed below.
  final pulumi.Input<List<WebAclLoggingConfigurationRedactedFieldsFieldToMatch>> fieldToMatches;

  /// Creates a new [WebAclLoggingConfigurationRedactedFields].
  /// [fieldToMatches] Set of configuration blocks for fields to redact. Detailed below.
  WebAclLoggingConfigurationRedactedFields({
    required this.fieldToMatches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldToMatches': pulumi.Input.mapInputValue<List<WebAclLoggingConfigurationRedactedFieldsFieldToMatch>, List<Map<String, dynamic>>>(fieldToMatches, (value) => pulumi.Input.encodeList<WebAclLoggingConfigurationRedactedFieldsFieldToMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclLoggingConfigurationRedactedFields.fromMap(Map<String, dynamic> map) {
    return WebAclLoggingConfigurationRedactedFields(
      fieldToMatches: (pulumi.Input.decodeList<WebAclLoggingConfigurationRedactedFieldsFieldToMatch>(map['fieldToMatches']!, (value) => WebAclLoggingConfigurationRedactedFieldsFieldToMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

