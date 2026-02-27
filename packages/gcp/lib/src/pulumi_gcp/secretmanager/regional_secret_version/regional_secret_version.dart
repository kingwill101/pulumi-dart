import 'package:pulumi/pulumi.dart' as pulumi;
import '../regional_secret_version_customer_managed_encryption/regional_secret_version_customer_managed_encryption.dart';
import 'regional_secret_version_args.dart';

/// ## Example Usage
///
/// ### Regional Secret Version Basic
///
///
///
/// ### Regional Secret Version With Base64 Data
///
///
///
/// ### Regional Secret Version Disabled
///
///
///
/// ### Regional Secret Version Deletion Policy Abandon
///
///
///
/// ### Regional Secret Version Deletion Policy Disable
///
///
///
///
/// ## Import
///
/// RegionalSecretVersion can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}/versions/{{version}}`
///
/// When using the `pulumi import` command, RegionalSecretVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:secretmanager/regionalSecretVersion:RegionalSecretVersion default projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}/versions/{{version}}
/// ```
class RegionalSecretVersion extends pulumi.CustomResource {
  /// The time at which the regional secret version was created.
  late final pulumi.Output<String> createTime;

  /// The customer-managed encryption configuration of the regional secret.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionalSecretVersionCustomerManagedEncryption>>
      customerManagedEncryptions;

  /// The deletion policy for the regional secret version. Setting `ABANDON` allows the resource
  /// to be abandoned rather than deleted. Setting `DISABLE` allows the resource to be
  /// disabled rather than deleted. Default is `DELETE`. Possible values are:
  /// * DELETE
  /// * DISABLE
  /// * ABANDON
  late final pulumi.Output<String?> deletionPolicy;

  /// The time at which the regional secret version was destroyed. Only present if state is DESTROYED.
  late final pulumi.Output<String> destroyTime;

  /// The current state of the regional secret version.
  late final pulumi.Output<bool?> enabled;

  /// If set to 'true', the secret data is expected to be base64-encoded string and would be sent as is.
  late final pulumi.Output<bool?> isSecretDataBase64;

  /// Location of Secret Manager regional secret resource.
  late final pulumi.Output<String> location;

  /// The resource name of the regional secret version. Format:
  /// `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}/versions/{{version}}`
  late final pulumi.Output<String> name;

  /// Secret Manager regional secret resource.
  late final pulumi.Output<String> secret;

  /// The secret data. Must be no larger than 64KiB.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> secretData;

  /// The version of the Regional Secret.
  late final pulumi.Output<String> version;

  RegionalSecretVersion(
    String name, {
    RegionalSecretVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:secretmanager/regionalSecretVersion:RegionalSecretVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.customerManagedEncryptions =
        registerOutput<List<RegionalSecretVersionCustomerManagedEncryption>>(
            'customerManagedEncryptions');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.destroyTime = registerOutput<String>('destroyTime');
    this.enabled = registerOutput<bool?>('enabled');
    this.isSecretDataBase64 = registerOutput<bool?>('isSecretDataBase64');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.secret = registerOutput<String>('secret');
    this.secretData = registerOutput<String>('secretData');
    this.version = registerOutput<String>('version');
  }
}
