import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_alias_args.dart';
import 'role_alias_state.dart';

/// Provides an IoT role alias.
///
/// ## Example Usage
///
///
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   effect = "Allow"
///   principals = [{
///     "type"        = "Service"
///     "identifiers" = ["credentials.iot.amazonaws.com"]
///   }]
///   actions = ["sts:AssumeRole"]
/// }
///
/// resource "aws_iam_role" "role" {
///   name               = "dynamodb-access-role"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_iot_rolealias" "alias" {
///   alias    = "Thermostat-dynamodb-access-role-alias"
///   role_arn = aws_iam_role.role.arn
/// }
/// ```
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
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
    alias = registerOutput<String>('alias');
    arn = registerOutput<String>('arn');
    credentialDuration = registerOutput<int?>('credentialDuration');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [RoleAlias] resource's state with the given [name] and [id].
  static RoleAlias get(
    String name,
    pulumi.Input<String> id, {
    RoleAliasState? state,
  }) {
    return RoleAlias._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RoleAlias._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/roleAlias:RoleAlias',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alias = registerOutput<String>('alias');
    arn = registerOutput<String>('arn');
    credentialDuration = registerOutput<int?>('credentialDuration');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
