import 'package:pulumi/pulumi.dart';
import 'key_args2.dart';

/// Creates a ServiceAccountKey.
/// Auto-naming is currently not supported for this resource.
class Key2 extends CustomResource {
  /// The key status.
  late final Output<bool> disabled;

  /// Specifies the algorithm (and possibly key size) for the key.
  late final Output<String> keyAlgorithm;

  /// The key origin.
  late final Output<String> keyOrigin;

  /// The key type.
  late final Output<String> keyType;

  /// The resource name of the service account key in the following format `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}`.
  late final Output<String> name;

  /// The private key data. Only provided in `CreateServiceAccountKey` responses. Make sure to keep the private key data secure because it allows for the assertion of the service account identity. When base64 decoded, the private key data can be used to authenticate with Google API client libraries and with gcloud auth activate-service-account.
  late final Output<String> privateKeyData;

  /// The output format for the private key. Only provided in `CreateServiceAccountKey` responses, not in `GetServiceAccountKey` or `ListServiceAccountKey` responses. Google never exposes system-managed private keys, and never retains user-managed private keys.
  late final Output<String> privateKeyType;
  late final Output<String> project;

  /// The public key data. Only provided in `GetServiceAccountKey` responses.
  late final Output<String> publicKeyData;
  late final Output<String> serviceAccountId;

  /// The key can be used after this timestamp.
  late final Output<String> validAfterTime;

  /// The key can be used before this timestamp. For system-managed key pairs, this timestamp is the end time for the private key signing operation. The public key could still be used for verification for a few hours after this time.
  late final Output<String> validBeforeTime;

  Key2(
    String name, {
    KeyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:iam/v1:Key',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.disabled = Output.createUnknown<bool>();
    this.keyAlgorithm = Output.createUnknown<String>();
    this.keyOrigin = Output.createUnknown<String>();
    this.keyType = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.privateKeyData = Output.createUnknown<String>();
    this.privateKeyType = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.publicKeyData = Output.createUnknown<String>();
    this.serviceAccountId = Output.createUnknown<String>();
    this.validAfterTime = Output.createUnknown<String>();
    this.validBeforeTime = Output.createUnknown<String>();
  }
}
