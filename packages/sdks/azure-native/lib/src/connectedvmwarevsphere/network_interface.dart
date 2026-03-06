// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nic_ipsettings.dart';

/// Network Interface model
class NetworkInterface {
  /// Gets or sets the device key value.
  final pulumi.Input<int>? deviceKey;
  /// Gets or sets the ipsettings.
  final pulumi.Input<NicIPSettings>? ipSettings;
  /// Gets or sets the name of the network interface.
  final pulumi.Input<String>? name;
  /// Gets or sets the ARM Id of the network resource to connect the virtual machine.
  final pulumi.Input<String>? networkId;
  /// NIC type
  final pulumi.Input<String>? nicType;
  /// Gets or sets the power on boot.
  final pulumi.Input<String>? powerOnBoot;

  /// Creates a new [NetworkInterface].
  /// [deviceKey] Gets or sets the device key value.
  /// [ipSettings] Gets or sets the ipsettings.
  /// [name] Gets or sets the name of the network interface.
  /// [networkId] Gets or sets the ARM Id of the network resource to connect the virtual machine.
  /// [nicType] NIC type
  /// [powerOnBoot] Gets or sets the power on boot.
  const NetworkInterface({
    this.deviceKey,
    this.ipSettings,
    this.name,
    this.networkId,
    this.nicType,
    this.powerOnBoot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceKey': ?deviceKey,
      'ipSettings': ?pulumi.Input.mapOptionalInputValue<NicIPSettings, Map<String, dynamic>>(ipSettings, (value) => value.toMap()),
      'name': ?name,
      'networkId': ?networkId,
      'nicType': ?nicType,
      'powerOnBoot': ?powerOnBoot,
    };
  }

  factory NetworkInterface.fromMap(Map<String, dynamic> map) {
    return NetworkInterface(
      deviceKey: (() { final guardedValue = map['deviceKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipSettings: (() { final guardedValue = map['ipSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NicIPSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nicType: (() { final guardedValue = map['nicType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      powerOnBoot: (() { final guardedValue = map['powerOnBoot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

