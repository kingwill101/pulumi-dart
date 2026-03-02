// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_association_certificate_settings.dart';
import 'domain_association_sub_domain.dart';

/// {@template pulumi_amplify_domain_association_domain_association_args_doc}
/// The set of arguments for DomainAssociation.
/// {@endtemplate}
/// {@macro pulumi_amplify_domain_association_domain_association_args_doc}
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

  /// Creates a new [DomainAssociationArgs].
  /// [appId] Unique ID for an Amplify app.
  /// [certificateSettings] The type of SSL/TLS certificate to use for your custom domain. If you don't specify a certificate type, Amplify uses the default certificate that it provisions and manages for you.
  /// [domainName] Domain name for the domain association.
  /// [enableAutoSubDomain] Enables the automated creation of subdomains for branches.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subDomains] Setting for the subdomain. Documented below.
  /// [waitForVerification] If enabled, the resource will wait for the domain association status to change to `PENDING_DEPLOYMENT` or `AVAILABLE`. Setting this to `false` will skip the process. Default: `true`.
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
    return <String, dynamic>{
      'appId': appId,
      'certificateSettings': ?pulumi.Input.mapOptionalInputValue<DomainAssociationCertificateSettings, Map<String, dynamic>>(certificateSettings, (value) => value.toMap()),
      'domainName': domainName,
      'enableAutoSubDomain': ?enableAutoSubDomain,
      'region': ?region,
      'subDomains': pulumi.Input.mapInputValue<List<DomainAssociationSubDomain>, List<Map<String, dynamic>>>(subDomains, (value) => pulumi.Input.encodeList<DomainAssociationSubDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'waitForVerification': ?waitForVerification,
    };
  }

  factory DomainAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DomainAssociationArgs(
      appId: (map['appId'] as String).input(),
      certificateSettings: map['certificateSettings'] == null ? null : (DomainAssociationCertificateSettings.fromMap((map['certificateSettings'] as Map).cast<String, dynamic>())).input(),
      domainName: (map['domainName'] as String).input(),
      enableAutoSubDomain: map['enableAutoSubDomain'] == null ? null : (map['enableAutoSubDomain'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      subDomains: (pulumi.Input.decodeList<DomainAssociationSubDomain>(map['subDomains'], (value) => DomainAssociationSubDomain.fromMap((value as Map).cast<String, dynamic>()))).input(),
      waitForVerification: map['waitForVerification'] == null ? null : (map['waitForVerification'] as bool).input(),
    );
  }
}

