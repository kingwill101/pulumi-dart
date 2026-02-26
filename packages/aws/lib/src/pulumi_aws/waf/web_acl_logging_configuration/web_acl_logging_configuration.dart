// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_logging_configuration_redacted_fields/web_acl_logging_configuration_redacted_fields.dart';

class WebAclLoggingConfiguration {
  /// Amazon Resource Name (ARN) of Kinesis Firehose Delivery Stream
  final String logDestination;

  /// Configuration block containing parts of the request that you want redacted from the logs. Detailed below.
  final WebAclLoggingConfigurationRedactedFields? redactedFields;

  WebAclLoggingConfiguration({
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

  factory WebAclLoggingConfiguration.fromMap(Map<String, dynamic> map) {
    return WebAclLoggingConfiguration(
      logDestination: map['logDestination'] as String,
      redactedFields: map['redactedFields'] == null
          ? null
          : WebAclLoggingConfigurationRedactedFields.fromMap(
              (map['redactedFields'] as Map).cast<String, dynamic>()),
    );
  }
}
