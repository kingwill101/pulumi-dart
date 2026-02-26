// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_logging_configuration_redacted_field_single_header/web_acl_logging_configuration_redacted_field_single_header.dart';

class WebAclLoggingConfigurationRedactedField {
  /// HTTP method to be redacted. It must be specified as an empty configuration block `{}`. The method indicates the type of operation that the request is asking the origin to perform.
  final Map<String, dynamic>? method;

  /// Whether to redact the query string. It must be specified as an empty configuration block `{}`. The query string is the part of a URL that appears after a `?` character, if any.
  final Map<String, dynamic>? queryString;

  /// <span pulumi-lang-nodejs=""singleHeader"" pulumi-lang-dotnet=""SingleHeader"" pulumi-lang-go=""singleHeader"" pulumi-lang-python=""single_header"" pulumi-lang-yaml=""singleHeader"" pulumi-lang-java=""singleHeader"">"single_header"</span> refers to the redaction of a single header. For more information, please see the details below under Single Header.
  final WebAclLoggingConfigurationRedactedFieldSingleHeader? singleHeader;

  /// Configuration block that redacts the request URI path. It should be specified as an empty configuration block `{}`. The URI path is the part of a web request that identifies a resource, such as `/images/daily-ad.jpg`.
  final Map<String, dynamic>? uriPath;

  WebAclLoggingConfigurationRedactedField({
    this.method,
    this.queryString,
    this.singleHeader,
    this.uriPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final methodValue = method;
    if (methodValue != null) {
      map['method'] = methodValue;
    }
    final queryStringValue = queryString;
    if (queryStringValue != null) {
      map['queryString'] = queryStringValue;
    }
    final singleHeaderValue = singleHeader;
    if (singleHeaderValue != null) {
      map['singleHeader'] = singleHeaderValue.toMap();
    }
    final uriPathValue = uriPath;
    if (uriPathValue != null) {
      map['uriPath'] = uriPathValue;
    }
    return map;
  }

  factory WebAclLoggingConfigurationRedactedField.fromMap(
      Map<String, dynamic> map) {
    return WebAclLoggingConfigurationRedactedField(
      method: map['method'] == null
          ? null
          : (map['method'] as Map).cast<String, dynamic>(),
      queryString: map['queryString'] == null
          ? null
          : (map['queryString'] as Map).cast<String, dynamic>(),
      singleHeader: map['singleHeader'] == null
          ? null
          : WebAclLoggingConfigurationRedactedFieldSingleHeader.fromMap(
              (map['singleHeader'] as Map).cast<String, dynamic>()),
      uriPath: map['uriPath'] == null
          ? null
          : (map['uriPath'] as Map).cast<String, dynamic>(),
    );
  }
}
