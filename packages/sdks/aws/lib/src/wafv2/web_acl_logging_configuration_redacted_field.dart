// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_logging_configuration_redacted_field_single_header.dart';

class WebAclLoggingConfigurationRedactedField {
  /// HTTP method to be redacted. It must be specified as an empty configuration block `{}`. The method indicates the type of operation that the request is asking the origin to perform.
  final pulumi.Input<Map<String, dynamic>>? method;
  /// Whether to redact the query string. It must be specified as an empty configuration block `{}`. The query string is the part of a URL that appears after a `?` character, if any.
  final pulumi.Input<Map<String, dynamic>>? queryString;
  /// "single_header" refers to the redaction of a single header. For more information, please see the details below under Single Header.
  final pulumi.Input<WebAclLoggingConfigurationRedactedFieldSingleHeader>? singleHeader;
  /// Configuration block that redacts the request URI path. It should be specified as an empty configuration block `{}`. The URI path is the part of a web request that identifies a resource, such as `/images/daily-ad.jpg`.
  final pulumi.Input<Map<String, dynamic>>? uriPath;

  /// Creates a new [WebAclLoggingConfigurationRedactedField].
  /// [method] HTTP method to be redacted. It must be specified as an empty configuration block `{}`. The method indicates the type of operation that the request is asking the origin to perform.
  /// [queryString] Whether to redact the query string. It must be specified as an empty configuration block `{}`. The query string is the part of a URL that appears after a `?` character, if any.
  /// [singleHeader] "single_header" refers to the redaction of a single header. For more information, please see the details below under Single Header.
  /// [uriPath] Configuration block that redacts the request URI path. It should be specified as an empty configuration block `{}`. The URI path is the part of a web request that identifies a resource, such as `/images/daily-ad.jpg`.
  WebAclLoggingConfigurationRedactedField({
    this.method,
    this.queryString,
    this.singleHeader,
    this.uriPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'queryString': ?queryString,
      'singleHeader': ?pulumi.Input.mapOptionalInputValue<WebAclLoggingConfigurationRedactedFieldSingleHeader, Map<String, dynamic>>(singleHeader, (value) => value.toMap()),
      'uriPath': ?uriPath,
    };
  }

  factory WebAclLoggingConfigurationRedactedField.fromMap(Map<String, dynamic> map) {
    return WebAclLoggingConfigurationRedactedField(
      method: map['method'] == null ? null : (((map['method'] as Map).cast<String, dynamic>()).input()).input(),
      queryString: map['queryString'] == null ? null : (((map['queryString'] as Map).cast<String, dynamic>()).input()).input(),
      singleHeader: map['singleHeader'] == null ? null : ((WebAclLoggingConfigurationRedactedFieldSingleHeader.fromMap((map['singleHeader']! as Map).cast<String, dynamic>())).input()).input(),
      uriPath: map['uriPath'] == null ? null : (((map['uriPath'] as Map).cast<String, dynamic>()).input()).input(),
    );
  }
}

