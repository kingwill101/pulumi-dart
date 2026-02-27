import 'package:pulumi/pulumi.dart' as pulumi;
import '../keystores_aliases_self_signed_cert_certs_info/keystores_aliases_self_signed_cert_certs_info.dart';
import '../keystores_aliases_self_signed_cert_subject/keystores_aliases_self_signed_cert_subject.dart';
import '../keystores_aliases_self_signed_cert_subject_alternative_dns_names/keystores_aliases_self_signed_cert_subject_alternative_dns_names.dart';
import 'keystores_aliases_self_signed_cert_args.dart';

/// An Environment Keystore Alias for Self Signed Certificate Format in Apigee
///
///
/// To get more information about KeystoresAliasesSelfSignedCert, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.keystores.aliases/create)
/// * How-to Guides
/// * [Creating an environment](https://cloud.google.com/apigee/docs/api-platform/get-started/create-environment)
///
/// ## Example Usage
///
/// ### Apigee Env Keystore Alias Self Signed Cert
///
///
///
///
/// ## Import
///
/// KeystoresAliasesSelfSignedCert can be imported using any of these accepted formats:
///
/// * `organizations/{{org_id}}/environments/{{environment}}/keystores/{{keystore}}/aliases/{{alias}}`
///
/// * `{{org_id}}/{{environment}}/{{keystore}}/{{alias}}`
///
/// When using the `pulumi import` command, KeystoresAliasesSelfSignedCert can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/keystoresAliasesSelfSignedCert:KeystoresAliasesSelfSignedCert default organizations/{{org_id}}/environments/{{environment}}/keystores/{{keystore}}/aliases/{{alias}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/keystoresAliasesSelfSignedCert:KeystoresAliasesSelfSignedCert default {{org_id}}/{{environment}}/{{keystore}}/{{alias}}
/// ```
class KeystoresAliasesSelfSignedCert extends pulumi.CustomResource {
  /// Alias for the key/certificate pair. Values must match the regular expression [\w\s-.]{1,255}.
  /// This must be provided for all formats except selfsignedcert; self-signed certs may specify the alias in either
  /// this parameter or the JSON body.
  late final pulumi.Output<String> alias;

  /// Validity duration of certificate, in days. Accepts positive non-zero value. Defaults to 365.
  late final pulumi.Output<int?> certValidityInDays;

  /// Chain of certificates under this alias.
  /// Structure is documented below.
  late final pulumi.Output<List<KeystoresAliasesSelfSignedCertCertsInfo>>
      certsInfos;

  /// The Apigee environment name
  late final pulumi.Output<String> environment;

  /// Key size. Default and maximum value is 2048 bits.
  late final pulumi.Output<String?> keySize;

  /// The Apigee keystore name associated in an Apigee environment
  late final pulumi.Output<String> keystore;

  /// The Apigee Organization name associated with the Apigee environment
  late final pulumi.Output<String> orgId;

  /// Signature algorithm to generate private key. Valid values are SHA512withRSA, SHA384withRSA, and SHA256withRSA
  late final pulumi.Output<String> sigAlg;

  /// Subject details.
  /// Structure is documented below.
  late final pulumi.Output<KeystoresAliasesSelfSignedCertSubject> subject;

  /// List of alternative host names. Maximum length is 255 characters for each value.
  /// Structure is documented below.
  late final pulumi
      .Output<KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames?>
      subjectAlternativeDnsNames;

  /// Optional.Type of Alias
  late final pulumi.Output<String> type;

  KeystoresAliasesSelfSignedCert(
    String name, {
    KeystoresAliasesSelfSignedCertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/keystoresAliasesSelfSignedCert:KeystoresAliasesSelfSignedCert',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alias = registerOutput<String>('alias');
    this.certValidityInDays = registerOutput<int?>('certValidityInDays');
    this.certsInfos =
        registerOutput<List<KeystoresAliasesSelfSignedCertCertsInfo>>(
            'certsInfos');
    this.environment = registerOutput<String>('environment');
    this.keySize = registerOutput<String?>('keySize');
    this.keystore = registerOutput<String>('keystore');
    this.orgId = registerOutput<String>('orgId');
    this.sigAlg = registerOutput<String>('sigAlg');
    this.subject =
        registerOutput<KeystoresAliasesSelfSignedCertSubject>('subject');
    this.subjectAlternativeDnsNames = registerOutput<
            KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames?>(
        'subjectAlternativeDnsNames');
    this.type = registerOutput<String>('type');
  }
}
