import 'package:pulumi/pulumi.dart';
import 'crypto_key_args.dart';
import 'crypto_key_version_response.dart';
import 'crypto_key_version_template_response.dart';

/// Create a new CryptoKey within a KeyRing. CryptoKey.purpose and CryptoKey.version_template.algorithm are required.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class CryptoKey extends CustomResource {
  /// The time at which this CryptoKey was created.
  late final Output<String> createTime;

  /// Immutable. The resource name of the backend environment where the key material for all CryptoKeyVersions associated with this CryptoKey reside and where all related cryptographic operations are performed. Only applicable if CryptoKeyVersions have a ProtectionLevel of EXTERNAL_VPC, with the resource name in the format `projects/*/locations/*/ekmConnections/*`. Note, this list is non-exhaustive and may apply to additional ProtectionLevels in the future.
  late final Output<String> cryptoKeyBackend;

  /// Required. It must be unique within a KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  late final Output<String> cryptoKeyId;

  /// Immutable. The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED. If not specified at creation time, the default duration is 24 hours.
  late final Output<String> destroyScheduledDuration;

  /// Immutable. Whether this key may contain imported versions only.
  late final Output<bool> importOnly;
  late final Output<String> keyRingId;

  /// Labels with user-defined metadata. For more information, see [Labeling Keys](https://cloud.google.com/kms/docs/labeling-keys).
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource name for this CryptoKey in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  late final Output<String> name;

  /// At next_rotation_time, the Key Management Service will automatically: 1. Create a new version of this CryptoKey. 2. Mark the new version as primary. Key rotations performed manually via CreateCryptoKeyVersion and UpdateCryptoKeyPrimaryVersion do not affect next_rotation_time. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.
  late final Output<String> nextRotationTime;

  /// A copy of the "primary" CryptoKeyVersion that will be used by Encrypt when this CryptoKey is given in EncryptRequest.name. The CryptoKey's primary version can be updated via UpdateCryptoKeyPrimaryVersion. Keys with purpose ENCRYPT_DECRYPT may have a primary. For other keys, this field will be omitted.
  late final Output<CryptoKeyVersionResponse> primary;
  late final Output<String> project;

  /// Immutable. The immutable purpose of this CryptoKey.
  late final Output<String> purpose;

  /// next_rotation_time will be advanced by this period when the service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours. If rotation_period is set, next_rotation_time must also be set. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.
  late final Output<String> rotationPeriod;

  /// If set to true, the request will create a CryptoKey without any CryptoKeyVersions. You must manually call CreateCryptoKeyVersion or ImportCryptoKeyVersion before you can use this CryptoKey.
  late final Output<bool?> skipInitialVersionCreation;

  /// A template describing settings for new CryptoKeyVersion instances. The properties of new CryptoKeyVersion instances created by either CreateCryptoKeyVersion or auto-rotation are controlled by this template.
  late final Output<CryptoKeyVersionTemplateResponse> versionTemplate;

  CryptoKey(
    String name, {
    CryptoKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudkms/v1:CryptoKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.cryptoKeyBackend = Output.createUnknown<String>();
    this.cryptoKeyId = Output.createUnknown<String>();
    this.destroyScheduledDuration = Output.createUnknown<String>();
    this.importOnly = Output.createUnknown<bool>();
    this.keyRingId = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.nextRotationTime = Output.createUnknown<String>();
    this.primary = Output.createUnknown<CryptoKeyVersionResponse>();
    this.project = Output.createUnknown<String>();
    this.purpose = Output.createUnknown<String>();
    this.rotationPeriod = Output.createUnknown<String>();
    this.skipInitialVersionCreation = Output.createUnknown<bool?>();
    this.versionTemplate =
        Output.createUnknown<CryptoKeyVersionTemplateResponse>();
  }
}
