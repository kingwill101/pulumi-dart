import 'package:pulumi/pulumi.dart';
import '../keystores_aliases_pkcs12_certs_info/keystores_aliases_pkcs12_certs_info.dart';
import 'keystores_aliases_pkcs12_args.dart';

/// An alias from a pkcs12 file.
///
/// To get more information about KeystoresAliasesPkcs12, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.keystores.aliases)
/// * How-to Guides
/// * [Keystores Aliases](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.keystores.aliases)
///
/// ## Import
///
/// KeystoresAliasesPkcs12 can be imported using any of these accepted formats:
///
/// * `organizations/{{org_id}}/environments/{{environment}}/keystores/{{keystore}}/aliases/{{alias}}`
///
/// * `{{org_id}}/{{environment}}/{{keystore}}/{{alias}}`
///
/// When using the `pulumi import` command, KeystoresAliasesPkcs12 can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/keystoresAliasesPkcs12:KeystoresAliasesPkcs12 default organizations/{{org_id}}/environments/{{environment}}/keystores/{{keystore}}/aliases/{{alias}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/keystoresAliasesPkcs12:KeystoresAliasesPkcs12 default {{org_id}}/{{environment}}/{{keystore}}/{{alias}}
/// ```
class KeystoresAliasesPkcs12 extends CustomResource {
  /// Alias Name
  late final Output<String> alias;

  /// Chain of certificates under this alias.
  /// Structure is documented below.
  late final Output<List<KeystoresAliasesPkcs12CertsInfo>> certsInfos;

  /// Environment associated with the alias
  late final Output<String> environment;

  /// PKCS12 file content
  ///
  /// - - -
  late final Output<String> file;

  /// Hash of the pkcs file
  late final Output<String> filehash;

  /// Keystore Name
  late final Output<String> keystore;

  /// Organization ID associated with the alias, without organization/ prefix
  late final Output<String> orgId;

  /// Password for the PKCS12 file if it's encrypted
  late final Output<String> password;

  /// Optional.Type of Alias
  late final Output<String> type;

  KeystoresAliasesPkcs12(
    String name, {
    KeystoresAliasesPkcs12Args? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/keystoresAliasesPkcs12:KeystoresAliasesPkcs12',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alias = Output.createUnknown<String>();
    this.certsInfos =
        Output.createUnknown<List<KeystoresAliasesPkcs12CertsInfo>>();
    this.environment = Output.createUnknown<String>();
    this.file = Output.createUnknown<String>();
    this.filehash = Output.createUnknown<String>();
    this.keystore = Output.createUnknown<String>();
    this.orgId = Output.createUnknown<String>();
    this.password = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
  }
}
