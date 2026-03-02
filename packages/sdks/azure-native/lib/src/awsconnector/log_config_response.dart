// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_log_level_enum_value_response.dart';

/// Definition of LogConfig
class LogConfigResponse {
  /// <p>The service role that AppSync assumes to publish to CloudWatch logs in your account.</p>
  final pulumi.Input<String>? cloudWatchLogsRoleArn;
  /// <p>Set to TRUE to exclude sections that contain information such as headers, context, and evaluated mapping templates, regardless of logging level.</p>
  final pulumi.Input<bool>? excludeVerboseContent;
  /// <p>The field logging level. Values can be NONE, ERROR, or ALL.</p> <ul> <li> <p> <b>NONE</b>: No field-level logs are captured.</p> </li> <li> <p> <b>ERROR</b>: Logs the following information only for the fields that are in error:</p> <ul> <li> <p>The error section in the server response.</p> </li> <li> <p>Field-level errors.</p> </li> <li> <p>The generated request/response functions that got resolved for error fields.</p> </li> </ul> </li> <li> <p> <b>ALL</b>: The following information is logged for all fields in the query:</p> <ul> <li> <p>Field-level tracing information.</p> </li> <li> <p>The generated request/response functions that got resolved for each field.</p> </li> </ul> </li> </ul>
  final pulumi.Input<FieldLogLevelEnumValueResponse>? fieldLogLevel;

  /// Creates a new [LogConfigResponse].
  /// [cloudWatchLogsRoleArn] <p>The service role that AppSync assumes to publish to CloudWatch logs in your account.</p>
  /// [excludeVerboseContent] <p>Set to TRUE to exclude sections that contain information such as headers, context, and evaluated mapping templates, regardless of logging level.</p>
  /// [fieldLogLevel] <p>The field logging level. Values can be NONE, ERROR, or ALL.</p> <ul> <li> <p> <b>NONE</b>: No field-level logs are captured.</p> </li> <li> <p> <b>ERROR</b>: Logs the following information only for the fields that are in error:</p> <ul> <li> <p>The error section in the server response.</p> </li> <li> <p>Field-level errors.</p> </li> <li> <p>The generated request/response functions that got resolved for error fields.</p> </li> </ul> </li> <li> <p> <b>ALL</b>: The following information is logged for all fields in the query:</p> <ul> <li> <p>Field-level tracing information.</p> </li> <li> <p>The generated request/response functions that got resolved for each field.</p> </li> </ul> </li> </ul>
  LogConfigResponse({
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
      cloudWatchLogsRoleArn: map['cloudWatchLogsRoleArn'] == null ? null : (map['cloudWatchLogsRoleArn']! as String).input(),
      excludeVerboseContent: map['excludeVerboseContent'] == null ? null : (map['excludeVerboseContent']! as bool).input(),
      fieldLogLevel: map['fieldLogLevel'] == null ? null : (FieldLogLevelEnumValueResponse.fromMap((map['fieldLogLevel']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

