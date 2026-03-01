// ignore_for_file: unused_element, unnecessary_cast

import 'tar_gzip_read_settings_response.dart';

/// Xml read settings.
class XmlReadSettingsResponse {
  /// Compression settings.
  final TarGZipReadSettingsResponse? compressionProperties;
  /// Indicates whether type detection is enabled when reading the xml files. Type: boolean (or Expression with resultType boolean).
  final dynamic detectDataType;
  /// Namespace uri to prefix mappings to override the prefixes in column names when namespace is enabled, if no prefix is defined for a namespace uri, the prefix of xml element/attribute name in the xml data file will be used. Example: "{"http://www.example.com/xml":"prefix"}" Type: object (or Expression with resultType object).
  final dynamic namespacePrefixes;
  /// Indicates whether namespace is enabled when reading the xml files. Type: boolean (or Expression with resultType boolean).
  final dynamic namespaces;
  /// The read setting type.
  /// Expected value is 'XmlReadSettings'.
  final String type;
  /// Indicates what validation method is used when reading the xml files. Allowed values: 'none', 'xsd', or 'dtd'. Type: string (or Expression with resultType string).
  final dynamic validationMode;

  /// Creates a new [XmlReadSettingsResponse].
  /// [compressionProperties] Compression settings.
  /// [detectDataType] Indicates whether type detection is enabled when reading the xml files. Type: boolean (or Expression with resultType boolean).
  /// [namespacePrefixes] Namespace uri to prefix mappings to override the prefixes in column names when namespace is enabled, if no prefix is defined for a namespace uri, the prefix of xml element/attribute name in the xml data file will be used. Example: "{"http://www.example.com/xml":"prefix"}" Type: object (or Expression with resultType object).
  /// [namespaces] Indicates whether namespace is enabled when reading the xml files. Type: boolean (or Expression with resultType boolean).
  /// [type] The read setting type.
  /// [validationMode] Indicates what validation method is used when reading the xml files. Allowed values: 'none', 'xsd', or 'dtd'. Type: string (or Expression with resultType string).
  XmlReadSettingsResponse({
    this.compressionProperties,
    this.detectDataType,
    this.namespacePrefixes,
    this.namespaces,
    required this.type,
    this.validationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionProperties': ?compressionProperties == null ? null : compressionProperties!.toMap(),
      'detectDataType': ?detectDataType,
      'namespacePrefixes': ?namespacePrefixes,
      'namespaces': ?namespaces,
      'type': type,
      'validationMode': ?validationMode,
    };
  }

  factory XmlReadSettingsResponse.fromMap(Map<String, dynamic> map) {
    return XmlReadSettingsResponse(
      compressionProperties: map['compressionProperties'] == null ? null : TarGZipReadSettingsResponse.fromMap((map['compressionProperties'] as Map).cast<String, dynamic>()),
      detectDataType: map['detectDataType'] == null ? null : map['detectDataType'],
      namespacePrefixes: map['namespacePrefixes'] == null ? null : map['namespacePrefixes'],
      namespaces: map['namespaces'] == null ? null : map['namespaces'],
      type: map['type'] as String,
      validationMode: map['validationMode'] == null ? null : map['validationMode'],
    );
  }
}

