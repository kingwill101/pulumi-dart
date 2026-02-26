// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_logging_configuration_redacted_fields/web_acl_logging_configuration_redacted_fields2.dart';

class WebAclLoggingConfiguration2 {
  /// Amazon Resource Name (ARN) of Kinesis Firehose Delivery Stream
  final String logDestination;

  /// Configuration block containing parts of the request that you want redacted from the logs. Detailed below.
  final WebAclLoggingConfigurationRedactedFields2? redactedFields;

  WebAclLoggingConfiguration2({
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

  factory WebAclLoggingConfiguration2.fromMap(Map<String, dynamic> map) {
    return WebAclLoggingConfiguration2(
      logDestination: map['logDestination'] as String,
      redactedFields: map['redactedFields'] == null
          ? null
          : WebAclLoggingConfigurationRedactedFields2.fromMap(
              (map['redactedFields'] as Map).cast<String, dynamic>()),
    );
  }
}
