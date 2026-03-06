// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_association_certificate_settings.dart';
import 'domain_association_sub_domain.dart';

/// Input properties used for looking up and filtering DomainAssociation resources.
class DomainAssociationState {
  /// Unique ID for an Amplify app.
  final pulumi.Input<String>? appId;
  /// ARN for the domain association.
  final pulumi.Input<String>? arn;
  /// The type of SSL/TLS certificate to use for your custom domain. If you don't specify a certificate type, Amplify uses the default certificate that it provisions and manages for you.
  final pulumi.Input<DomainAssociationCertificateSettings>? certificateSettings;
  /// DNS records for certificate verification in a space-delimited format (`&lt;record&gt; CNAME &lt;target&gt;`).
  final pulumi.Input<String>? certificateVerificationDnsRecord;
  /// Domain name for the domain association.
  final pulumi.Input<String>? domainName;
  /// Enables the automated creation of subdomains for branches.
  final pulumi.Input<bool>? enableAutoSubDomain;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Setting for the subdomain. Documented below.
  final pulumi.Input<List<DomainAssociationSubDomain>>? subDomains;
  /// If enabled, the resource will wait for the domain association status to change to `PENDING_DEPLOYMENT` or `AVAILABLE`. Setting this to `false` will skip the process. Default: `true`.
  final pulumi.Input<bool>? waitForVerification;

  /// Creates a new [DomainAssociationState].
  /// [appId] Unique ID for an Amplify app.
  /// [arn] ARN for the domain association.
  /// [certificateSettings] The type of SSL/TLS certificate to use for your custom domain. If you don't specify a certificate type, Amplify uses the default certificate that it provisions and manages for you.
  /// [certificateVerificationDnsRecord] DNS records for certificate verification in a space-delimited format (`&lt;record&gt; CNAME &lt;target&gt;`).
  /// [domainName] Domain name for the domain association.
  /// [enableAutoSubDomain] Enables the automated creation of subdomains for branches.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subDomains] Setting for the subdomain. Documented below.
  /// [waitForVerification] If enabled, the resource will wait for the domain association status to change to `PENDING_DEPLOYMENT` or `AVAILABLE`. Setting this to `false` will skip the process. Default: `true`.
  const DomainAssociationState({
    this.appId,
    this.arn,
    this.certificateSettings,
    this.certificateVerificationDnsRecord,
    this.domainName,
    this.enableAutoSubDomain,
    this.region,
    this.subDomains,
    this.waitForVerification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'arn': ?arn,
      'certificateSettings': ?pulumi.Input.mapOptionalInputValue<DomainAssociationCertificateSettings, Map<String, dynamic>>(certificateSettings, (value) => value.toMap()),
      'certificateVerificationDnsRecord': ?certificateVerificationDnsRecord,
      'domainName': ?domainName,
      'enableAutoSubDomain': ?enableAutoSubDomain,
      'region': ?region,
      'subDomains': ?pulumi.Input.mapOptionalInputValue<List<DomainAssociationSubDomain>, List<Map<String, dynamic>>>(subDomains, (value) => pulumi.Input.encodeList<DomainAssociationSubDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'waitForVerification': ?waitForVerification,
    };
  }

  factory DomainAssociationState.fromMap(Map<String, dynamic> map) {
    return DomainAssociationState(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateSettings: (() { final guardedValue = map['certificateSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainAssociationCertificateSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificateVerificationDnsRecord: (() { final guardedValue = map['certificateVerificationDnsRecord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAutoSubDomain: (() { final guardedValue = map['enableAutoSubDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subDomains: (() { final guardedValue = map['subDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainAssociationSubDomain>(guardedValue, (value) => DomainAssociationSubDomain.fromMap((value as Map).cast<String, dynamic>()))); })(),
      waitForVerification: (() { final guardedValue = map['waitForVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

