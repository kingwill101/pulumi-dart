// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The data stored in JSON format.
class JsonFormat {
  /// Deserializer. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? deserializer;
  /// The code page name of the preferred encoding. If not provided, the default value is 'utf-8', unless the byte order mark (BOM) denotes another Unicode encoding. The full list of supported values can be found in the 'Name' column of the table of encodings in the following reference: https://go.microsoft.com/fwlink/?linkid=861078. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? encodingName;
  /// File pattern of JSON. To be more specific, the way of separating a collection of JSON objects. The default value is 'setOfObjects'. It is case-sensitive.
  final pulumi.Input<dynamic>? filePattern;
  /// The JSONPath of the JSON array element to be flattened. Example: "$.ArrayPath". Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? jsonNodeReference;
  /// The JSONPath definition for each column mapping with a customized column name to extract data from JSON file. For fields under root object, start with "$"; for fields inside the array chosen by jsonNodeReference property, start from the array element. Example: {"Column1": "$.Column1Path", "Column2": "Column2PathInArray"}. Type: object (or Expression with resultType object).
  final pulumi.Input<dynamic>? jsonPathDefinition;
  /// The character used to separate nesting levels. Default value is '.' (dot). Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? nestingSeparator;
  /// Serializer. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? serializer;
  /// Type of dataset storage format.
  /// Expected value is 'JsonFormat'.
  final pulumi.Input<String> type;

  /// Creates a new [JsonFormat].
  /// [deserializer] Deserializer. Type: string (or Expression with resultType string).
  /// [encodingName] The code page name of the preferred encoding. If not provided, the default value is 'utf-8', unless the byte order mark (BOM) denotes another Unicode encoding. The full list of supported values can be found in the 'Name' column of the table of encodings in the following reference: https://go.microsoft.com/fwlink/?linkid=861078. Type: string (or Expression with resultType string).
  /// [filePattern] File pattern of JSON. To be more specific, the way of separating a collection of JSON objects. The default value is 'setOfObjects'. It is case-sensitive.
  /// [jsonNodeReference] The JSONPath of the JSON array element to be flattened. Example: "$.ArrayPath". Type: string (or Expression with resultType string).
  /// [jsonPathDefinition] The JSONPath definition for each column mapping with a customized column name to extract data from JSON file. For fields under root object, start with "$"; for fields inside the array chosen by jsonNodeReference property, start from the array element. Example: {"Column1": "$.Column1Path", "Column2": "Column2PathInArray"}. Type: object (or Expression with resultType object).
  /// [nestingSeparator] The character used to separate nesting levels. Default value is '.' (dot). Type: string (or Expression with resultType string).
  /// [serializer] Serializer. Type: string (or Expression with resultType string).
  /// [type] Type of dataset storage format.
  JsonFormat({
    this.deserializer,
    this.encodingName,
    this.filePattern,
    this.jsonNodeReference,
    this.jsonPathDefinition,
    this.nestingSeparator,
    this.serializer,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deserializer': ?deserializer,
      'encodingName': ?encodingName,
      'filePattern': ?filePattern,
      'jsonNodeReference': ?jsonNodeReference,
      'jsonPathDefinition': ?jsonPathDefinition,
      'nestingSeparator': ?nestingSeparator,
      'serializer': ?serializer,
      'type': type,
    };
  }

  factory JsonFormat.fromMap(Map<String, dynamic> map) {
    return JsonFormat(
      deserializer: map['deserializer'] == null ? null : (map['deserializer']!).input(),
      encodingName: map['encodingName'] == null ? null : (map['encodingName']!).input(),
      filePattern: map['filePattern'] == null ? null : (map['filePattern']!).input(),
      jsonNodeReference: map['jsonNodeReference'] == null ? null : (map['jsonNodeReference']!).input(),
      jsonPathDefinition: map['jsonPathDefinition'] == null ? null : (map['jsonPathDefinition']!).input(),
      nestingSeparator: map['nestingSeparator'] == null ? null : (map['nestingSeparator']!).input(),
      serializer: map['serializer'] == null ? null : (map['serializer']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

