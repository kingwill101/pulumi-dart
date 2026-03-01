// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_client_types_item.dart';

/// {@template pulumi_cloudidentity_v1beta1_device_cloudidentity_v1beta1_args_doc}
/// The set of arguments for Device.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1beta1_device_cloudidentity_v1beta1_args_doc}
class DeviceCloudidentityV1beta1Args {
  /// Asset tag of the device.
  final pulumi.Input<String>? assetTag;

  /// List of the clients the device is reporting to.
  final pulumi.Input<List<DeviceClientTypesItem>>? clientTypes;

  /// Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer_id}`, where customer_id is the customer to whom the device belongs.
  final pulumi.Input<String>? customer;

  /// Unique identifier for the device.
  final pulumi.Input<String>? deviceId;

  /// Host name of the device.
  final pulumi.Input<String>? hostname;

  /// Most recent time when device synced with this service.
  final pulumi.Input<String>? lastSyncTime;

  /// Serial Number of device. Example: HT82V1A01076.
  final pulumi.Input<String>? serialNumber;

  /// WiFi MAC addresses of device.
  final pulumi.Input<List<String>>? wifiMacAddresses;

  /// Creates a new [DeviceCloudidentityV1beta1Args].
  /// [assetTag] Asset tag of the device.
  /// [clientTypes] List of the clients the device is reporting to.
  /// [customer] Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer_id}`, where customer_id is the customer to whom the device belongs.
  /// [deviceId] Unique identifier for the device.
  /// [hostname] Host name of the device.
  /// [lastSyncTime] Most recent time when device synced with this service.
  /// [serialNumber] Serial Number of device. Example: HT82V1A01076.
  /// [wifiMacAddresses] WiFi MAC addresses of device.
  DeviceCloudidentityV1beta1Args({
    String? assetTag,
    List<DeviceClientTypesItem>? clientTypes,
    String? customer,
    String? deviceId,
    String? hostname,
    String? lastSyncTime,
    String? serialNumber,
    List<String>? wifiMacAddresses,
  }) : assetTag = pulumi.Input.asOptionalInput<String>(assetTag),
       clientTypes = pulumi.Input.asOptionalInput<List<DeviceClientTypesItem>>(
         clientTypes,
       ),
       customer = pulumi.Input.asOptionalInput<String>(customer),
       deviceId = pulumi.Input.asOptionalInput<String>(deviceId),
       hostname = pulumi.Input.asOptionalInput<String>(hostname),
       lastSyncTime = pulumi.Input.asOptionalInput<String>(lastSyncTime),
       serialNumber = pulumi.Input.asOptionalInput<String>(serialNumber),
       wifiMacAddresses = pulumi.Input.asOptionalInput<List<String>>(
         wifiMacAddresses,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetTag': ?assetTag,
      'clientTypes':
          ?pulumi.Input.mapOptionalInputValue<
            List<DeviceClientTypesItem>,
            List<String>
          >(
            clientTypes,
            (value) => pulumi.Input.encodeList<DeviceClientTypesItem, String>(
              value,
              (value) => value.value,
            ),
          ),
      'customer': ?customer,
      'deviceId': ?deviceId,
      'hostname': ?hostname,
      'lastSyncTime': ?lastSyncTime,
      'serialNumber': ?serialNumber,
      'wifiMacAddresses': ?wifiMacAddresses,
    };
  }

  factory DeviceCloudidentityV1beta1Args.fromMap(Map<String, dynamic> map) {
    return DeviceCloudidentityV1beta1Args(
      assetTag: map['assetTag'] == null ? null : map['assetTag'] as String,
      clientTypes: map['clientTypes'] == null
          ? null
          : pulumi.Input.decodeList<DeviceClientTypesItem>(
              map['clientTypes'],
              (value) => DeviceClientTypesItem.fromValue(value as String),
            ),
      customer: map['customer'] == null ? null : map['customer'] as String,
      deviceId: map['deviceId'] == null ? null : map['deviceId'] as String,
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      lastSyncTime: map['lastSyncTime'] == null
          ? null
          : map['lastSyncTime'] as String,
      serialNumber: map['serialNumber'] == null
          ? null
          : map['serialNumber'] as String,
      wifiMacAddresses: map['wifiMacAddresses'] == null
          ? null
          : (map['wifiMacAddresses'] as List).cast<String>(),
    );
  }
}
