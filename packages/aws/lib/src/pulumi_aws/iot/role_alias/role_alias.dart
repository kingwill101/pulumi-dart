import 'package:pulumi/pulumi.dart';
import 'role_alias_args.dart';

/// Provides an IoT role alias.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```yaml
/// resources:
/// role:
/// type: aws:iam:Role
/// properties:
/// name: dynamodb-access-role
/// assumeRolePolicy: ${assumeRole.json}
/// alias:
/// type: aws:iot:RoleAlias
/// properties:
/// alias: Thermostat-dynamodb-access-role-alias
/// roleArn: ${role.arn}
/// variables:
/// assumeRole:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// effect: Allow
/// principals:
/// - type: Service
/// identifiers:
/// - credentials.iot.amazonaws.com
/// actions:
/// - sts:AssumeRole
/// ```
/// <!--End PulumiCodeChooser -->
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

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
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
    this.alias = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.credentialDuration = Output.createUnknown<int?>();
    this.region = Output.createUnknown<String>();
    this.roleArn = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
