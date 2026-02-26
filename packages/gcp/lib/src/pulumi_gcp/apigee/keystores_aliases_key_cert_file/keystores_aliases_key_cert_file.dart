import 'package:pulumi/pulumi.dart';
import '../keystores_aliases_key_cert_file_certs_info/keystores_aliases_key_cert_file_certs_info.dart';
import '../keystores_aliases_key_cert_file_timeouts/keystores_aliases_key_cert_file_timeouts.dart';
import 'keystores_aliases_key_cert_file_args.dart';

/// An alias from a key/certificate pair.
///
/// To get more information about KeystoresAliasesKeyCertFile, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.keystores.aliases)
/// * How-to Guides
/// * [Keystores Aliases](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.keystores.aliases)
///
/// ## Import
///
/// KeystoresAliasesKeyCertFile can be imported using any of these accepted formats:
///
/// * `organizations/{{org_id}}/environments/{{environment}}/keystores/{{keystore}}/aliases/{{alias}}`
///
/// * `{{org_id}}/{{environment}}/{{keystore}}/{{alias}}`
///
/// When using the `pulumi import` command, KeystoresAliasesKeyCertFile can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/keystoresAliasesKeyCertFile:KeystoresAliasesKeyCertFile default organizations/{{org_id}}/environments/{{environment}}/keystores/{{keystore}}/aliases/{{alias}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/keystoresAliasesKeyCertFile:KeystoresAliasesKeyCertFile default {{org_id}}/{{environment}}/{{keystore}}/{{alias}}
/// ```
class KeystoresAliasesKeyCertFile extends CustomResource {
  /// Alias Name
  late final Output<String> alias;

  /// Cert content
  ///
  ///
  /// - - -
  late final Output<String> cert;

  /// Chain of certificates under this alias.
  /// Structure is documented below.
  late final Output<List<KeystoresAliasesKeyCertFileCertsInfo>> certsInfos;

  /// Environment associated with the alias
  late final Output<String> environment;

  /// Private Key content, omit if uploading to truststore
  late final Output<String?> key;

  /// Keystore Name
  late final Output<String> keystore;

  /// Organization ID associated with the alias, without organization/ prefix
  late final Output<String> orgId;

  /// Password for the Private Key if it's encrypted
  late final Output<String?> password;
  late final Output<KeystoresAliasesKeyCertFileTimeouts?> timeouts;

  /// Optional.Type of Alias
  late final Output<String> type;

  KeystoresAliasesKeyCertFile(
    String name, {
    KeystoresAliasesKeyCertFileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/keystoresAliasesKeyCertFile:KeystoresAliasesKeyCertFile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alias = Output.createUnknown<String>();
    this.cert = Output.createUnknown<String>();
    this.certsInfos =
        Output.createUnknown<List<KeystoresAliasesKeyCertFileCertsInfo>>();
    this.environment = Output.createUnknown<String>();
    this.key = Output.createUnknown<String?>();
    this.keystore = Output.createUnknown<String>();
    this.orgId = Output.createUnknown<String>();
    this.password = Output.createUnknown<String?>();
    this.timeouts =
        Output.createUnknown<KeystoresAliasesKeyCertFileTimeouts?>();
    this.type = Output.createUnknown<String>();
  }
}
