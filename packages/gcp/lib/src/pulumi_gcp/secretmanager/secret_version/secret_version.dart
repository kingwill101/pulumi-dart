import 'package:pulumi/pulumi.dart';
import 'secret_version_args.dart';

/// A secret version resource.
///
///
/// To get more information about SecretVersion, see:
///
/// * [API documentation](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.secrets.versions)
/// * How-to Guides
/// * [Create and deploy a Secret Version](https://cloud.google.com/secret-manager/docs/add-secret-version)
///
///
///
/// > **Note:**  All arguments marked as write-only values will not be stored in the state: `secret_data_wo`.
/// Read more about Write-only Arguments.
///
/// ## Example Usage
///
/// ### Secret Version Basic
///
///
///
/// ### Secret Version Basic Write Only
///
///
///
/// ### Secret Version Deletion Policy Abandon
///
///
///
/// ### Secret Version Deletion Policy Disable
///
///
///
/// ### Secret Version With Base64 String Secret Data
///
///
///
/// ### Secret Version With Base64 String Secret Data Write Only
///
///
///
///
/// ## Import
///
/// SecretVersion can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/secrets/{{secret_id}}/versions/{{version}}`
///
/// When using the `pulumi import` command, SecretVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:secretmanager/secretVersion:SecretVersion default projects/{{project}}/secrets/{{secret_id}}/versions/{{version}}
/// ```
class SecretVersion extends CustomResource {
  /// The time at which the Secret was created.
  late final Output<String> createTime;

  /// The deletion policy for the secret version. Setting `ABANDON` allows the resource
  /// to be abandoned rather than deleted. Setting `DISABLE` allows the resource to be
  /// disabled rather than deleted. Default is `DELETE`. Possible values are:
  /// * DELETE
  /// * DISABLE
  /// * ABANDON
  late final Output<String?> deletionPolicy;

  /// The time at which the Secret was destroyed. Only present if state is DESTROYED.
  late final Output<String> destroyTime;

  /// The current state of the SecretVersion.
  late final Output<bool?> enabled;

  /// If set to 'true', the secret data is expected to be base64-encoded string and would be sent as is.
  late final Output<bool?> isSecretDataBase64;

  /// The resource name of the SecretVersion. Format:
  /// `projects/{{project}}/secrets/{{secret_id}}/versions/{{version}}`
  late final Output<String> name;

  /// The ID of the project in which the resource belongs. If it is not provided,
  /// the provider project is used
  late final Output<String> project;

  /// Secret Manager secret resource
  late final Output<String> secret;

  /// The secret data. Must be no larger than 64KiB.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final Output<String?> secretData;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// The secret data. Must be no larger than 64KiB. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// > **Note:** One of `secret_data` or `secret_data_wo` can only be set.
  late final Output<String?> secretDataWo;

  /// Triggers update of secret data write-only. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  late final Output<int?> secretDataWoVersion;

  /// The version of the Secret.
  late final Output<String> version;

  SecretVersion(
    String name, {
    SecretVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:secretmanager/secretVersion:SecretVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.destroyTime = registerOutput<String>('destroyTime');
    this.enabled = registerOutput<bool?>('enabled');
    this.isSecretDataBase64 = registerOutput<bool?>('isSecretDataBase64');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.secret = registerOutput<String>('secret');
    this.secretData = registerOutput<String?>('secretData');
    this.secretDataWo = registerOutput<String?>('secretDataWo');
    this.secretDataWoVersion = registerOutput<int?>('secretDataWoVersion');
    this.version = registerOutput<String>('version');
  }
}
