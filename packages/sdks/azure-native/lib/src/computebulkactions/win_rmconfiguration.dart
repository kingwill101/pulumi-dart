// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'win_rmlistener.dart';

/// Describes Windows Remote Management configuration of the VM
class WinRMConfiguration {
  /// The list of Windows Remote Management listeners
  final pulumi.Input<List<WinRMListener>>? listeners;

  /// Creates a new [WinRMConfiguration].
  /// [listeners] The list of Windows Remote Management listeners
  const WinRMConfiguration({
    this.listeners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listeners': ?pulumi.Input.mapOptionalInputValue<List<WinRMListener>, List<Map<String, dynamic>>>(listeners, (value) => pulumi.Input.encodeList<WinRMListener, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WinRMConfiguration.fromMap(Map<String, dynamic> map) {
    return WinRMConfiguration(
      listeners: (() { final guardedValue = map['listeners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WinRMListener>(guardedValue, (value) => WinRMListener.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
