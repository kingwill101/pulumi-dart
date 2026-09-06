// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Xml read settings.
class XmlReadSettings {
  /// Compression settings.
  final pulumi.Input<dynamic>? compressionProperties;
  /// Indicates whether type detection is enabled when reading the xml files. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? detectDataType;
  /// Namespace uri to prefix mappings to override the prefixes in column names when namespace is enabled, if no prefix is defined for a namespace uri, the prefix of xml element/attribute name in the xml data file will be used. Example: "{"http://www.example.com/xml":"prefix"}" Type: object (or Expression with resultType object).
  final pulumi.Input<dynamic>? namespacePrefixes;
  /// Indicates whether namespace is enabled when reading the xml files. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? namespaces;
  /// The read setting type.
  /// Expected value is 'XmlReadSettings'.
  final pulumi.Input<String> type;
  /// Indicates what validation method is used when reading the xml files. Allowed values: 'none', 'xsd', or 'dtd'. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? validationMode;

  /// Creates a new [XmlReadSettings].
  /// [compressionProperties] Compression settings.
  /// [detectDataType] Indicates whether type detection is enabled when reading the xml files. Type: boolean (or Expression with resultType boolean).
  /// [namespacePrefixes] Namespace uri to prefix mappings to override the prefixes in column names when namespace is enabled, if no prefix is defined for a namespace uri, the prefix of xml element/attribute name in the xml data file will be used. Example: "{"http://www.example.com/xml":"prefix"}" Type: object (or Expression with resultType object).
  /// [namespaces] Indicates whether namespace is enabled when reading the xml files. Type: boolean (or Expression with resultType boolean).
  /// [type] The read setting type.
  /// [validationMode] Indicates what validation method is used when reading the xml files. Allowed values: 'none', 'xsd', or 'dtd'. Type: string (or Expression with resultType string).
  const XmlReadSettings({
    this.compressionProperties,
    this.detectDataType,
    this.namespacePrefixes,
    this.namespaces,
    required this.type,
    this.validationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionProperties': ?compressionProperties,
      'detectDataType': ?detectDataType,
      'namespacePrefixes': ?namespacePrefixes,
      'namespaces': ?namespaces,
      'type': type,
      'validationMode': ?validationMode,
    };
  }

  factory XmlReadSettings.fromMap(Map<String, dynamic> map) {
    return XmlReadSettings(
      compressionProperties: (() { final guardedValue = map['compressionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      detectDataType: (() { final guardedValue = map['detectDataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      namespacePrefixes: (() { final guardedValue = map['namespacePrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      namespaces: (() { final guardedValue = map['namespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      validationMode: (() { final guardedValue = map['validationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
