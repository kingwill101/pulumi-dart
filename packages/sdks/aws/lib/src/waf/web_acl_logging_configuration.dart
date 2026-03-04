// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_logging_configuration_redacted_fields.dart';

class WebAclLoggingConfiguration {
  /// Amazon Resource Name (ARN) of Kinesis Firehose Delivery Stream
  final pulumi.Input<String> logDestination;

  /// Configuration block containing parts of the request that you want redacted from the logs. Detailed below.
  final pulumi.Input<WebAclLoggingConfigurationRedactedFields>? redactedFields;

  /// Creates a new [WebAclLoggingConfiguration].
  /// [logDestination] Amazon Resource Name (ARN) of Kinesis Firehose Delivery Stream
  /// [redactedFields] Configuration block containing parts of the request that you want redacted from the logs. Detailed below.
  WebAclLoggingConfiguration({
    required this.logDestination,
    this.redactedFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logDestination': logDestination,
      'redactedFields':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclLoggingConfigurationRedactedFields,
            Map<String, dynamic>
          >(redactedFields, (value) => value.toMap()),
    };
  }

  factory WebAclLoggingConfiguration.fromMap(Map<String, dynamic> map) {
    return WebAclLoggingConfiguration(
      logDestination: pulumi.Input.fromValue(map['logDestination'] as String),
      redactedFields: (() {
        final guardedValue = map['redactedFields'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclLoggingConfigurationRedactedFields.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
