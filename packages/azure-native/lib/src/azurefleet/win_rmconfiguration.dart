// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'win_rmlistener.dart';

/// Describes Windows Remote Management configuration of the VM
class WinRMConfiguration {
  /// The list of Windows Remote Management listeners
  final List<WinRMListener>? listeners;

  /// Creates a new [WinRMConfiguration].
  /// [listeners] The list of Windows Remote Management listeners
  WinRMConfiguration({
    this.listeners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listeners': ?listeners == null ? null : pulumi.Input.encodeList<WinRMListener, Map<String, dynamic>>(listeners!, (value) => value.toMap()),
    };
  }

  factory WinRMConfiguration.fromMap(Map<String, dynamic> map) {
    return WinRMConfiguration(
      listeners: map['listeners'] == null ? null : pulumi.Input.decodeList<WinRMListener>(map['listeners'], (value) => WinRMListener.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

