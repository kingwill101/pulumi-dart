// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_logging_configuration_redacted_fields_field_to_match/web_acl_logging_configuration_redacted_fields_field_to_match2.dart';

class WebAclLoggingConfigurationRedactedFields2 {
  /// Set of configuration blocks for fields to redact. Detailed below.
  final List<WebAclLoggingConfigurationRedactedFieldsFieldToMatch2>
      fieldToMatches;

  WebAclLoggingConfigurationRedactedFields2({
    required this.fieldToMatches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldToMatches'] = Input.encodeList<
        WebAclLoggingConfigurationRedactedFieldsFieldToMatch2,
        Map<String, dynamic>>(fieldToMatches, (value) => value.toMap());
    return map;
  }

  factory WebAclLoggingConfigurationRedactedFields2.fromMap(
      Map<String, dynamic> map) {
    return WebAclLoggingConfigurationRedactedFields2(
      fieldToMatches: Input.decodeList<
              WebAclLoggingConfigurationRedactedFieldsFieldToMatch2>(
          map['fieldToMatches'],
          (value) =>
              WebAclLoggingConfigurationRedactedFieldsFieldToMatch2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
