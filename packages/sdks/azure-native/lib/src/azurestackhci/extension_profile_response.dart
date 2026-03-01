// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_response.dart';

/// Extensions details for edge device.
class ExtensionProfileResponse {
  /// List of Arc extensions installed on edge device.
  final List<ExtensionResponse> extensions;

  /// Creates a new [ExtensionProfileResponse].
  /// [extensions] List of Arc extensions installed on edge device.
  ExtensionProfileResponse({
    required this.extensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensions': pulumi.Input.encodeList<ExtensionResponse, Map<String, dynamic>>(extensions, (value) => value.toMap()),
    };
  }

  factory ExtensionProfileResponse.fromMap(Map<String, dynamic> map) {
    return ExtensionProfileResponse(
      extensions: pulumi.Input.decodeList<ExtensionResponse>(map['extensions'], (value) => ExtensionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

