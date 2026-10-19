// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_version_hook_microvm_hook.dart';
import 'get_image_version_hook_microvm_image_hook.dart';

class GetImageVersionHook {
  /// Lifecycle hooks for MicroVM events. See `microvmHooks` below.
  final pulumi.Input<List<GetImageVersionHookMicrovmHook>> microvmHooks;
  /// Hooks for MicroVM image build events. See `microvmImageHooks` below.
  final pulumi.Input<List<GetImageVersionHookMicrovmImageHook>> microvmImageHooks;
  /// Port number on which the hooks listener runs.
  final pulumi.Input<int> port;

  /// Creates a new [GetImageVersionHook].
  /// [microvmHooks] Lifecycle hooks for MicroVM events. See `microvmHooks` below.
  /// [microvmImageHooks] Hooks for MicroVM image build events. See `microvmImageHooks` below.
  /// [port] Port number on which the hooks listener runs.
  const GetImageVersionHook({
    required this.microvmHooks,
    required this.microvmImageHooks,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'microvmHooks': pulumi.Input.mapInputValue<List<GetImageVersionHookMicrovmHook>, List<Map<String, dynamic>>>(microvmHooks, (value) => pulumi.Input.encodeList<GetImageVersionHookMicrovmHook, Map<String, dynamic>>(value, (value) => value.toMap())),
      'microvmImageHooks': pulumi.Input.mapInputValue<List<GetImageVersionHookMicrovmImageHook>, List<Map<String, dynamic>>>(microvmImageHooks, (value) => pulumi.Input.encodeList<GetImageVersionHookMicrovmImageHook, Map<String, dynamic>>(value, (value) => value.toMap())),
      'port': port,
    };
  }

  factory GetImageVersionHook.fromMap(Map<String, dynamic> map) {
    return GetImageVersionHook(
      microvmHooks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetImageVersionHookMicrovmHook>(map['microvmHooks']!, (value) => GetImageVersionHookMicrovmHook.fromMap((value as Map).cast<String, dynamic>()))),
      microvmImageHooks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetImageVersionHookMicrovmImageHook>(map['microvmImageHooks']!, (value) => GetImageVersionHookMicrovmImageHook.fromMap((value as Map).cast<String, dynamic>()))),
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
    );
  }
}
