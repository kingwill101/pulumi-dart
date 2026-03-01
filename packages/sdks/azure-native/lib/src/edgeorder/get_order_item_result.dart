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
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Msi identity of the resource
  final ResourceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Id of the order to which order item belongs to.
  final String orderId;
  /// Represents order item details.
  final OrderItemDetailsResponse orderItemDetails;
  /// Provisioning state
  final String provisioningState;
  /// Start time of order item.
  final String startTime;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetOrderItemResult({
    this.addressDetails,
    required this.azureApiVersion,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    required this.orderId,
    required this.orderItemDetails,
    required this.provisioningState,
    required this.startTime,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressDetails': ?addressDetails == null ? null : addressDetails!.toMap(),
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'name': name,
      'orderId': orderId,
      'orderItemDetails': orderItemDetails.toMap(),
      'provisioningState': provisioningState,
      'startTime': startTime,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetOrderItemResult.fromMap(Map<String, dynamic> map) {
    return GetOrderItemResult(
      addressDetails: map['addressDetails'] == null ? null : AddressDetailsResponse.fromMap((map['addressDetails'] as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ResourceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      orderId: map['orderId'] as String,
      orderItemDetails: OrderItemDetailsResponse.fromMap((map['orderItemDetails'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      startTime: map['startTime'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

