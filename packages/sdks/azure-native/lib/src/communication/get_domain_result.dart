// ignore_for_file: unused_element, unnecessary_cast

import 'domain_properties_response_verification_records.dart';
import 'domain_properties_response_verification_states.dart';
import 'system_data_response.dart';

/// Result data returned by getDomain.
class GetDomainResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The location where the Domains resource data is stored at rest.
  final String dataLocation;

  /// Describes how a Domains resource is being managed.
  final String domainManagement;

  /// P2 sender domain that is displayed to the email recipients [RFC 5322].
  final String fromSenderDomain;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// P1 sender domain that is present on the email envelope [RFC 5321].
  final String mailFromSenderDomain;

  /// The name of the resource
  final String name;

  /// Provisioning state of the resource.
  final String provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Describes whether user engagement tracking is enabled or disabled.
  final String? userEngagementTracking;

  /// List of DnsRecord
  final DomainPropertiesResponseVerificationRecords verificationRecords;

  /// List of VerificationStatusRecord
  final DomainPropertiesResponseVerificationStates verificationStates;

  /// Creates a new [GetDomainResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataLocation] The location where the Domains resource data is stored at rest.
  /// [domainManagement] Describes how a Domains resource is being managed.
  /// [fromSenderDomain] P2 sender domain that is displayed to the email recipients [RFC 5322].
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [mailFromSenderDomain] P1 sender domain that is present on the email envelope [RFC 5321].
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [userEngagementTracking] Describes whether user engagement tracking is enabled or disabled.
  /// [verificationRecords] List of DnsRecord
  /// [verificationStates] List of VerificationStatusRecord
  GetDomainResult({
    required this.azureApiVersion,
    required this.dataLocation,
    required this.domainManagement,
    required this.fromSenderDomain,
    required this.id,
    required this.location,
    required this.mailFromSenderDomain,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    this.userEngagementTracking,
    required this.verificationRecords,
    required this.verificationStates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dataLocation': dataLocation,
      'domainManagement': domainManagement,
      'fromSenderDomain': fromSenderDomain,
      'id': id,
      'location': location,
      'mailFromSenderDomain': mailFromSenderDomain,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'userEngagementTracking': ?userEngagementTracking,
      'verificationRecords': verificationRecords.toMap(),
      'verificationStates': verificationStates.toMap(),
    };
  }

  factory GetDomainResult.fromMap(Map<String, dynamic> map) {
    return GetDomainResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataLocation: map['dataLocation'] as String,
      domainManagement: map['domainManagement'] as String,
      fromSenderDomain: map['fromSenderDomain'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      mailFromSenderDomain: map['mailFromSenderDomain'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      userEngagementTracking: (() {
        final guardedValue = map['userEngagementTracking'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      verificationRecords: DomainPropertiesResponseVerificationRecords.fromMap(
        (map['verificationRecords']! as Map).cast<String, dynamic>(),
      ),
      verificationStates: DomainPropertiesResponseVerificationStates.fromMap(
        (map['verificationStates']! as Map).cast<String, dynamic>(),
      ),
    );
  }
}
