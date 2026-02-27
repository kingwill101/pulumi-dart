import 'package:pulumi/pulumi.dart';
import 'permission_set_args.dart';

/// Provides a Single Sign-On (SSO) Permission Set resource
///
/// > **NOTE:** Updating this resource will automatically [Provision the Permission Set](https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ProvisionPermissionSet.html) to apply the corresponding updates to all assigned accounts.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SSO Permission Sets using the `arn` and `instance_arn` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/permissionSet:PermissionSet example arn:aws:sso:::permissionSet/ssoins-2938j0x8920sbj72/ps-80383020jr9302rk,arn:aws:sso:::instance/ssoins-2938j0x8920sbj72
/// ```
class PermissionSet extends CustomResource {
  /// The Amazon Resource Name (ARN) of the Permission Set.
  late final Output<String> arn;

  /// The date the Permission Set was created in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final Output<String> createdDate;

  /// The description of the Permission Set.
  late final Output<String?> description;

  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  late final Output<String> instanceArn;

  /// The name of the Permission Set.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The relay state URL used to redirect users within the application during the federation authentication process.
  late final Output<String?> relayState;

  /// The length of time that the application user sessions are valid in the ISO-8601 standard. Default: `PT1H`.
  late final Output<String?> sessionDuration;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  PermissionSet(
    String name, {
    PermissionSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/permissionSet:PermissionSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdDate = registerOutput<String>('createdDate');
    this.description = registerOutput<String?>('description');
    this.instanceArn = registerOutput<String>('instanceArn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.relayState = registerOutput<String?>('relayState');
    this.sessionDuration = registerOutput<String?>('sessionDuration');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
