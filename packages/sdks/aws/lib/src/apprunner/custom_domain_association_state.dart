// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_association_certificate_validation_record.dart';

/// Input properties used for looking up and filtering CustomDomainAssociation resources.
class CustomDomainAssociationState {
  /// A set of certificate CNAME records used for this domain name. See Certificate Validation Records below for more details.
  final pulumi.Input<List<CustomDomainAssociationCertificateValidationRecord>>? certificateValidationRecords;
  /// App Runner subdomain of the App Runner service. The custom domain name is mapped to this target name. Attribute only available if resource created (not imported) with this provider.
  final pulumi.Input<String>? dnsTarget;
  /// Custom domain endpoint to association. Specify a base domain e.g., `example.com` or a subdomain e.g., `subdomain.example.com`.
  final pulumi.Input<String>? domainName;
  /// Whether to associate the subdomain with the App Runner service in addition to the base domain. Defaults to `true`.
  final pulumi.Input<bool>? enableWwwSubdomain;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the App Runner service.
  final pulumi.Input<String>? serviceArn;
  /// Current state of the certificate CNAME record validation. It should change to `SUCCESS` after App Runner completes validation with your DNS.
  final pulumi.Input<String>? status;

  /// Creates a new [CustomDomainAssociationState].
  /// [certificateValidationRecords] A set of certificate CNAME records used for this domain name. See Certificate Validation Records below for more details.
  /// [dnsTarget] App Runner subdomain of the App Runner service. The custom domain name is mapped to this target name. Attribute only available if resource created (not imported) with this provider.
  /// [domainName] Custom domain endpoint to association. Specify a base domain e.g., `example.com` or a subdomain e.g., `subdomain.example.com`.
  /// [enableWwwSubdomain] Whether to associate the subdomain with the App Runner service in addition to the base domain. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceArn] ARN of the App Runner service.
  /// [status] Current state of the certificate CNAME record validation. It should change to `SUCCESS` after App Runner completes validation with your DNS.
  CustomDomainAssociationState({
    pulumi.Output<List<CustomDomainAssociationCertificateValidationRecord>>? certificateValidationRecords,
    pulumi.Output<String>? dnsTarget,
    pulumi.Output<String>? domainName,
    pulumi.Output<bool>? enableWwwSubdomain,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceArn,
    pulumi.Output<String>? status,
  }) :
      certificateValidationRecords = pulumi.Input.asOptionalInput<List<CustomDomainAssociationCertificateValidationRecord>>(certificateValidationRecords),
      dnsTarget = pulumi.Input.asOptionalInput<String>(dnsTarget),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      enableWwwSubdomain = pulumi.Input.asOptionalInput<bool>(enableWwwSubdomain),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceArn = pulumi.Input.asOptionalInput<String>(serviceArn),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      certificateValidationRecords: map['certificateValidationRecords'] == null ? null : pulumi.Output.create<List<CustomDomainAssociationCertificateValidationRecord>>(pulumi.Input.decodeList<CustomDomainAssociationCertificateValidationRecord>(map['certificateValidationRecords'], (value) => CustomDomainAssociationCertificateValidationRecord.fromMap((value as Map).cast<String, dynamic>()))),
      dnsTarget: map['dnsTarget'] == null ? null : pulumi.Output.create<String>(map['dnsTarget'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      enableWwwSubdomain: map['enableWwwSubdomain'] == null ? null : pulumi.Output.create<bool>(map['enableWwwSubdomain'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceArn: map['serviceArn'] == null ? null : pulumi.Output.create<String>(map['serviceArn'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

