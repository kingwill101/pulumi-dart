// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowSourceFlowConfigSourceConnectorPropertiesVeeva {
  /// Document type specified in the Veeva document extract flow.
  final pulumi.Input<String>? documentType;
  /// Whether to include all versions of files in the Veeva document extract flow.
  final pulumi.Input<bool>? includeAllVersions;
  /// Whether to include file renditions in the Veeva document extract flow.
  final pulumi.Input<bool>? includeRenditions;
  /// Whether to include source files in the Veeva document extract flow.
  final pulumi.Input<bool>? includeSourceFiles;
  final pulumi.Input<String> object_;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesVeeva].
  /// [documentType] Document type specified in the Veeva document extract flow.
  /// [includeAllVersions] Whether to include all versions of files in the Veeva document extract flow.
  /// [includeRenditions] Whether to include file renditions in the Veeva document extract flow.
  /// [includeSourceFiles] Whether to include source files in the Veeva document extract flow.
  /// [object_] Required.
  const FlowSourceFlowConfigSourceConnectorPropertiesVeeva({
    this.documentType,
    this.includeAllVersions,
    this.includeRenditions,
    this.includeSourceFiles,
    required this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentType': ?documentType,
      'includeAllVersions': ?includeAllVersions,
      'includeRenditions': ?includeRenditions,
      'includeSourceFiles': ?includeSourceFiles,
      'object': object_,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesVeeva.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesVeeva(
      documentType: (() { final guardedValue = map['documentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeAllVersions: (() { final guardedValue = map['includeAllVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeRenditions: (() { final guardedValue = map['includeRenditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeSourceFiles: (() { final guardedValue = map['includeSourceFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}
