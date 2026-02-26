import 'package:pulumi/pulumi.dart';
import 'keystore_args.dart';

/// Creates a keystore or truststore. - Keystore: Contains certificates and their associated keys. - Truststore: Contains trusted certificates used to validate a server's certificate. These certificates are typically self-signed certificates or certificates that are not signed by a trusted CA.
class Keystore extends CustomResource {
  /// Aliases in this keystore.
  late final Output<List<String>> aliases;
  late final Output<String> environmentId;

  /// Optional. Name of the keystore. Overrides the value in Keystore.
  late final Output<String> name;
  late final Output<String> organizationId;

  Keystore(
    String name, {
    KeystoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Keystore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.aliases = registerOutput<List<String>>('aliases');
    this.environmentId = registerOutput<String>('environmentId');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
  }
}
