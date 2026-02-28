import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_args.dart';
import 'crypto_key_version_response.dart';
import 'crypto_key_version_template_response.dart';

/// Create a new CryptoKey within a KeyRing. CryptoKey.purpose and CryptoKey.version_template.algorithm are required.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class CryptoKey extends pulumi.CustomResource {
  /// The time at which this CryptoKey was created.
  late final pulumi.Output<String> createTime;

  /// Immutable. The resource name of the backend environment where the key material for all CryptoKeyVersions associated with this CryptoKey reside and where all related cryptographic operations are performed. Only applicable if CryptoKeyVersions have a ProtectionLevel of EXTERNAL_VPC, with the resource name in the format `projects/*/locations/*/ekmConnections/*`. Note, this list is non-exhaustive and may apply to additional ProtectionLevels in the future.
  late final pulumi.Output<String> cryptoKeyBackend;

  /// Required. It must be unique within a KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  late final pulumi.Output<String> cryptoKeyId;

  /// Immutable. The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED. If not specified at creation time, the default duration is 24 hours.
  late final pulumi.Output<String> destroyScheduledDuration;

  /// Immutable. Whether this key may contain imported versions only.
  late final pulumi.Output<bool> importOnly;
  late final pulumi.Output<String> keyRingId;

  /// Labels with user-defined metadata. For more information, see [Labeling Keys](https://cloud.google.com/kms/docs/labeling-keys).
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The resource name for this CryptoKey in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  late final pulumi.Output<String> name;

  /// At next_rotation_time, the Key Management Service will automatically: 1. Create a new version of this CryptoKey. 2. Mark the new version as primary. Key rotations performed manually via CreateCryptoKeyVersion and UpdateCryptoKeyPrimaryVersion do not affect next_rotation_time. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.
  late final pulumi.Output<String> nextRotationTime;

  /// A copy of the "primary" CryptoKeyVersion that will be used by Encrypt when this CryptoKey is given in EncryptRequest.name. The CryptoKey's primary version can be updated via UpdateCryptoKeyPrimaryVersion. Keys with purpose ENCRYPT_DECRYPT may have a primary. For other keys, this field will be omitted.
  late final pulumi.Output<CryptoKeyVersionResponse> primary;
  late final pulumi.Output<String> project;

  /// Immutable. The immutable purpose of this CryptoKey.
  late final pulumi.Output<String> purpose;

  /// next_rotation_time will be advanced by this period when the service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours. If rotation_period is set, next_rotation_time must also be set. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.
  late final pulumi.Output<String> rotationPeriod;

  /// If set to true, the request will create a CryptoKey without any CryptoKeyVersions. You must manually call CreateCryptoKeyVersion or ImportCryptoKeyVersion before you can use this CryptoKey.
  late final pulumi.Output<bool?> skipInitialVersionCreation;

  /// A template describing settings for new CryptoKeyVersion instances. The properties of new CryptoKeyVersion instances created by either CreateCryptoKeyVersion or auto-rotation are controlled by this template.
  late final pulumi.Output<CryptoKeyVersionTemplateResponse> versionTemplate;

  /// Creates a new [CryptoKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CryptoKey]. {@macro pulumi_cloudkms_v1_crypto_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CryptoKey(
    String name, {
    CryptoKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudkms/v1:CryptoKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.cryptoKeyBackend = registerOutput<String>('cryptoKeyBackend');
    this.cryptoKeyId = registerOutput<String>('cryptoKeyId');
    this.destroyScheduledDuration =
        registerOutput<String>('destroyScheduledDuration');
    this.importOnly = registerOutput<bool>('importOnly');
    this.keyRingId = registerOutput<String>('keyRingId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.nextRotationTime = registerOutput<String>('nextRotationTime');
    this.primary = registerOutput<CryptoKeyVersionResponse>('primary');
    this.project = registerOutput<String>('project');
    this.purpose = registerOutput<String>('purpose');
    this.rotationPeriod = registerOutput<String>('rotationPeriod');
    this.skipInitialVersionCreation =
        registerOutput<bool?>('skipInitialVersionCreation');
    this.versionTemplate =
        registerOutput<CryptoKeyVersionTemplateResponse>('versionTemplate');
  }
}
