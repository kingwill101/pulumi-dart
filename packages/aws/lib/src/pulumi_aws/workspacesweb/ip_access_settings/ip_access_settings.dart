import 'package:pulumi/pulumi.dart' as pulumi;
import '../ip_access_settings_ip_rule/ip_access_settings_ip_rule.dart';
import 'ip_access_settings_args.dart';

/// Resource for managing an AWS WorkSpaces Web IP Access Settings resource. Once associated with a web portal, IP access settings control which IP addresses users can connect from.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Multiple IP Rules
///
///
///
/// ### With All Arguments
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web IP Access Settings using the `ip_access_settings_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/ipAccessSettings:IpAccessSettings example arn:aws:workspaces-web:us-west-2:123456789012:ipAccessSettings/abcdef12345
/// ```
class IpAccessSettings extends pulumi.CustomResource {
  /// Additional encryption context for the IP access settings.
  late final pulumi.Output<Map<String, String>?> additionalEncryptionContext;

  /// List of web portal ARNs that this IP access settings resource is associated with.
  late final pulumi.Output<List<String>> associatedPortalArns;

  /// ARN of the customer managed KMS key.
  late final pulumi.Output<String?> customerManagedKey;

  /// The description of the IP access settings.
  late final pulumi.Output<String?> description;

  /// The display name of the IP access settings.
  late final pulumi.Output<String> displayName;

  /// ARN of the IP access settings resource.
  late final pulumi.Output<String> ipAccessSettingsArn;

  /// The IP rules of the IP access settings. See IP Rule below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<IpAccessSettingsIpRule>> ipRules;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  IpAccessSettings(
    String name, {
    IpAccessSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/ipAccessSettings:IpAccessSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalEncryptionContext =
        registerOutput<Map<String, String>?>('additionalEncryptionContext');
    this.associatedPortalArns =
        registerOutput<List<String>>('associatedPortalArns');
    this.customerManagedKey = registerOutput<String?>('customerManagedKey');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.ipAccessSettingsArn = registerOutput<String>('ipAccessSettingsArn');
    this.ipRules = registerOutput<List<IpAccessSettingsIpRule>>('ipRules');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
