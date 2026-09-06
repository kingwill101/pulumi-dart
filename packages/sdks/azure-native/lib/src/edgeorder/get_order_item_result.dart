// ignore_for_file: unused_element, unnecessary_cast

import 'address_details_response.dart';
import 'order_item_details_response.dart';
import 'resource_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getOrderItem.
class GetOrderItemResult {
  /// Represents shipping and return address for order item.
  final AddressDetailsResponse? addressDetails;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Msi identity of the resource
  final ResourceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Id of the order to which order item belongs to.
  final String? orderId;
  /// Represents order item details.
  final OrderItemDetailsResponse? orderItemDetails;
  /// Provisioning state
  final String? provisioningState;
  /// Start time of order item.
  final String? startTime;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetOrderItemResult].
  /// [addressDetails] Represents shipping and return address for order item.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Msi identity of the resource
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [orderId] Id of the order to which order item belongs to.
  /// [orderItemDetails] Represents order item details.
  /// [provisioningState] Provisioning state
  /// [startTime] Start time of order item.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetOrderItemResult({
    this.addressDetails,
    this.azureApiVersion,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.orderId,
    this.orderItemDetails,
    this.provisioningState,
    this.startTime,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressDetails': ?addressDetails?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'orderId': ?orderId,
      'orderItemDetails': ?orderItemDetails?.toMap(),
      'provisioningState': ?provisioningState,
      'startTime': ?startTime,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetOrderItemResult.fromMap(Map<String, dynamic> map) {
    return GetOrderItemResult(
      addressDetails: (() { final guardedValue = map['addressDetails']; if (guardedValue == null) return null; return AddressDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ResourceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderId: (() { final guardedValue = map['orderId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderItemDetails: (() { final guardedValue = map['orderItemDetails']; if (guardedValue == null) return null; return OrderItemDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
