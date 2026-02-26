// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_association_certificate_settings/domain_association_certificate_settings.dart';
import '../domain_association_sub_domain/domain_association_sub_domain.dart';

/// The set of arguments for DomainAssociation.
class DomainAssociationArgs {
  /// Unique ID for an Amplify app.
  final Input<String> appId;

  /// The type of SSL/TLS certificate to use for your custom domain. If you don't specify a certificate type, Amplify uses the default certificate that it provisions and manages for you.
  final Input<DomainAssociationCertificateSettings>? certificateSettings;

  /// Domain name for the domain association.
  final Input<String> domainName;

  /// Enables the automated creation of subdomains for branches.
  final Input<bool>? enableAutoSubDomain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Setting for the subdomain. Documented below.
  final Input<List<DomainAssociationSubDomain>> subDomains;

  /// If enabled, the resource will wait for the domain association status to change to `PENDING_DEPLOYMENT` or `AVAILABLE`. Setting this to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> will skip the process. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? waitForVerification;

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
      map['certificateSettings'] = Input.mapOptionalInputValue<
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
    map['subDomains'] = Input.mapInputValue<List<DomainAssociationSubDomain>,
            List<Map<String, dynamic>>>(
        subDomains,
        (value) =>
            Input.encodeList<DomainAssociationSubDomain, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final waitForVerificationValue = waitForVerification;
    if (waitForVerificationValue != null) {
      map['waitForVerification'] = waitForVerificationValue;
    }
    return map;
  }

  factory DomainAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DomainAssociationArgs(
      appId: Input.asInput<String>(map['appId']),
      certificateSettings:
          Input.asOptionalInput<DomainAssociationCertificateSettings>(
              map['certificateSettings']),
      domainName: Input.asInput<String>(map['domainName']),
      enableAutoSubDomain:
          Input.asOptionalInput<bool>(map['enableAutoSubDomain']),
      region: Input.asOptionalInput<String>(map['region']),
      subDomains:
          Input.asInput<List<DomainAssociationSubDomain>>(map['subDomains']),
      waitForVerification:
          Input.asOptionalInput<bool>(map['waitForVerification']),
    );
  }
}
