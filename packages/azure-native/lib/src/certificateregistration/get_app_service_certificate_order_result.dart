// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_certificate_response.dart';
import 'certificate_details_response.dart';
import 'certificate_order_contact_response.dart';

/// Result data returned by getAppServiceCertificateOrder.
class GetAppServiceCertificateOrderResult {
  /// Reasons why App Service Certificate is not renewable at the current moment.
  final List<String> appServiceCertificateNotRenewableReasons;
  /// <code>true</code> if the certificate should be automatically renewed when it expires; otherwise, <code>false</code>.
  final bool? autoRenew;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// State of the Key Vault secret.
  final Map<String, AppServiceCertificateResponse>? certificates;
  /// Contact info
  final CertificateOrderContactResponse contact;
  /// Last CSR that was created for this order.
  final String? csr;
  /// Certificate distinguished name.
  final String? distinguishedName;
  /// Domain verification token.
  final String domainVerificationToken;
  /// Certificate expiration time.
  final String expirationTime;
  /// Resource Id.
  final String id;
  /// Intermediate certificate.
  final CertificateDetailsResponse intermediate;
  /// <code>true</code> if private key is external; otherwise, <code>false</code>.
  final bool isPrivateKeyExternal;
  /// Certificate key size.
  final int? keySize;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final String? kind;
  /// Certificate last issuance time.
  final String lastCertificateIssuanceTime;
  /// Resource Location.
  final String location;
  /// Resource Name.
  final String name;
  /// Time stamp when the certificate would be auto renewed next
  final String nextAutoRenewalTimeStamp;
  /// Certificate product type.
  final String productType;
  /// Status of certificate order.
  final String provisioningState;
  /// Root certificate.
  final CertificateDetailsResponse root;
  /// Current serial number of the certificate.
  final String serialNumber;
  /// Signed certificate.
  final CertificateDetailsResponse signedCertificate;
  /// Current order status.
  final String status;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// Duration in years (must be 1).
  final int? validityInYears;

  /// Creates a new [GetAppServiceCertificateOrderResult].
  /// [appServiceCertificateNotRenewableReasons] Reasons why App Service Certificate is not renewable at the current moment.
  /// [autoRenew] <code>true</code> if the certificate should be automatically renewed when it expires; otherwise, <code>false</code>.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [certificates] State of the Key Vault secret.
  /// [contact] Contact info
  /// [csr] Last CSR that was created for this order.
  /// [distinguishedName] Certificate distinguished name.
  /// [domainVerificationToken] Domain verification token.
  /// [expirationTime] Certificate expiration time.
  /// [id] Resource Id.
  /// [intermediate] Intermediate certificate.
  /// [isPrivateKeyExternal] <code>true</code> if private key is external; otherwise, <code>false</code>.
  /// [keySize] Certificate key size.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [lastCertificateIssuanceTime] Certificate last issuance time.
  /// [location] Resource Location.
  /// [name] Resource Name.
  /// [nextAutoRenewalTimeStamp] Time stamp when the certificate would be auto renewed next
  /// [productType] Certificate product type.
  /// [provisioningState] Status of certificate order.
  /// [root] Root certificate.
  /// [serialNumber] Current serial number of the certificate.
  /// [signedCertificate] Signed certificate.
  /// [status] Current order status.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [validityInYears] Duration in years (must be 1).
  GetAppServiceCertificateOrderResult({
    required this.appServiceCertificateNotRenewableReasons,
    this.autoRenew,
    required this.azureApiVersion,
    this.certificates,
    required this.contact,
    this.csr,
    this.distinguishedName,
    required this.domainVerificationToken,
    required this.expirationTime,
    required this.id,
    required this.intermediate,
    required this.isPrivateKeyExternal,
    this.keySize,
    this.kind,
    required this.lastCertificateIssuanceTime,
    required this.location,
    required this.name,
    required this.nextAutoRenewalTimeStamp,
    required this.productType,
    required this.provisioningState,
    required this.root,
    required this.serialNumber,
    required this.signedCertificate,
    required this.status,
    this.tags,
    required this.type,
    this.validityInYears,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceCertificateNotRenewableReasons': appServiceCertificateNotRenewableReasons,
      'autoRenew': ?autoRenew,
      'azureApiVersion': azureApiVersion,
      'certificates': ?certificates == null ? null : pulumi.Input.encodeMapValues<AppServiceCertificateResponse, Map<String, dynamic>>(certificates!, (value) => value.toMap()),
      'contact': contact.toMap(),
      'csr': ?csr,
      'distinguishedName': ?distinguishedName,
      'domainVerificationToken': domainVerificationToken,
      'expirationTime': expirationTime,
      'id': id,
      'intermediate': intermediate.toMap(),
      'isPrivateKeyExternal': isPrivateKeyExternal,
      'keySize': ?keySize,
      'kind': ?kind,
      'lastCertificateIssuanceTime': lastCertificateIssuanceTime,
      'location': location,
      'name': name,
      'nextAutoRenewalTimeStamp': nextAutoRenewalTimeStamp,
      'productType': productType,
      'provisioningState': provisioningState,
      'root': root.toMap(),
      'serialNumber': serialNumber,
      'signedCertificate': signedCertificate.toMap(),
      'status': status,
      'tags': ?tags,
      'type': type,
      'validityInYears': ?validityInYears,
    };
  }

  factory GetAppServiceCertificateOrderResult.fromMap(Map<String, dynamic> map) {
    return GetAppServiceCertificateOrderResult(
      appServiceCertificateNotRenewableReasons: (map['appServiceCertificateNotRenewableReasons'] as List).cast<String>(),
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      certificates: map['certificates'] == null ? null : pulumi.Input.decodeMapValues<AppServiceCertificateResponse>(map['certificates'], (value) => AppServiceCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      contact: CertificateOrderContactResponse.fromMap((map['contact'] as Map).cast<String, dynamic>()),
      csr: map['csr'] == null ? null : map['csr'] as String,
      distinguishedName: map['distinguishedName'] == null ? null : map['distinguishedName'] as String,
      domainVerificationToken: map['domainVerificationToken'] as String,
      expirationTime: map['expirationTime'] as String,
      id: map['id'] as String,
      intermediate: CertificateDetailsResponse.fromMap((map['intermediate'] as Map).cast<String, dynamic>()),
      isPrivateKeyExternal: map['isPrivateKeyExternal'] as bool,
      keySize: map['keySize'] == null ? null : map['keySize'] as int,
      kind: map['kind'] == null ? null : map['kind'] as String,
      lastCertificateIssuanceTime: map['lastCertificateIssuanceTime'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      nextAutoRenewalTimeStamp: map['nextAutoRenewalTimeStamp'] as String,
      productType: map['productType'] as String,
      provisioningState: map['provisioningState'] as String,
      root: CertificateDetailsResponse.fromMap((map['root'] as Map).cast<String, dynamic>()),
      serialNumber: map['serialNumber'] as String,
      signedCertificate: CertificateDetailsResponse.fromMap((map['signedCertificate'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      validityInYears: map['validityInYears'] == null ? null : map['validityInYears'] as int,
    );
  }
}

