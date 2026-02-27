import 'package:pulumi/pulumi.dart';
import '../field_level_encryption_profile_encryption_entities/field_level_encryption_profile_encryption_entities.dart';
import 'field_level_encryption_profile_args.dart';

/// Provides a CloudFront Field-level Encryption Profile resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudfront Field Level Encryption Profile using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/fieldLevelEncryptionProfile:FieldLevelEncryptionProfile profile K3D5EWEUDCCXON
/// ```
class FieldLevelEncryptionProfile extends CustomResource {
  /// The Field Level Encryption Profile ARN.
  late final Output<String> arn;

  /// Internal value used by CloudFront to allow future updates to the Field Level Encryption Profile.
  late final Output<String> callerReference;

  /// An optional comment about the Field Level Encryption Profile.
  late final Output<String?> comment;

  /// The encryption entities config block for field-level encryption profiles that contains an attribute `items` which includes the encryption key and field pattern specifications.
  late final Output<FieldLevelEncryptionProfileEncryptionEntities>
      encryptionEntities;

  /// The current version of the Field Level Encryption Profile. For example: `E2QWRUHAPOMQZL`.
  late final Output<String> etag;

  /// The name of the Field Level Encryption Profile.
  late final Output<String> name;

  FieldLevelEncryptionProfile(
    String name, {
    FieldLevelEncryptionProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/fieldLevelEncryptionProfile:FieldLevelEncryptionProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.callerReference = registerOutput<String>('callerReference');
    this.comment = registerOutput<String?>('comment');
    this.encryptionEntities =
        registerOutput<FieldLevelEncryptionProfileEncryptionEntities>(
            'encryptionEntities');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
  }
}
