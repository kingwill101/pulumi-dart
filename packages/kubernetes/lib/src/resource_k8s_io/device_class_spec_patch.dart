// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_class_configuration_patch.dart';
import 'device_selector_patch.dart';

/// DeviceClassSpec is used in a [DeviceClass] to define what can be allocated and how to configure it.
class DeviceClassSpecPatch {
  /// Config defines configuration parameters that apply to each device that is claimed via this class. Some classses may potentially be satisfied by multiple drivers, so each instance of a vendor configuration applies to exactly one driver.
  ///
  /// They are passed to the driver, but are not considered while allocating the claim.
  final List<DeviceClassConfigurationPatch>? config;
  /// ExtendedResourceName is the extended resource name for the devices of this class. The devices of this class can be used to satisfy a pod's extended resource requests. It has the same format as the name of a pod's extended resource. It should be unique among all the device classes in a cluster. If two device classes have the same name, then the class created later is picked to satisfy a pod's extended resource requests. If two classes are created at the same time, then the name of the class lexicographically sorted first is picked.
  ///
  /// This is an alpha field.
  final String? extendedResourceName;
  /// Each selector must be satisfied by a device which is claimed via this class.
  final List<DeviceSelectorPatch>? selectors;

  /// Creates a new [DeviceClassSpecPatch].
  /// [config] Config defines configuration parameters that apply to each device that is claimed via this class. Some classses may potentially be satisfied by multiple drivers, so each instance of a vendor configuration applies to exactly one driver.
  /// [extendedResourceName] ExtendedResourceName is the extended resource name for the devices of this class. The devices of this class can be used to satisfy a pod's extended resource requests. It has the same format as the name of a pod's extended resource. It should be unique among all the device classes in a cluster. If two device classes have the same name, then the class created later is picked to satisfy a pod's extended resource requests. If two classes are created at the same time, then the name of the class lexicographically sorted first is picked.
  /// [selectors] Each selector must be satisfied by a device which is claimed via this class.
  DeviceClassSpecPatch({
    this.config,
    this.extendedResourceName,
    this.selectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config == null ? null : pulumi.Input.encodeList<DeviceClassConfigurationPatch, Map<String, dynamic>>(config!, (value) => value.toMap()),
      'extendedResourceName': ?extendedResourceName,
      'selectors': ?selectors == null ? null : pulumi.Input.encodeList<DeviceSelectorPatch, Map<String, dynamic>>(selectors!, (value) => value.toMap()),
    };
  }

  factory DeviceClassSpecPatch.fromMap(Map<String, dynamic> map) {
    return DeviceClassSpecPatch(
      config: map['config'] == null ? null : pulumi.Input.decodeList<DeviceClassConfigurationPatch>(map['config'], (value) => DeviceClassConfigurationPatch.fromMap((value as Map).cast<String, dynamic>())),
      extendedResourceName: map['extendedResourceName'] == null ? null : map['extendedResourceName'] as String,
      selectors: map['selectors'] == null ? null : pulumi.Input.decodeList<DeviceSelectorPatch>(map['selectors'], (value) => DeviceSelectorPatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

