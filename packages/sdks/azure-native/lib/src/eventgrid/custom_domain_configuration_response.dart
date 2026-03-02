// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_identity_response.dart';

/// A custom domain configuration that allows users to publish to their own domain name.
class CustomDomainConfigurationResponse {
  /// The URL for the certificate that is used for publishing to the custom domain. We currently support certificates stored in Azure Key Vault only. While certificate URL can be either
  /// versioned URL of the following format https://{key-vault-name}.vault.azure.net/certificates/{certificate-name}/{version-id}, or unversioned URL of the following format (e.g.,
  /// https://contosovault.vault.azure.net/certificates/contosocert, we support unversioned certificate URL only (e.g., https://contosovault.vault.azure.net/certificates/contosocert)
  final pulumi.Input<String>? certificateUrl;
  /// Expected DNS TXT record name. Event Grid will check for a TXT record with this name in the DNS record set of the custom domain name to prove ownership over the domain.
  /// The values under this TXT record must contain the expected TXT record value.
  final pulumi.Input<String>? expectedTxtRecordName;
  /// Expected DNS TXT record value. Event Grid will check for a TXT record with this value in the DNS record set of the custom domain name to prove ownership over the domain.
  final pulumi.Input<String>? expectedTxtRecordValue;
  /// Fully Qualified Domain Name (FQDN) for the custom domain.
  final pulumi.Input<String> fullyQualifiedDomainName;
  /// Identity info for accessing the certificate for the custom domain. This identity info must match an identity that has been set on the namespace.
  final pulumi.Input<CustomDomainIdentityResponse>? identity;
  /// Validation state for the custom domain. This is a read only property and is initially set to 'Pending' and will be updated to 'Approved' by Event Grid only after ownership of the domain name has been successfully validated.
  final pulumi.Input<String>? validationState;

  /// Creates a new [CustomDomainConfigurationResponse].
  /// [certificateUrl] The URL for the certificate that is used for publishing to the custom domain. We currently support certificates stored in Azure Key Vault only. While certificate URL can be either
  /// [expectedTxtRecordName] Expected DNS TXT record name. Event Grid will check for a TXT record with this name in the DNS record set of the custom domain name to prove ownership over the domain.
  /// [expectedTxtRecordValue] Expected DNS TXT record value. Event Grid will check for a TXT record with this value in the DNS record set of the custom domain name to prove ownership over the domain.
  /// [fullyQualifiedDomainName] Fully Qualified Domain Name (FQDN) for the custom domain.
  /// [identity] Identity info for accessing the certificate for the custom domain. This identity info must match an identity that has been set on the namespace.
  /// [validationState] Validation state for the custom domain. This is a read only property and is initially set to 'Pending' and will be updated to 'Approved' by Event Grid only after ownership of the domain name has been successfully validated.
  CustomDomainConfigurationResponse({
    this.certificateUrl,
    this.expectedTxtRecordName,
    this.expectedTxtRecordValue,
    required this.fullyQualifiedDomainName,
    this.identity,
    this.validationState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateUrl': ?certificateUrl,
      'expectedTxtRecordName': ?expectedTxtRecordName,
      'expectedTxtRecordValue': ?expectedTxtRecordValue,
      'fullyQualifiedDomainName': fullyQualifiedDomainName,
      'identity': ?pulumi.Input.mapOptionalInputValue<CustomDomainIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'validationState': ?validationState,
    };
  }

  factory CustomDomainConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CustomDomainConfigurationResponse(
      certificateUrl: map['certificateUrl'] == null ? null : (map['certificateUrl'] as String).input(),
      expectedTxtRecordName: map['expectedTxtRecordName'] == null ? null : (map['expectedTxtRecordName'] as String).input(),
      expectedTxtRecordValue: map['expectedTxtRecordValue'] == null ? null : (map['expectedTxtRecordValue'] as String).input(),
      fullyQualifiedDomainName: (map['fullyQualifiedDomainName'] as String).input(),
      identity: map['identity'] == null ? null : (CustomDomainIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      validationState: map['validationState'] == null ? null : (map['validationState'] as String).input(),
    );
  }
}

