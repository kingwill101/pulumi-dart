// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_customization_script.dart';

/// The properties of the Node Customization resource.
class NodeCustomizationProperties {
  /// The list of container images to cache on nodes. See https://kubernetes.io/docs/concepts/containers/images/#image-names
  final pulumi.Input<List<String>>? containerImages;
  /// The scripts to customize the node before or after image capture.
  final pulumi.Input<List<NodeCustomizationScript>>? customizationScripts;

  /// Creates a new [NodeCustomizationProperties].
  /// [containerImages] The list of container images to cache on nodes. See https://kubernetes.io/docs/concepts/containers/images/#image-names
  /// [customizationScripts] The scripts to customize the node before or after image capture.
  NodeCustomizationProperties({
    this.containerImages,
    this.customizationScripts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImages': ?containerImages,
      'customizationScripts': ?pulumi.Input.mapOptionalInputValue<List<NodeCustomizationScript>, List<Map<String, dynamic>>>(customizationScripts, (value) => pulumi.Input.encodeList<NodeCustomizationScript, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NodeCustomizationProperties.fromMap(Map<String, dynamic> map) {
    return NodeCustomizationProperties(
      containerImages: map['containerImages'] == null ? null : ((map['containerImages'] as List).cast<String>()).input(),
      customizationScripts: map['customizationScripts'] == null ? null : (pulumi.Input.decodeList<NodeCustomizationScript>(map['customizationScripts'], (value) => NodeCustomizationScript.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

