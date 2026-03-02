// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'win_rmlistener_response.dart';

/// Describes Windows Remote Management configuration of the VM
class WinRMConfigurationResponse {
  /// The list of Windows Remote Management listeners
  final pulumi.Input<List<WinRMListenerResponse>>? listeners;

  /// Creates a new [WinRMConfigurationResponse].
  /// [listeners] The list of Windows Remote Management listeners
  WinRMConfigurationResponse({
    this.listeners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listeners': ?pulumi.Input.mapOptionalInputValue<List<WinRMListenerResponse>, List<Map<String, dynamic>>>(listeners, (value) => pulumi.Input.encodeList<WinRMListenerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WinRMConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return WinRMConfigurationResponse(
      listeners: map['listeners'] == null ? null : (pulumi.Input.decodeList<WinRMListenerResponse>(map['listeners'], (value) => WinRMListenerResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

