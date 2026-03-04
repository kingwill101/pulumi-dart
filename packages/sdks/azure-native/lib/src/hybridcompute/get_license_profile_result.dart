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
  final String assignedLicenseImmutableId;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The timestamp in UTC when the billing ends.
  final String billingEndDate;

  /// The timestamp in UTC when the billing starts.
  final String billingStartDate;

  /// The timestamp in UTC when the user disenrolled the feature.
  final String disenrollmentDate;

  /// The timestamp in UTC when the user enrolls the feature.
  final String enrollmentDate;

  /// The errors that were encountered during the feature enrollment or disenrollment.
  final ErrorDetailResponse error;

  /// Indicates the eligibility state of Esu.
  final String esuEligibility;

  /// Indicates whether there is an ESU Key currently active for the machine.
  final String esuKeyState;

  /// The list of ESU keys.
  final List<EsuKeyResponse> esuKeys;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// The list of product features.
  final List<ProductFeatureResponse>? productFeatures;

  /// Indicates the product type of the license.
  final String? productType;

  /// The provisioning state, which only appears in the response.
  final String provisioningState;

  /// The type of the Esu servers.
  final String serverType;

  /// Specifies if this machine is licensed as part of a Software Assurance agreement.
  final bool? softwareAssuranceCustomer;

  /// Indicates the subscription status of the product.
  final String? subscriptionStatus;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetLicenseProfileResult({
    this.assignedLicense,
    required this.assignedLicenseImmutableId,
    required this.azureApiVersion,
    required this.billingEndDate,
    required this.billingStartDate,
    required this.disenrollmentDate,
    required this.enrollmentDate,
    required this.error,
    required this.esuEligibility,
    required this.esuKeyState,
    required this.esuKeys,
    required this.id,
    required this.location,
    required this.name,
    this.productFeatures,
    this.productType,
    required this.provisioningState,
    required this.serverType,
    this.softwareAssuranceCustomer,
    this.subscriptionStatus,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedLicense': ?assignedLicense,
      'assignedLicenseImmutableId': assignedLicenseImmutableId,
      'azureApiVersion': azureApiVersion,
      'billingEndDate': billingEndDate,
      'billingStartDate': billingStartDate,
      'disenrollmentDate': disenrollmentDate,
      'enrollmentDate': enrollmentDate,
      'error': error.toMap(),
      'esuEligibility': esuEligibility,
      'esuKeyState': esuKeyState,
      'esuKeys': pulumi.Input.encodeList<EsuKeyResponse, Map<String, dynamic>>(
        esuKeys,
        (value) => value.toMap(),
      ),
      'id': id,
      'location': location,
      'name': name,
      'productFeatures': ?(() {
        final guardedValue = productFeatures;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ProductFeatureResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'productType': ?productType,
      'provisioningState': provisioningState,
      'serverType': serverType,
      'softwareAssuranceCustomer': ?softwareAssuranceCustomer,
      'subscriptionStatus': ?subscriptionStatus,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetLicenseProfileResult.fromMap(Map<String, dynamic> map) {
    return GetLicenseProfileResult(
      assignedLicense: (() {
        final guardedValue = map['assignedLicense'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      assignedLicenseImmutableId: map['assignedLicenseImmutableId'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      billingEndDate: map['billingEndDate'] as String,
      billingStartDate: map['billingStartDate'] as String,
      disenrollmentDate: map['disenrollmentDate'] as String,
      enrollmentDate: map['enrollmentDate'] as String,
      error: ErrorDetailResponse.fromMap(
        (map['error']! as Map).cast<String, dynamic>(),
      ),
      esuEligibility: map['esuEligibility'] as String,
      esuKeyState: map['esuKeyState'] as String,
      esuKeys: pulumi.Input.decodeList<EsuKeyResponse>(
        map['esuKeys']!,
        (value) =>
            EsuKeyResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      productFeatures: (() {
        final guardedValue = map['productFeatures'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ProductFeatureResponse>(
          guardedValue,
          (value) => ProductFeatureResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      productType: (() {
        final guardedValue = map['productType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningState: map['provisioningState'] as String,
      serverType: map['serverType'] as String,
      softwareAssuranceCustomer: (() {
        final guardedValue = map['softwareAssuranceCustomer'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      subscriptionStatus: (() {
        final guardedValue = map['subscriptionStatus'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
