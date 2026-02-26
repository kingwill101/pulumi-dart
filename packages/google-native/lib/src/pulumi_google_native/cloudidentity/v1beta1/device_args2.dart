// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'device_client_types_item.dart';

/// The set of arguments for Device.
class DeviceArgs2 {
  /// Asset tag of the device.
  final Input<String>? assetTag;

  /// List of the clients the device is reporting to.
  final Input<List<DeviceClientTypesItem>>? clientTypes;

  /// Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer_id}`, where customer_id is the customer to whom the device belongs.
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

  DeviceArgs2({
    this.assetTag,
    this.clientTypes,
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
    final clientTypesValue = clientTypes;
    if (clientTypesValue != null) {
      map['clientTypes'] = Input.mapOptionalInputValue<
              List<DeviceClientTypesItem>, List<String>>(
          clientTypesValue,
          (value) => Input.encodeList<DeviceClientTypesItem, String>(
              value, (value) => value.value));
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

  factory DeviceArgs2.fromMap(Map<String, dynamic> map) {
    return DeviceArgs2(
      assetTag: Input.asOptionalInput<String>(map['assetTag']),
      clientTypes: Input.asOptionalInput<List<DeviceClientTypesItem>>(
          map['clientTypes']),
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
