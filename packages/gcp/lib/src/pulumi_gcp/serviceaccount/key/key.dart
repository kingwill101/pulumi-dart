import 'package:pulumi/pulumi.dart';
import 'key_args.dart';

/// ## Example Usage
///
/// ### Creating A New Key
///
///
///
///
/// ### Creating And Regularly Rotating A Key
///
///
///
///
/// ### Save Key In Kubernetes Secret - DEPRECATED
///
///
///
/// ## Import
///
/// This resource does not support import.
class Key extends CustomResource {
  /// Arbitrary map of values that, when changed, will trigger a new key to be generated.
  late final Output<Map<String, String>?> keepers;

  /// The algorithm used to generate the key. KEY_ALG_RSA_2048 is the default algorithm.
  /// Valid values are listed at
  /// [ServiceAccountPrivateKeyType](https://cloud.google.com/iam/reference/rest/v1/projects.serviceAccounts.keys#ServiceAccountKeyAlgorithm)
  /// (only used on create)
  late final Output<String?> keyAlgorithm;

  /// The name used for this key pair
  late final Output<String> name;

  /// The private key in JSON format, base64 encoded. This is what you normally get as a file when creating
  /// service account keys through the CLI or web console. This is only populated when creating a new key.
  late final Output<String> privateKey;

  /// The output format of the private key. TYPE_GOOGLE_CREDENTIALS_FILE is the default output format.
  late final Output<String?> privateKeyType;

  /// The public key, base64 encoded
  late final Output<String> publicKey;

  /// Public key data to create a service account key for given service account. The expected format for this field is a base64 encoded X509_PEM and it conflicts with `public_key_type` and `private_key_type`.
  late final Output<String?> publicKeyData;

  /// The output format of the public key requested. TYPE_X509_PEM_FILE is the default output format.
  late final Output<String?> publicKeyType;

  /// The Service account id of the Key. This can be a string in the format
  /// `{ACCOUNT}` or `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. If the `{ACCOUNT}`-only syntax is used, either
  /// the **full** email address of the service account or its name can be specified as a value, in which case the project will
  /// automatically be inferred from the account. Otherwise, if the `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`
  /// syntax is used, the `{ACCOUNT}` specified can be the full email address of the service account or the service account's
  /// unique id. Substituting `-` as a wildcard for the `{PROJECT_ID}` will infer the project from the account.
  late final Output<String> serviceAccountId;

  /// The key can be used after this timestamp. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final Output<String> validAfter;

  /// The key can be used before this timestamp.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final Output<String> validBefore;

  Key(
    String name, {
    KeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:serviceaccount/key:Key',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.keyAlgorithm = registerOutput<String?>('keyAlgorithm');
    this.name = registerOutput<String>('name');
    this.privateKey = registerOutput<String>('privateKey');
    this.privateKeyType = registerOutput<String?>('privateKeyType');
    this.publicKey = registerOutput<String>('publicKey');
    this.publicKeyData = registerOutput<String?>('publicKeyData');
    this.publicKeyType = registerOutput<String?>('publicKeyType');
    this.serviceAccountId = registerOutput<String>('serviceAccountId');
    this.validAfter = registerOutput<String>('validAfter');
    this.validBefore = registerOutput<String>('validBefore');
  }
}
