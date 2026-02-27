// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_association_certificate_settings/domain_association_certificate_settings.dart';
import '../domain_association_sub_domain/domain_association_sub_domain.dart';

/// The set of arguments for DomainAssociation.
class DomainAssociationArgs {
  /// Unique ID for an Amplify app.
  final pulumi.Input<String> appId;

  /// The type of SSL/TLS certificate to use for your custom domain. If you don't specify a certificate type, Amplify uses the default certificate that it provisions and manages for you.
  final pulumi.Input<DomainAssociationCertificateSettings>? certificateSettings;

  /// Domain name for the domain association.
  final pulumi.Input<String> domainName;

  /// Enables the automated creation of subdomains for branches.
  final pulumi.Input<bool>? enableAutoSubDomain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Setting for the subdomain. Documented below.
  final pulumi.Input<List<DomainAssociationSubDomain>> subDomains;

  /// If enabled, the resource will wait for the domain association status to change to `PENDING_DEPLOYMENT` or `AVAILABLE`. Setting this to `false` will skip the process. Default: `true`.
  final pulumi.Input<bool>? waitForVerification;

  DomainAssociationArgs({
    required this.appId,
    this.certificateSettings,
    required this.domainName,
    this.enableAutoSubDomain,
    this.region,
    required this.subDomains,
    this.waitForVerification,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final certificateSettingsValue = certificateSettings;
    if (certificateSettingsValue != null) {
      map['certificateSettings'] = pulumi.Input.mapOptionalInputValue<
              DomainAssociationCertificateSettings, Map<String, dynamic>>(
          certificateSettingsValue, (value) => value.toMap());
    }
    map['domainName'] = domainName;
    final enableAutoSubDomainValue = enableAutoSubDomain;
    if (enableAutoSubDomainValue != null) {
      map['enableAutoSubDomain'] = enableAutoSubDomainValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['subDomains'] = pulumi.Input.mapInputValue<
            List<DomainAssociationSubDomain>, List<Map<String, dynamic>>>(
        subDomains,
        (value) => pulumi.Input.encodeList<DomainAssociationSubDomain,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final waitForVerificationValue = waitForVerification;
    if (waitForVerificationValue != null) {
      map['waitForVerification'] = waitForVerificationValue;
    }
    return map;
  }

  factory DomainAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DomainAssociationArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      certificateSettings:
          pulumi.Input.asOptionalInput<DomainAssociationCertificateSettings>(
              map['certificateSettings']),
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      enableAutoSubDomain:
          pulumi.Input.asOptionalInput<bool>(map['enableAutoSubDomain']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      subDomains: pulumi.Input.asInput<List<DomainAssociationSubDomain>>(
          map['subDomains']),
      waitForVerification:
          pulumi.Input.asOptionalInput<bool>(map['waitForVerification']),
    );
  }
}
