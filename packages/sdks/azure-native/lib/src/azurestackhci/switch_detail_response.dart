// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'switch_extension_response.dart';

/// List of switch details for edge device.
class SwitchDetailResponse {
  /// This represents extensions installed on virtualSwitch.
  final pulumi.Input<List<SwitchExtensionResponse>> extensions;
  /// The name of the switch.
  final pulumi.Input<String> switchName;
  /// The type of the switch. e.g. external, internal.
  final pulumi.Input<String> switchType;

  /// Creates a new [SwitchDetailResponse].
  /// [extensions] This represents extensions installed on virtualSwitch.
  /// [switchName] The name of the switch.
  /// [switchType] The type of the switch. e.g. external, internal.
  const SwitchDetailResponse({
    required this.extensions,
    required this.switchName,
    required this.switchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensions': pulumi.Input.mapInputValue<List<SwitchExtensionResponse>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<SwitchExtensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'switchName': switchName,
      'switchType': switchType,
    };
  }

  factory SwitchDetailResponse.fromMap(Map<String, dynamic> map) {
    return SwitchDetailResponse(
      extensions: pulumi.Input.fromValue(pulumi.Input.decodeList<SwitchExtensionResponse>(map['extensions']!, (value) => SwitchExtensionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      switchName: pulumi.Input.fromValue(map['switchName'] as String),
      switchType: pulumi.Input.fromValue(map['switchType'] as String),
    );
  }
}
