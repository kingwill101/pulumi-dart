// ignore_for_file: unused_element, unnecessary_cast

import 'domain_properties_verification_records_response.dart';
import 'domain_properties_verification_states_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDomain.
class GetDomainResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The location where the Domains resource data is stored at rest.
  final String? dataLocation;
  /// Describes how a Domains resource is being managed.
  final String? domainManagement;
  /// P2 sender domain that is displayed to the email recipients [RFC 5322].
  final String? fromSenderDomain;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// P1 sender domain that is present on the email envelope [RFC 5321].
  final String? mailFromSenderDomain;
  /// The name of the resource
  final String? name;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Describes whether user engagement tracking is enabled or disabled.
  final String? userEngagementTracking;
  /// List of DnsRecord
  final DomainPropertiesVerificationRecordsResponse? verificationRecords;
  /// List of VerificationStatusRecord
  final DomainPropertiesVerificationStatesResponse? verificationStates;

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
  const GetDomainResult({
    this.azureApiVersion,
    this.dataLocation,
    this.domainManagement,
    this.fromSenderDomain,
    this.id,
    this.location,
    this.mailFromSenderDomain,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
    this.userEngagementTracking,
    this.verificationRecords,
    this.verificationStates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dataLocation': ?dataLocation,
      'domainManagement': ?domainManagement,
      'fromSenderDomain': ?fromSenderDomain,
      'id': ?id,
      'location': ?location,
      'mailFromSenderDomain': ?mailFromSenderDomain,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'userEngagementTracking': ?userEngagementTracking,
      'verificationRecords': ?verificationRecords?.toMap(),
      'verificationStates': ?verificationStates?.toMap(),
    };
  }

  factory GetDomainResult.fromMap(Map<String, dynamic> map) {
    return GetDomainResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataLocation: (() { final guardedValue = map['dataLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainManagement: (() { final guardedValue = map['domainManagement']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fromSenderDomain: (() { final guardedValue = map['fromSenderDomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mailFromSenderDomain: (() { final guardedValue = map['mailFromSenderDomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userEngagementTracking: (() { final guardedValue = map['userEngagementTracking']; if (guardedValue == null) return null; return guardedValue as String; })(),
      verificationRecords: (() { final guardedValue = map['verificationRecords']; if (guardedValue == null) return null; return DomainPropertiesVerificationRecordsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      verificationStates: (() { final guardedValue = map['verificationStates']; if (guardedValue == null) return null; return DomainPropertiesVerificationStatesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
