// ignore_for_file: unused_element, unnecessary_cast

import 'device_taint_resource_k8s_io_v1alpha3.dart';
import 'device_taint_selector.dart';

/// DeviceTaintRuleSpec specifies the selector and one taint.
class DeviceTaintRuleSpec {
  /// DeviceSelector defines which device(s) the taint is applied to. All selector criteria must be satisfied for a device to match. The empty selector matches all devices. Without a selector, no devices are matches.
  final DeviceTaintSelector? deviceSelector;
  /// The taint that gets applied to matching devices.
  final DeviceTaintResourceK8sIoV1alpha3 taint;

  /// Creates a new [DeviceTaintRuleSpec].
  /// [deviceSelector] DeviceSelector defines which device(s) the taint is applied to. All selector criteria must be satisfied for a device to match. The empty selector matches all devices. Without a selector, no devices are matches.
  /// [taint] The taint that gets applied to matching devices.
  DeviceTaintRuleSpec({
    this.deviceSelector,
    required this.taint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceSelector': ?deviceSelector == null ? null : deviceSelector!.toMap(),
      'taint': taint.toMap(),
    };
  }

  factory DeviceTaintRuleSpec.fromMap(Map<String, dynamic> map) {
    return DeviceTaintRuleSpec(
      deviceSelector: map['deviceSelector'] == null ? null : DeviceTaintSelector.fromMap((map['deviceSelector'] as Map).cast<String, dynamic>()),
      taint: DeviceTaintResourceK8sIoV1alpha3.fromMap((map['taint'] as Map).cast<String, dynamic>()),
    );
  }
}

