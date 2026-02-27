// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Device.
class DeviceArgs {
  /// Asset tag of the device.
  final Input<String>? assetTag;

  /// Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer}`, where customer is the customer to whom the device belongs.
  final Input<String>? customer;

  /// Unique identifier for the device.
  final Input<String>? deviceId;

  /// Host name of the device.
  final Input<String>? hostname;

  /// Most recent time when device synced with this service.
  final Input<String>? lastSyncTime;

  /// Serial Number of device. Example: HT82V1A01076.
  final Input<String>? serialNumber;

  /// WiFi MAC addresses of device.
  final Input<List<String>>? wifiMacAddresses;

  DeviceArgs({
    this.assetTag,
    this.customer,
    this.deviceId,
    this.hostname,
    this.lastSyncTime,
    this.serialNumber,
    this.wifiMacAddresses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assetTagValue = assetTag;
    if (assetTagValue != null) {
      map['assetTag'] = assetTagValue;
    }
    final customerValue = customer;
    if (customerValue != null) {
      map['customer'] = customerValue;
    }
    final deviceIdValue = deviceId;
    if (deviceIdValue != null) {
      map['deviceId'] = deviceIdValue;
    }
    final hostnameValue = hostname;
    if (hostnameValue != null) {
      map['hostname'] = hostnameValue;
    }
    final lastSyncTimeValue = lastSyncTime;
    if (lastSyncTimeValue != null) {
      map['lastSyncTime'] = lastSyncTimeValue;
    }
    final serialNumberValue = serialNumber;
    if (serialNumberValue != null) {
      map['serialNumber'] = serialNumberValue;
    }
    final wifiMacAddressesValue = wifiMacAddresses;
    if (wifiMacAddressesValue != null) {
      map['wifiMacAddresses'] = wifiMacAddressesValue;
    }
    return map;
  }

  factory DeviceArgs.fromMap(Map<String, dynamic> map) {
    return DeviceArgs(
      assetTag: Input.asOptionalInput<String>(map['assetTag']),
      customer: Input.asOptionalInput<String>(map['customer']),
      deviceId: Input.asOptionalInput<String>(map['deviceId']),
      hostname: Input.asOptionalInput<String>(map['hostname']),
      lastSyncTime: Input.asOptionalInput<String>(map['lastSyncTime']),
      serialNumber: Input.asOptionalInput<String>(map['serialNumber']),
      wifiMacAddresses:
          Input.asOptionalInput<List<String>>(map['wifiMacAddresses']),
    );
  }
}
