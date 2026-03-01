// ignore_for_file: unused_element, unnecessary_cast

import 'api_import_wsdl_selector.dart';

class ApiImport {
  /// The format of the content from which the API Definition should be imported. Possible values are: `openapi`, `openapi+json`, `openapi+json-link`, `openapi-link`, `swagger-json`, `swagger-link-json`, `wadl-link-json`, `wadl-xml`, `wsdl` and `wsdl-link`.
  final String contentFormat;
  /// The Content from which the API Definition should be imported. When a `content_format` of `*-link-*` is specified this must be a URL, otherwise this must be defined inline. The URL must be accessible and return a valid document; otherwise, deployment may fail.
  final String contentValue;
  /// A `wsdl_selector` block as defined below, which allows you to limit the import of a WSDL to only a subset of the document. This can only be specified when `content_format` is `wsdl` or `wsdl-link`.
  final ApiImportWsdlSelector? wsdlSelector;

  /// Creates a new [ApiImport].
  /// [contentFormat] The format of the content from which the API Definition should be imported. Possible values are: `openapi`, `openapi+json`, `openapi+json-link`, `openapi-link`, `swagger-json`, `swagger-link-json`, `wadl-link-json`, `wadl-xml`, `wsdl` and `wsdl-link`.
  /// [contentValue] The Content from which the API Definition should be imported. When a `content_format` of `*-link-*` is specified this must be a URL, otherwise this must be defined inline. The URL must be accessible and return a valid document; otherwise, deployment may fail.
  /// [wsdlSelector] A `wsdl_selector` block as defined below, which allows you to limit the import of a WSDL to only a subset of the document. This can only be specified when `content_format` is `wsdl` or `wsdl-link`.
  ApiImport({
    required this.contentFormat,
    required this.contentValue,
    this.wsdlSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentFormat': contentFormat,
      'contentValue': contentValue,
      'wsdlSelector': ?wsdlSelector == null ? null : wsdlSelector!.toMap(),
    };
  }

  factory ApiImport.fromMap(Map<String, dynamic> map) {
    return ApiImport(
      contentFormat: map['contentFormat'] as String,
      contentValue: map['contentValue'] as String,
      wsdlSelector: map['wsdlSelector'] == null ? null : ApiImportWsdlSelector.fromMap((map['wsdlSelector'] as Map).cast<String, dynamic>()),
    );
  }
}

