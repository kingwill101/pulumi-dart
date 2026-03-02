// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_edge_device_arc_extension_response.dart';

/// Extensions details for edge device.
class ExtensionProfileResponseV1 {
  /// List of Arc extensions installed on edge device.
  final pulumi.Input<List<HciEdgeDeviceArcExtensionResponse>> extensions;

  /// Creates a new [ExtensionProfileResponseV1].
  /// [extensions] List of Arc extensions installed on edge device.
  ExtensionProfileResponseV1({
    required this.extensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensions': pulumi.Input.mapInputValue<List<HciEdgeDeviceArcExtensionResponse>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<HciEdgeDeviceArcExtensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExtensionProfileResponseV1.fromMap(Map<String, dynamic> map) {
    return ExtensionProfileResponseV1(
      extensions: (pulumi.Input.decodeList<HciEdgeDeviceArcExtensionResponse>(map['extensions'], (value) => HciEdgeDeviceArcExtensionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

