// ignore_for_file: unused_element, unnecessary_cast

import 'contact_details_response.dart';
import 'shipping_address_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAddress.
class GetAddressResult {
  /// Type of address based on its usage context.
  final String? addressClassification;
  /// Status of address validation.
  final String addressValidationStatus;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Contact details for the address.
  final ContactDetailsResponse? contactDetails;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Provisioning state
  final String provisioningState;
  /// Shipping details for the address.
  final ShippingAddressResponse? shippingAddress;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAddressResult].
  /// [addressClassification] Type of address based on its usage context.
  /// [addressValidationStatus] Status of address validation.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [contactDetails] Contact details for the address.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state
  /// [shippingAddress] Shipping details for the address.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAddressResult({
    this.addressClassification,
    required this.addressValidationStatus,
    required this.azureApiVersion,
    this.contactDetails,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.shippingAddress,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressClassification': ?addressClassification,
      'addressValidationStatus': addressValidationStatus,
      'azureApiVersion': azureApiVersion,
      'contactDetails': ?contactDetails == null ? null : contactDetails!.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'shippingAddress': ?shippingAddress == null ? null : shippingAddress!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAddressResult.fromMap(Map<String, dynamic> map) {
    return GetAddressResult(
      addressClassification: map['addressClassification'] == null ? null : map['addressClassification'] as String,
      addressValidationStatus: map['addressValidationStatus'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      contactDetails: map['contactDetails'] == null ? null : ContactDetailsResponse.fromMap((map['contactDetails'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      shippingAddress: map['shippingAddress'] == null ? null : ShippingAddressResponse.fromMap((map['shippingAddress'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

