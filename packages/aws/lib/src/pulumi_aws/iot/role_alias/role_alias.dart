import 'package:pulumi/pulumi.dart';
import 'role_alias_args.dart';

/// Provides an IoT role alias.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IOT Role Alias using the alias. For example:
///
/// ```sh
/// $ pulumi import aws:iot/roleAlias:RoleAlias example myalias
/// ```
class RoleAlias extends CustomResource {
  /// The name of the role alias.
  late final Output<String> alias;

  /// The ARN assigned by AWS to this role alias.
  late final Output<String> arn;

  /// The duration of the credential, in seconds. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 900 seconds (15 minutes) to 43200 seconds (12 hours).
  late final Output<int?> credentialDuration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The identity of the role to which the alias refers.
  late final Output<String> roleArn;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  RoleAlias(
    String name, {
    RoleAliasArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iot/roleAlias:RoleAlias',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alias = registerOutput<String>('alias');
    this.arn = registerOutput<String>('arn');
    this.credentialDuration = registerOutput<int?>('credentialDuration');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
