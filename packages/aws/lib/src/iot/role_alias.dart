import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_alias_args.dart';

/// Provides an IoT role alias.
///
/// ## Example Usage
///
///
/// ```yaml
/// resources:
///   role:
///     type: aws:iam:Role
///     properties:
///       name: dynamodb-access-role
///       assumeRolePolicy: ${assumeRole.json}
///   alias:
///     type: aws:iot:RoleAlias
///     properties:
///       alias: Thermostat-dynamodb-access-role-alias
///       roleArn: ${role.arn}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         effect: Allow
///         principals:
///           - type: Service
///             identifiers:
///               - credentials.iot.amazonaws.com
///         actions:
///           - sts:AssumeRole
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IOT Role Alias using the alias. For example:
///
/// ```sh
/// $ pulumi import aws:iot/roleAlias:RoleAlias example myalias
/// ```
class RoleAlias extends pulumi.CustomResource {
  /// The name of the role alias.
  late final pulumi.Output<String> alias;

  /// The ARN assigned by AWS to this role alias.
  late final pulumi.Output<String> arn;

  /// The duration of the credential, in seconds. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 900 seconds (15 minutes) to 43200 seconds (12 hours).
  late final pulumi.Output<int?> credentialDuration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The identity of the role to which the alias refers.
  late final pulumi.Output<String> roleArn;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [RoleAlias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleAlias]. {@macro pulumi_iot_role_alias_role_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleAlias(
    String name, {
    RoleAliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/roleAlias:RoleAlias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
