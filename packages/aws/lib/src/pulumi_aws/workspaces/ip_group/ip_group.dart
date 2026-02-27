import 'package:pulumi/pulumi.dart';
import '../ip_group_rule/ip_group_rule.dart';
import 'ip_group_args.dart';

/// Provides an IP access control group in AWS WorkSpaces Service
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces IP groups using their GroupID. For example:
///
/// ```sh
/// $ pulumi import aws:workspaces/ipGroup:IpGroup example wsipg-488lrtl3k
/// ```
class IpGroup extends CustomResource {
  /// The description of the IP group.
  late final Output<String?> description;

  /// The name of the IP group.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// One or more pairs specifying the IP group rule (in CIDR format) from which web requests originate.
  late final Output<List<IpGroupRule>?> rules;

  /// A map of tags assigned to the WorkSpaces directory. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  IpGroup(
    String name, {
    IpGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspaces/ipGroup:IpGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.rules = registerOutput<List<IpGroupRule>?>('rules');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
