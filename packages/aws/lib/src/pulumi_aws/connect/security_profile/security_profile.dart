import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_args.dart';

/// Provides an Amazon Connect Security Profile resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Security Profiles using the `instance_id` and `security_profile_id` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/securityProfile:SecurityProfile example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class SecurityProfile extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the Security Profile.
  late final pulumi.Output<String> arn;

  /// Specifies the description of the Security Profile.
  late final pulumi.Output<String?> description;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final pulumi.Output<String> instanceId;

  /// Specifies the name of the Security Profile.
  late final pulumi.Output<String> name;

  /// The organization resource identifier for the security profile.
  late final pulumi.Output<String> organizationResourceId;

  /// Specifies a list of permissions assigned to the security profile.
  late final pulumi.Output<List<String>?> permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The identifier for the Security Profile.
  late final pulumi.Output<String> securityProfileId;

  /// Tags to apply to the Security Profile. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  SecurityProfile(
    String name, {
    SecurityProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/securityProfile:SecurityProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.organizationResourceId =
        registerOutput<String>('organizationResourceId');
    this.permissions = registerOutput<List<String>?>('permissions');
    this.region = registerOutput<String>('region');
    this.securityProfileId = registerOutput<String>('securityProfileId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
