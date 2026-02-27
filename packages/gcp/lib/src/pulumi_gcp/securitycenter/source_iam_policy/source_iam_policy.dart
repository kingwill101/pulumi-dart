import 'package:pulumi/pulumi.dart';
import 'source_iam_policy_args.dart';

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
/// $ pulumi import gcp:securitycenter/sourceIamPolicy:SourceIamPolicy default organizations/{{organization}}/sources/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/sourceIamPolicy:SourceIamPolicy default {{organization}}/{{name}}
/// ```
class SourceIamPolicy extends CustomResource {
  late final Output<String> etag;

  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  late final Output<String> organization;
  late final Output<String> policyData;
  late final Output<String> source;

  SourceIamPolicy(
    String name, {
    SourceIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/sourceIamPolicy:SourceIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.organization = registerOutput<String>('organization');
    this.policyData = registerOutput<String>('policyData');
    this.source = registerOutput<String>('source');
  }
}
