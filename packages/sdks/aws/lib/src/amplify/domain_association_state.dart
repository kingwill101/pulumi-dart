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
  /// DNS records for certificate verification in a space-delimited format (`<record> CNAME <target>`).
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
  /// [certificateVerificationDnsRecord] DNS records for certificate verification in a space-delimited format (`<record> CNAME <target>`).
  /// [domainName] Domain name for the domain association.
  /// [enableAutoSubDomain] Enables the automated creation of subdomains for branches.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subDomains] Setting for the subdomain. Documented below.
  /// [waitForVerification] If enabled, the resource will wait for the domain association status to change to `PENDING_DEPLOYMENT` or `AVAILABLE`. Setting this to `false` will skip the process. Default: `true`.
  DomainAssociationState({
    pulumi.Output<String>? appId,
    pulumi.Output<String>? arn,
    pulumi.Output<DomainAssociationCertificateSettings>? certificateSettings,
    pulumi.Output<String>? certificateVerificationDnsRecord,
    pulumi.Output<String>? domainName,
    pulumi.Output<bool>? enableAutoSubDomain,
    pulumi.Output<String>? region,
    pulumi.Output<List<DomainAssociationSubDomain>>? subDomains,
    pulumi.Output<bool>? waitForVerification,
  }) :
      appId = pulumi.Input.asOptionalInput<String>(appId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      certificateSettings = pulumi.Input.asOptionalInput<DomainAssociationCertificateSettings>(certificateSettings),
      certificateVerificationDnsRecord = pulumi.Input.asOptionalInput<String>(certificateVerificationDnsRecord),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      enableAutoSubDomain = pulumi.Input.asOptionalInput<bool>(enableAutoSubDomain),
      region = pulumi.Input.asOptionalInput<String>(region),
      subDomains = pulumi.Input.asOptionalInput<List<DomainAssociationSubDomain>>(subDomains),
      waitForVerification = pulumi.Input.asOptionalInput<bool>(waitForVerification);

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
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      certificateSettings: map['certificateSettings'] == null ? null : pulumi.Output.create<DomainAssociationCertificateSettings>(DomainAssociationCertificateSettings.fromMap((map['certificateSettings'] as Map).cast<String, dynamic>())),
      certificateVerificationDnsRecord: map['certificateVerificationDnsRecord'] == null ? null : pulumi.Output.create<String>(map['certificateVerificationDnsRecord'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      enableAutoSubDomain: map['enableAutoSubDomain'] == null ? null : pulumi.Output.create<bool>(map['enableAutoSubDomain'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subDomains: map['subDomains'] == null ? null : pulumi.Output.create<List<DomainAssociationSubDomain>>(pulumi.Input.decodeList<DomainAssociationSubDomain>(map['subDomains'], (value) => DomainAssociationSubDomain.fromMap((value as Map).cast<String, dynamic>()))),
      waitForVerification: map['waitForVerification'] == null ? null : pulumi.Output.create<bool>(map['waitForVerification'] as bool),
    );
  }
}

