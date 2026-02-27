// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_logging_configuration_redacted_fields/web_acl_logging_configuration_redacted_fields_wafregional.dart';

class WebAclLoggingConfigurationWafregional {
  /// Amazon Resource Name (ARN) of Kinesis Firehose Delivery Stream
  final String logDestination;

  /// Configuration block containing parts of the request that you want redacted from the logs. Detailed below.
  final WebAclLoggingConfigurationRedactedFieldsWafregional? redactedFields;

  WebAclLoggingConfigurationWafregional({
    required this.logDestination,
    this.redactedFields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logDestination'] = logDestination;
    final redactedFieldsValue = redactedFields;
    if (redactedFieldsValue != null) {
      map['redactedFields'] = redactedFieldsValue.toMap();
    }
    return map;
  }

  factory WebAclLoggingConfigurationWafregional.fromMap(
      Map<String, dynamic> map) {
    return WebAclLoggingConfigurationWafregional(
      logDestination: map['logDestination'] as String,
      redactedFields: map['redactedFields'] == null
          ? null
          : WebAclLoggingConfigurationRedactedFieldsWafregional.fromMap(
              (map['redactedFields'] as Map).cast<String, dynamic>()),
    );
  }
}
