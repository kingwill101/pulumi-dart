import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_iam_v1_args.dart';

/// Creates a ServiceAccountKey.
/// Auto-naming is currently not supported for this resource.
class KeyIamV1 extends pulumi.CustomResource {
  /// The key status.
  late final pulumi.Output<bool> disabled;

  /// Specifies the algorithm (and possibly key size) for the key.
  late final pulumi.Output<String> keyAlgorithm;

  /// The key origin.
  late final pulumi.Output<String> keyOrigin;

  /// The key type.
  late final pulumi.Output<String> keyType;

  /// The resource name of the service account key in the following format `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}`.
  late final pulumi.Output<String> name;

  /// The private key data. Only provided in `CreateServiceAccountKey` responses. Make sure to keep the private key data secure because it allows for the assertion of the service account identity. When base64 decoded, the private key data can be used to authenticate with Google API client libraries and with gcloud auth activate-service-account.
  late final pulumi.Output<String> privateKeyData;

  /// The output format for the private key. Only provided in `CreateServiceAccountKey` responses, not in `GetServiceAccountKey` or `ListServiceAccountKey` responses. Google never exposes system-managed private keys, and never retains user-managed private keys.
  late final pulumi.Output<String> privateKeyType;
  late final pulumi.Output<String> project;

  /// The public key data. Only provided in `GetServiceAccountKey` responses.
  late final pulumi.Output<String> publicKeyData;
  late final pulumi.Output<String> serviceAccountId;

  /// The key can be used after this timestamp.
  late final pulumi.Output<String> validAfterTime;

  /// The key can be used before this timestamp. For system-managed key pairs, this timestamp is the end time for the private key signing operation. The public key could still be used for verification for a few hours after this time.
  late final pulumi.Output<String> validBeforeTime;

  KeyIamV1(
    String name, {
    KeyIamV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:iam/v1:Key',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.disabled = registerOutput<bool>('disabled');
    this.keyAlgorithm = registerOutput<String>('keyAlgorithm');
    this.keyOrigin = registerOutput<String>('keyOrigin');
    this.keyType = registerOutput<String>('keyType');
    this.name = registerOutput<String>('name');
    this.privateKeyData = registerOutput<String>('privateKeyData');
    this.privateKeyType = registerOutput<String>('privateKeyType');
    this.project = registerOutput<String>('project');
    this.publicKeyData = registerOutput<String>('publicKeyData');
    this.serviceAccountId = registerOutput<String>('serviceAccountId');
    this.validAfterTime = registerOutput<String>('validAfterTime');
    this.validBeforeTime = registerOutput<String>('validBeforeTime');
  }
}
