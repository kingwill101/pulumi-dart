import 'package:pulumi/pulumi.dart';
import 'hmac_key_args.dart';

/// Creates a new HMAC key for the specified service account.
/// Auto-naming is currently not supported for this resource.
class HmacKey extends CustomResource {
  /// The ID of the HMAC Key.
  late final Output<String> accessId;

  /// HTTP 1.1 Entity tag for the HMAC key.
  late final Output<String> etag;

  /// The kind of item this is. For HMAC Key metadata, this is always storage#hmacKeyMetadata.
  late final Output<String> kind;
  late final Output<String> project;

  /// The link to this resource.
  late final Output<String> selfLink;

  /// Email address of the service account.
  late final Output<String> serviceAccountEmail;

  /// The state of the key. Can be one of ACTIVE, INACTIVE, or DELETED.
  late final Output<String> state;

  /// The creation time of the HMAC key in RFC 3339 format.
  late final Output<String> timeCreated;

  /// The last modification time of the HMAC key metadata in RFC 3339 format.
  late final Output<String> updated;

  /// The project to be billed for this request.
  late final Output<String?> userProject;

  HmacKey(
    String name, {
    HmacKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:storage/v1:HmacKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessId = registerOutput<String>('accessId');
    this.etag = registerOutput<String>('etag');
    this.kind = registerOutput<String>('kind');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.serviceAccountEmail = registerOutput<String>('serviceAccountEmail');
    this.state = registerOutput<String>('state');
    this.timeCreated = registerOutput<String>('timeCreated');
    this.updated = registerOutput<String>('updated');
    this.userProject = registerOutput<String?>('userProject');
  }
}
