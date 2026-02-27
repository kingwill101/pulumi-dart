// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_logging_configuration_redacted_fields_field_to_match/web_acl_logging_configuration_redacted_fields_field_to_match_wafregional.dart';

class WebAclLoggingConfigurationRedactedFieldsWafregional {
  /// Set of configuration blocks for fields to redact. Detailed below.
  final List<WebAclLoggingConfigurationRedactedFieldsFieldToMatchWafregional>
      fieldToMatches;

  WebAclLoggingConfigurationRedactedFieldsWafregional({
    required this.fieldToMatches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldToMatches'] = pulumi.Input.encodeList<
        WebAclLoggingConfigurationRedactedFieldsFieldToMatchWafregional,
        Map<String, dynamic>>(fieldToMatches, (value) => value.toMap());
    return map;
  }

  factory WebAclLoggingConfigurationRedactedFieldsWafregional.fromMap(
      Map<String, dynamic> map) {
    return WebAclLoggingConfigurationRedactedFieldsWafregional(
      fieldToMatches: pulumi.Input.decodeList<
              WebAclLoggingConfigurationRedactedFieldsFieldToMatchWafregional>(
          map['fieldToMatches'],
          (value) =>
              WebAclLoggingConfigurationRedactedFieldsFieldToMatchWafregional
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
