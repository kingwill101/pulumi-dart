// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_log_level_enum_value_response.dart';

/// Definition of LogConfig
class LogConfigResponse {
  /// &lt;p&gt;The service role that AppSync assumes to publish to CloudWatch logs in your account.&lt;/p&gt;
  final pulumi.Input<String?>? cloudWatchLogsRoleArn;
  /// &lt;p&gt;Set to TRUE to exclude sections that contain information such as headers, context, and evaluated mapping templates, regardless of logging level.&lt;/p&gt;
  final pulumi.Input<bool?>? excludeVerboseContent;
  /// &lt;p&gt;The field logging level. Values can be NONE, ERROR, or ALL.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;NONE&lt;/b&gt;: No field-level logs are captured.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ERROR&lt;/b&gt;: Logs the following information only for the fields that are in error:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The error section in the server response.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Field-level errors.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The generated request/response functions that got resolved for error fields.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ALL&lt;/b&gt;: The following information is logged for all fields in the query:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Field-level tracing information.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The generated request/response functions that got resolved for each field.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt;
  final pulumi.Input<FieldLogLevelEnumValueResponse?>? fieldLogLevel;

  /// Creates a new [LogConfigResponse].
  /// [cloudWatchLogsRoleArn] &lt;p&gt;The service role that AppSync assumes to publish to CloudWatch logs in your account.&lt;/p&gt;
  /// [excludeVerboseContent] &lt;p&gt;Set to TRUE to exclude sections that contain information such as headers, context, and evaluated mapping templates, regardless of logging level.&lt;/p&gt;
  /// [fieldLogLevel] &lt;p&gt;The field logging level. Values can be NONE, ERROR, or ALL.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;NONE&lt;/b&gt;: No field-level logs are captured.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ERROR&lt;/b&gt;: Logs the following information only for the fields that are in error:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The error section in the server response.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Field-level errors.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The generated request/response functions that got resolved for error fields.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ALL&lt;/b&gt;: The following information is logged for all fields in the query:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Field-level tracing information.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The generated request/response functions that got resolved for each field.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt;
  const LogConfigResponse({
    this.cloudWatchLogsRoleArn,
    this.excludeVerboseContent,
    this.fieldLogLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchLogsRoleArn': ?cloudWatchLogsRoleArn,
      'excludeVerboseContent': ?excludeVerboseContent,
      'fieldLogLevel': ?pulumi.Input.mapOptionalInputValue<FieldLogLevelEnumValueResponse, Map<String, dynamic>>(fieldLogLevel, (value) => value.toMap()),
    };
  }

  factory LogConfigResponse.fromMap(Map<String, dynamic> map) {
    return LogConfigResponse(
      cloudWatchLogsRoleArn: (() { final guardedValue = map['cloudWatchLogsRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeVerboseContent: (() { final guardedValue = map['excludeVerboseContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fieldLogLevel: (() { final guardedValue = map['fieldLogLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FieldLogLevelEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
