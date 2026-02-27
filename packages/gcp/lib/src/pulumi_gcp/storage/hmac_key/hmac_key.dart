import 'package:pulumi/pulumi.dart' as pulumi;
import 'hmac_key_args.dart';

/// The hmacKeys resource represents an HMAC key within Cloud Storage. The resource
/// consists of a secret and HMAC key metadata. HMAC keys can be used as credentials
/// for service accounts.
///
///
/// To get more information about HmacKey, see:
///
/// * [API documentation](https://cloud.google.com/storage/docs/json_api/v1/projects/hmacKeys)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/storage/docs/authentication/managing-hmackeys)
///
///
///
/// ## Example Usage
///
/// ### Storage Hmac Key
///
///
///
///
/// ## Import
///
/// HmacKey can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/hmacKeys/{{access_id}}`
///
/// * `{{project}}/{{access_id}}`
///
/// * `{{access_id}}`
///
/// When using the `pulumi import` command, HmacKey can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/hmacKey:HmacKey default projects/{{project}}/hmacKeys/{{access_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/hmacKey:HmacKey default {{project}}/{{access_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/hmacKey:HmacKey default {{access_id}}
/// ```
class HmacKey extends pulumi.CustomResource {
  /// The access ID of the HMAC Key.
  late final pulumi.Output<String> accessId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// HMAC secret key material.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> secret;

  /// The email address of the key's associated service account.
  late final pulumi.Output<String> serviceAccountEmail;

  /// The state of the key. Can be set to one of ACTIVE, INACTIVE.
  /// Default value is `ACTIVE`.
  /// Possible values are: `ACTIVE`, `INACTIVE`.
  late final pulumi.Output<String?> state;

  /// 'The creation time of the HMAC key in RFC 3339 format. '
  late final pulumi.Output<String> timeCreated;

  /// 'The last modification time of the HMAC key metadata in RFC 3339 format.'
  late final pulumi.Output<String> updated;

  HmacKey(
    String name, {
    HmacKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/hmacKey:HmacKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessId = registerOutput<String>('accessId');
    this.project = registerOutput<String>('project');
    this.secret = registerOutput<String>('secret');
    this.serviceAccountEmail = registerOutput<String>('serviceAccountEmail');
    this.state = registerOutput<String?>('state');
    this.timeCreated = registerOutput<String>('timeCreated');
    this.updated = registerOutput<String>('updated');
  }
}
