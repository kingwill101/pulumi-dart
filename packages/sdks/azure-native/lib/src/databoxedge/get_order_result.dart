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
  final String? azureApiVersion;
  /// The contact details.
  final ContactDetailsResponse? contactInformation;
  /// Current status of the order.
  final OrderStatusResponse? currentStatus;
  /// Tracking information for the package delivered to the customer whether it has an original or a replacement device.
  final List<TrackingInfoResponse>? deliveryTrackingInfo;
  /// The path ID that uniquely identifies the object.
  final String? id;
  /// It specify the order api version.
  final String? kind;
  /// The object name.
  final String? name;
  /// List of status changes in the order.
  final List<OrderStatusResponse>? orderHistory;
  /// It specify the order resource id.
  final String? orderId;
  /// Tracking information for the package returned from the customer whether it has an original or a replacement device.
  final List<TrackingInfoResponse>? returnTrackingInfo;
  /// Serial number of the device.
  final String? serialNumber;
  /// ShipmentType of the order
  final String? shipmentType;
  /// The shipping address.
  final AddressResponse? shippingAddress;
  /// Metadata pertaining to creation and last modification of Order
  final SystemDataResponse? systemData;
  /// The hierarchical type of the object.
  final String? type;

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
  const GetOrderResult({
    this.azureApiVersion,
    this.contactInformation,
    this.currentStatus,
    this.deliveryTrackingInfo,
    this.id,
    this.kind,
    this.name,
    this.orderHistory,
    this.orderId,
    this.returnTrackingInfo,
    this.serialNumber,
    this.shipmentType,
    this.shippingAddress,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'contactInformation': ?contactInformation?.toMap(),
      'currentStatus': ?currentStatus?.toMap(),
      'deliveryTrackingInfo': ?(() { final guardedValue = deliveryTrackingInfo; if (guardedValue == null) return null; return pulumi.Input.encodeList<TrackingInfoResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'orderHistory': ?(() { final guardedValue = orderHistory; if (guardedValue == null) return null; return pulumi.Input.encodeList<OrderStatusResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'orderId': ?orderId,
      'returnTrackingInfo': ?(() { final guardedValue = returnTrackingInfo; if (guardedValue == null) return null; return pulumi.Input.encodeList<TrackingInfoResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serialNumber': ?serialNumber,
      'shipmentType': ?shipmentType,
      'shippingAddress': ?shippingAddress?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetOrderResult.fromMap(Map<String, dynamic> map) {
    return GetOrderResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contactInformation: (() { final guardedValue = map['contactInformation']; if (guardedValue == null) return null; return ContactDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      currentStatus: (() { final guardedValue = map['currentStatus']; if (guardedValue == null) return null; return OrderStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deliveryTrackingInfo: (() { final guardedValue = map['deliveryTrackingInfo']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrackingInfoResponse>(guardedValue, (value) => TrackingInfoResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderHistory: (() { final guardedValue = map['orderHistory']; if (guardedValue == null) return null; return pulumi.Input.decodeList<OrderStatusResponse>(guardedValue, (value) => OrderStatusResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      orderId: (() { final guardedValue = map['orderId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      returnTrackingInfo: (() { final guardedValue = map['returnTrackingInfo']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrackingInfoResponse>(guardedValue, (value) => TrackingInfoResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shipmentType: (() { final guardedValue = map['shipmentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shippingAddress: (() { final guardedValue = map['shippingAddress']; if (guardedValue == null) return null; return AddressResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
