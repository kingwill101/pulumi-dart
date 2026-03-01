// ignore_for_file: unused_element, unnecessary_cast

import 'offer_detail_response.dart';
import 'system_data_response.dart';
import 'user_detail_response.dart';

/// Result data returned by getOrganization.
class GetOrganizationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The creation time of the resource.
  final String createdTime;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Confluent offer detail
  final OfferDetailResponse offerDetail;
  /// Id of the Confluent organization.
  final String organizationId;
  /// Provision states for confluent RP
  final String provisioningState;
  /// SSO url for the Confluent organization.
  final String ssoUrl;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Subscriber detail
  final UserDetailResponse userDetail;

  /// Creates a new [GetOrganizationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdTime] The creation time of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [offerDetail] Confluent offer detail
  /// [organizationId] Id of the Confluent organization.
  /// [provisioningState] Provision states for confluent RP
  /// [ssoUrl] SSO url for the Confluent organization.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [userDetail] Subscriber detail
  GetOrganizationResult({
    required this.azureApiVersion,
    required this.createdTime,
    required this.id,
    required this.location,
    required this.name,
    required this.offerDetail,
    required this.organizationId,
    required this.provisioningState,
    required this.ssoUrl,
    required this.systemData,
    this.tags,
    required this.type,
    required this.userDetail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdTime': createdTime,
      'id': id,
      'location': location,
      'name': name,
      'offerDetail': offerDetail.toMap(),
      'organizationId': organizationId,
      'provisioningState': provisioningState,
      'ssoUrl': ssoUrl,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'userDetail': userDetail.toMap(),
    };
  }

  factory GetOrganizationResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdTime: map['createdTime'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      offerDetail: OfferDetailResponse.fromMap((map['offerDetail'] as Map).cast<String, dynamic>()),
      organizationId: map['organizationId'] as String,
      provisioningState: map['provisioningState'] as String,
      ssoUrl: map['ssoUrl'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      userDetail: UserDetailResponse.fromMap((map['userDetail'] as Map).cast<String, dynamic>()),
    );
  }
}

