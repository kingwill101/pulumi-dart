// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_response.dart';
import 'contact_details_response.dart';
import 'order_status_response.dart';
import 'system_data_response.dart';
import 'tracking_info_response.dart';

/// Result data returned by getOrder.
class GetOrderResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The contact details.
  final ContactDetailsResponse contactInformation;
  /// Current status of the order.
  final OrderStatusResponse currentStatus;
  /// Tracking information for the package delivered to the customer whether it has an original or a replacement device.
  final List<TrackingInfoResponse> deliveryTrackingInfo;
  /// The path ID that uniquely identifies the object.
  final String id;
  /// It specify the order api version.
  final String kind;
  /// The object name.
  final String name;
  /// List of status changes in the order.
  final List<OrderStatusResponse> orderHistory;
  /// It specify the order resource id.
  final String orderId;
  /// Tracking information for the package returned from the customer whether it has an original or a replacement device.
  final List<TrackingInfoResponse> returnTrackingInfo;
  /// Serial number of the device.
  final String serialNumber;
  /// ShipmentType of the order
  final String? shipmentType;
  /// The shipping address.
  final AddressResponse? shippingAddress;
  /// Metadata pertaining to creation and last modification of Order
  final SystemDataResponse systemData;
  /// The hierarchical type of the object.
  final String type;

  /// Creates a new [GetOrderResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [contactInformation] The contact details.
  /// [currentStatus] Current status of the order.
  /// [deliveryTrackingInfo] Tracking information for the package delivered to the customer whether it has an original or a replacement device.
  /// [id] The path ID that uniquely identifies the object.
  /// [kind] It specify the order api version.
  /// [name] The object name.
  /// [orderHistory] List of status changes in the order.
  /// [orderId] It specify the order resource id.
  /// [returnTrackingInfo] Tracking information for the package returned from the customer whether it has an original or a replacement device.
  /// [serialNumber] Serial number of the device.
  /// [shipmentType] ShipmentType of the order
  /// [shippingAddress] The shipping address.
  /// [systemData] Metadata pertaining to creation and last modification of Order
  /// [type] The hierarchical type of the object.
  GetOrderResult({
    required this.azureApiVersion,
    required this.contactInformation,
    required this.currentStatus,
    required this.deliveryTrackingInfo,
    required this.id,
    required this.kind,
    required this.name,
    required this.orderHistory,
    required this.orderId,
    required this.returnTrackingInfo,
    required this.serialNumber,
    this.shipmentType,
    this.shippingAddress,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'contactInformation': contactInformation.toMap(),
      'currentStatus': currentStatus.toMap(),
      'deliveryTrackingInfo': pulumi.Input.encodeList<TrackingInfoResponse, Map<String, dynamic>>(deliveryTrackingInfo, (value) => value.toMap()),
      'id': id,
      'kind': kind,
      'name': name,
      'orderHistory': pulumi.Input.encodeList<OrderStatusResponse, Map<String, dynamic>>(orderHistory, (value) => value.toMap()),
      'orderId': orderId,
      'returnTrackingInfo': pulumi.Input.encodeList<TrackingInfoResponse, Map<String, dynamic>>(returnTrackingInfo, (value) => value.toMap()),
      'serialNumber': serialNumber,
      'shipmentType': ?shipmentType,
      'shippingAddress': ?shippingAddress == null ? null : shippingAddress!.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetOrderResult.fromMap(Map<String, dynamic> map) {
    return GetOrderResult(
      azureApiVersion: map['azureApiVersion'] as String,
      contactInformation: ContactDetailsResponse.fromMap((map['contactInformation'] as Map).cast<String, dynamic>()),
      currentStatus: OrderStatusResponse.fromMap((map['currentStatus'] as Map).cast<String, dynamic>()),
      deliveryTrackingInfo: pulumi.Input.decodeList<TrackingInfoResponse>(map['deliveryTrackingInfo'], (value) => TrackingInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      orderHistory: pulumi.Input.decodeList<OrderStatusResponse>(map['orderHistory'], (value) => OrderStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      orderId: map['orderId'] as String,
      returnTrackingInfo: pulumi.Input.decodeList<TrackingInfoResponse>(map['returnTrackingInfo'], (value) => TrackingInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      serialNumber: map['serialNumber'] as String,
      shipmentType: map['shipmentType'] == null ? null : map['shipmentType']! as String,
      shippingAddress: map['shippingAddress'] == null ? null : AddressResponse.fromMap((map['shippingAddress']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

