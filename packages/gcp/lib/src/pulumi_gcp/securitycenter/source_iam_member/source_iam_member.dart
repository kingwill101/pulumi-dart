import 'package:pulumi/pulumi.dart' as pulumi;
import '../source_iam_member_condition/source_iam_member_condition.dart';
import 'source_iam_member_args.dart';

/// A Cloud Security Command Center's (Cloud SCC) finding source. A finding
/// source is an entity or a mechanism that can produce a finding. A source is
/// like a container of findings that come from the same scanner, logger,
/// monitor, etc.
///
///
/// To get more information about Source, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v1/organizations.sources)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/security-command-center/docs)
///
/// ## Example Usage
///
/// ### Scc Source Basic
///
///
///
///
/// ## Import
///
/// Source can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/sources/{{name}}`
///
/// * `{{organization}}/{{name}}`
///
/// When using the `pulumi import` command, Source can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/sourceIamMember:SourceIamMember default organizations/{{organization}}/sources/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/sourceIamMember:SourceIamMember default {{organization}}/{{name}}
/// ```
class SourceIamMember extends pulumi.CustomResource {
  late final pulumi.Output<SourceIamMemberCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> member;

  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  late final pulumi.Output<String> organization;
  late final pulumi.Output<String> role;
  late final pulumi.Output<String> source;

  SourceIamMember(
    String name, {
    SourceIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/sourceIamMember:SourceIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<SourceIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.organization = registerOutput<String>('organization');
    this.role = registerOutput<String>('role');
    this.source = registerOutput<String>('source');
  }
}
