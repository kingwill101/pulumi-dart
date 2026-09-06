// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';
import 'esu_key_response.dart';
import 'product_feature_response.dart';
import 'system_data_response.dart';

/// Result data returned by getLicenseProfile.
class GetLicenseProfileResult {
  /// The resource id of the license.
  final String? assignedLicense;
  /// The guid id of the license.
  final String? assignedLicenseImmutableId;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The timestamp in UTC when the billing ends.
  final String? billingEndDate;
  /// The timestamp in UTC when the billing starts.
  final String? billingStartDate;
  /// The timestamp in UTC when the user disenrolled the feature.
  final String? disenrollmentDate;
  /// The timestamp in UTC when the user enrolls the feature.
  final String? enrollmentDate;
  /// The errors that were encountered during the feature enrollment or disenrollment.
  final ErrorDetailResponse? error;
  /// Indicates the eligibility state of Esu.
  final String? esuEligibility;
  /// Indicates whether there is an ESU Key currently active for the machine.
  final String? esuKeyState;
  /// The list of ESU keys.
  final List<EsuKeyResponse>? esuKeys;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The list of product features.
  final List<ProductFeatureResponse>? productFeatures;
  /// Indicates the product type of the license.
  final String? productType;
  /// The provisioning state, which only appears in the response.
  final String? provisioningState;
  /// The type of the Esu servers.
  final String? serverType;
  /// Specifies if this machine is licensed as part of a Software Assurance agreement.
  final bool? softwareAssuranceCustomer;
  /// Indicates the subscription status of the product.
  final String? subscriptionStatus;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetLicenseProfileResult].
  /// [assignedLicense] The resource id of the license.
  /// [assignedLicenseImmutableId] The guid id of the license.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [billingEndDate] The timestamp in UTC when the billing ends.
  /// [billingStartDate] The timestamp in UTC when the billing starts.
  /// [disenrollmentDate] The timestamp in UTC when the user disenrolled the feature.
  /// [enrollmentDate] The timestamp in UTC when the user enrolls the feature.
  /// [error] The errors that were encountered during the feature enrollment or disenrollment.
  /// [esuEligibility] Indicates the eligibility state of Esu.
  /// [esuKeyState] Indicates whether there is an ESU Key currently active for the machine.
  /// [esuKeys] The list of ESU keys.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [productFeatures] The list of product features.
  /// [productType] Indicates the product type of the license.
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [serverType] The type of the Esu servers.
  /// [softwareAssuranceCustomer] Specifies if this machine is licensed as part of a Software Assurance agreement.
  /// [subscriptionStatus] Indicates the subscription status of the product.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetLicenseProfileResult({
    this.assignedLicense,
    this.assignedLicenseImmutableId,
    this.azureApiVersion,
    this.billingEndDate,
    this.billingStartDate,
    this.disenrollmentDate,
    this.enrollmentDate,
    this.error,
    this.esuEligibility,
    this.esuKeyState,
    this.esuKeys,
    this.id,
    this.location,
    this.name,
    this.productFeatures,
    this.productType,
    this.provisioningState,
    this.serverType,
    this.softwareAssuranceCustomer,
    this.subscriptionStatus,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedLicense': ?assignedLicense,
      'assignedLicenseImmutableId': ?assignedLicenseImmutableId,
      'azureApiVersion': ?azureApiVersion,
      'billingEndDate': ?billingEndDate,
      'billingStartDate': ?billingStartDate,
      'disenrollmentDate': ?disenrollmentDate,
      'enrollmentDate': ?enrollmentDate,
      'error': ?error?.toMap(),
      'esuEligibility': ?esuEligibility,
      'esuKeyState': ?esuKeyState,
      'esuKeys': ?(() { final guardedValue = esuKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<EsuKeyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'productFeatures': ?(() { final guardedValue = productFeatures; if (guardedValue == null) return null; return pulumi.Input.encodeList<ProductFeatureResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'productType': ?productType,
      'provisioningState': ?provisioningState,
      'serverType': ?serverType,
      'softwareAssuranceCustomer': ?softwareAssuranceCustomer,
      'subscriptionStatus': ?subscriptionStatus,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetLicenseProfileResult.fromMap(Map<String, dynamic> map) {
    return GetLicenseProfileResult(
      assignedLicense: (() { final guardedValue = map['assignedLicense']; if (guardedValue == null) return null; return guardedValue as String; })(),
      assignedLicenseImmutableId: (() { final guardedValue = map['assignedLicenseImmutableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      billingEndDate: (() { final guardedValue = map['billingEndDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      billingStartDate: (() { final guardedValue = map['billingStartDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disenrollmentDate: (() { final guardedValue = map['disenrollmentDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enrollmentDate: (() { final guardedValue = map['enrollmentDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return ErrorDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      esuEligibility: (() { final guardedValue = map['esuEligibility']; if (guardedValue == null) return null; return guardedValue as String; })(),
      esuKeyState: (() { final guardedValue = map['esuKeyState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      esuKeys: (() { final guardedValue = map['esuKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EsuKeyResponse>(guardedValue, (value) => EsuKeyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productFeatures: (() { final guardedValue = map['productFeatures']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProductFeatureResponse>(guardedValue, (value) => ProductFeatureResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      productType: (() { final guardedValue = map['productType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverType: (() { final guardedValue = map['serverType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      softwareAssuranceCustomer: (() { final guardedValue = map['softwareAssuranceCustomer']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      subscriptionStatus: (() { final guardedValue = map['subscriptionStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
