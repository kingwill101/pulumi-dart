// ignore_for_file: unused_element, unnecessary_cast

import 'offer_detail_response.dart';
import 'system_data_response.dart';
import 'user_detail_response.dart';

/// Result data returned by getOrganization.
class GetOrganizationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The creation time of the resource.
  final String? createdTime;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Confluent offer detail
  final OfferDetailResponse? offerDetail;
  /// Id of the Confluent organization.
  final String? organizationId;
  /// Provision states for confluent RP
  final String? provisioningState;
  /// SSO url for the Confluent organization.
  final String? ssoUrl;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Subscriber detail
  final UserDetailResponse? userDetail;

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
  const GetOrganizationResult({
    this.azureApiVersion,
    this.createdTime,
    this.id,
    this.location,
    this.name,
    this.offerDetail,
    this.organizationId,
    this.provisioningState,
    this.ssoUrl,
    this.systemData,
    this.tags,
    this.type,
    this.userDetail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createdTime': ?createdTime,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'offerDetail': ?offerDetail?.toMap(),
      'organizationId': ?organizationId,
      'provisioningState': ?provisioningState,
      'ssoUrl': ?ssoUrl,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'userDetail': ?userDetail?.toMap(),
    };
  }

  factory GetOrganizationResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offerDetail: (() { final guardedValue = map['offerDetail']; if (guardedValue == null) return null; return OfferDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ssoUrl: (() { final guardedValue = map['ssoUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userDetail: (() { final guardedValue = map['userDetail']; if (guardedValue == null) return null; return UserDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
