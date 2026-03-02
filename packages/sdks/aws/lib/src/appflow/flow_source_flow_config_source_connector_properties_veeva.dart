// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowSourceFlowConfigSourceConnectorPropertiesVeeva {
  /// Document type specified in the Veeva document extract flow.
  final pulumi.Input<String>? documentType;
  /// Boolean value to include All Versions of files in Veeva document extract flow.
  final pulumi.Input<bool>? includeAllVersions;
  /// Boolean value to include file renditions in Veeva document extract flow.
  final pulumi.Input<bool>? includeRenditions;
  /// Boolean value to include source files in Veeva document extract flow.
  final pulumi.Input<bool>? includeSourceFiles;
  final pulumi.Input<String> object;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesVeeva].
  /// [documentType] Document type specified in the Veeva document extract flow.
  /// [includeAllVersions] Boolean value to include All Versions of files in Veeva document extract flow.
  /// [includeRenditions] Boolean value to include file renditions in Veeva document extract flow.
  /// [includeSourceFiles] Boolean value to include source files in Veeva document extract flow.
  /// [object] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesVeeva({
    this.documentType,
    this.includeAllVersions,
    this.includeRenditions,
    this.includeSourceFiles,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentType': ?documentType,
      'includeAllVersions': ?includeAllVersions,
      'includeRenditions': ?includeRenditions,
      'includeSourceFiles': ?includeSourceFiles,
      'object': object,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesVeeva.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesVeeva(
      documentType: map['documentType'] == null ? null : ((map['documentType'] as String).input()).input(),
      includeAllVersions: map['includeAllVersions'] == null ? null : ((map['includeAllVersions'] as bool).input()).input(),
      includeRenditions: map['includeRenditions'] == null ? null : ((map['includeRenditions'] as bool).input()).input(),
      includeSourceFiles: map['includeSourceFiles'] == null ? null : ((map['includeSourceFiles'] as bool).input()).input(),
      object: (map['object'] as String).input(),
    );
  }
}

