// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_association_certificate_validation_record.dart';

/// Input properties used for looking up and filtering CustomDomainAssociation resources.
class CustomDomainAssociationState {
  /// Set of certificate CNAME records used for this domain name. See `certificateValidationRecords` Block below for more details.
  final pulumi.Input<List<CustomDomainAssociationCertificateValidationRecord>?>? certificateValidationRecords;
  /// App Runner subdomain of the App Runner service. The custom domain name is mapped to this target name. Attribute only available if resource created (not imported) with this provider.
  final pulumi.Input<String?>? dnsTarget;
  /// Custom domain endpoint to association. Specify a base domain e.g., `example.com` or a subdomain e.g., `subdomain.example.com`.
  final pulumi.Input<String?>? domainName;
  /// Whether to associate the subdomain with the App Runner service in addition to the base domain. Defaults to `true`.
  final pulumi.Input<bool?>? enableWwwSubdomain;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the App Runner service.
  final pulumi.Input<String?>? serviceArn;
  /// Current state of the certificate CNAME record validation. It should change to `SUCCESS` after App Runner completes validation with your DNS.
  final pulumi.Input<String?>? status;

  /// Creates a new [CustomDomainAssociationState].
  /// [certificateValidationRecords] Set of certificate CNAME records used for this domain name. See `certificateValidationRecords` Block below for more details.
  /// [dnsTarget] App Runner subdomain of the App Runner service. The custom domain name is mapped to this target name. Attribute only available if resource created (not imported) with this provider.
  /// [domainName] Custom domain endpoint to association. Specify a base domain e.g., `example.com` or a subdomain e.g., `subdomain.example.com`.
  /// [enableWwwSubdomain] Whether to associate the subdomain with the App Runner service in addition to the base domain. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceArn] ARN of the App Runner service.
  /// [status] Current state of the certificate CNAME record validation. It should change to `SUCCESS` after App Runner completes validation with your DNS.
  const CustomDomainAssociationState({
    this.certificateValidationRecords,
    this.dnsTarget,
    this.domainName,
    this.enableWwwSubdomain,
    this.region,
    this.serviceArn,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateValidationRecords': ?pulumi.Input.mapOptionalInputValue<List<CustomDomainAssociationCertificateValidationRecord>, List<Map<String, dynamic>>>(certificateValidationRecords, (value) => pulumi.Input.encodeList<CustomDomainAssociationCertificateValidationRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsTarget': ?dnsTarget,
      'domainName': ?domainName,
      'enableWwwSubdomain': ?enableWwwSubdomain,
      'region': ?region,
      'serviceArn': ?serviceArn,
      'status': ?status,
    };
  }

  factory CustomDomainAssociationState.fromMap(Map<String, dynamic> map) {
    return CustomDomainAssociationState(
      certificateValidationRecords: (() { final guardedValue = map['certificateValidationRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomDomainAssociationCertificateValidationRecord>(guardedValue, (value) => CustomDomainAssociationCertificateValidationRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dnsTarget: (() { final guardedValue = map['dnsTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableWwwSubdomain: (() { final guardedValue = map['enableWwwSubdomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceArn: (() { final guardedValue = map['serviceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
