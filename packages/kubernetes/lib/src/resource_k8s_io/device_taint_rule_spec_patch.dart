// ignore_for_file: unused_element, unnecessary_cast

import 'device_taint_patch_resource_k8s_io_v1alpha3.dart';
import 'device_taint_selector_patch.dart';

/// DeviceTaintRuleSpec specifies the selector and one taint.
class DeviceTaintRuleSpecPatch {
  /// DeviceSelector defines which device(s) the taint is applied to. All selector criteria must be satisfied for a device to match. The empty selector matches all devices. Without a selector, no devices are matches.
  final DeviceTaintSelectorPatch? deviceSelector;
  /// The taint that gets applied to matching devices.
  final DeviceTaintPatchResourceK8sIoV1alpha3? taint;

  /// Creates a new [DeviceTaintRuleSpecPatch].
  /// [deviceSelector] DeviceSelector defines which device(s) the taint is applied to. All selector criteria must be satisfied for a device to match. The empty selector matches all devices. Without a selector, no devices are matches.
  /// [taint] The taint that gets applied to matching devices.
  DeviceTaintRuleSpecPatch({
    this.deviceSelector,
    this.taint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceSelector': ?deviceSelector == null ? null : deviceSelector!.toMap(),
      'taint': ?taint == null ? null : taint!.toMap(),
    };
  }

  factory DeviceTaintRuleSpecPatch.fromMap(Map<String, dynamic> map) {
    return DeviceTaintRuleSpecPatch(
      deviceSelector: map['deviceSelector'] == null ? null : DeviceTaintSelectorPatch.fromMap((map['deviceSelector'] as Map).cast<String, dynamic>()),
      taint: map['taint'] == null ? null : DeviceTaintPatchResourceK8sIoV1alpha3.fromMap((map['taint'] as Map).cast<String, dynamic>()),
    );
  }
}

