// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCertificateProfile.
class GetCertificateProfileResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// List of renewed certificates.
  final List<CertificateResponse>? certificates;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Identity validation id used for the certificate subject name.
  final String? identityValidationId;
  /// Whether to include L in the certificate subject name. Applicable only for private trust, private trust ci profile types
  final bool? includeCity;
  /// Whether to include C in the certificate subject name. Applicable only for private trust, private trust ci profile types
  final bool? includeCountry;
  /// Whether to include PC in the certificate subject name.
  final bool? includePostalCode;
  /// Whether to include S in the certificate subject name. Applicable only for private trust, private trust ci profile types
  final bool? includeState;
  /// Whether to include STREET in the certificate subject name.
  final bool? includeStreetAddress;
  /// The name of the resource
  final String? name;
  /// Profile type of the certificate.
  final String? profileType;
  /// Status of the current operation on certificate profile.
  final String? provisioningState;
  /// Status of the certificate profile.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetCertificateProfileResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [certificates] List of renewed certificates.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identityValidationId] Identity validation id used for the certificate subject name.
  /// [includeCity] Whether to include L in the certificate subject name. Applicable only for private trust, private trust ci profile types
  /// [includeCountry] Whether to include C in the certificate subject name. Applicable only for private trust, private trust ci profile types
  /// [includePostalCode] Whether to include PC in the certificate subject name.
  /// [includeState] Whether to include S in the certificate subject name. Applicable only for private trust, private trust ci profile types
  /// [includeStreetAddress] Whether to include STREET in the certificate subject name.
  /// [name] The name of the resource
  /// [profileType] Profile type of the certificate.
  /// [provisioningState] Status of the current operation on certificate profile.
  /// [status] Status of the certificate profile.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetCertificateProfileResult({
    this.azureApiVersion,
    this.certificates,
    this.id,
    this.identityValidationId,
    bool? includeCity,
    bool? includeCountry,
    bool? includePostalCode,
    bool? includeState,
    bool? includeStreetAddress,
    this.name,
    this.profileType,
    this.provisioningState,
    this.status,
    this.systemData,
    this.type,
  }) : includeCity = includeCity ?? false, includeCountry = includeCountry ?? false, includePostalCode = includePostalCode ?? false, includeState = includeState ?? false, includeStreetAddress = includeStreetAddress ?? false;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'certificates': ?(() { final guardedValue = certificates; if (guardedValue == null) return null; return pulumi.Input.encodeList<CertificateResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identityValidationId': ?identityValidationId,
      'includeCity': ?includeCity,
      'includeCountry': ?includeCountry,
      'includePostalCode': ?includePostalCode,
      'includeState': ?includeState,
      'includeStreetAddress': ?includeStreetAddress,
      'name': ?name,
      'profileType': ?profileType,
      'provisioningState': ?provisioningState,
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetCertificateProfileResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateProfileResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CertificateResponse>(guardedValue, (value) => CertificateResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityValidationId: (() { final guardedValue = map['identityValidationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeCity: (() { final guardedValue = map['includeCity']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      includeCountry: (() { final guardedValue = map['includeCountry']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      includePostalCode: (() { final guardedValue = map['includePostalCode']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      includeState: (() { final guardedValue = map['includeState']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      includeStreetAddress: (() { final guardedValue = map['includeStreetAddress']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profileType: (() { final guardedValue = map['profileType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
