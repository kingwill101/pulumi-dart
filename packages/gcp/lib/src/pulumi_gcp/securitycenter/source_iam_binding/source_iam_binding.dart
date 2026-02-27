import 'package:pulumi/pulumi.dart';
import '../source_iam_binding_condition/source_iam_binding_condition.dart';
import 'source_iam_binding_args.dart';

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
/// $ pulumi import gcp:securitycenter/sourceIamBinding:SourceIamBinding default organizations/{{organization}}/sources/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/sourceIamBinding:SourceIamBinding default {{organization}}/{{name}}
/// ```
class SourceIamBinding extends CustomResource {
  late final Output<SourceIamBindingCondition?> condition;
  late final Output<String> etag;
  late final Output<List<String>> members;

  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  late final Output<String> organization;
  late final Output<String> role;
  late final Output<String> source;

  SourceIamBinding(
    String name, {
    SourceIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/sourceIamBinding:SourceIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = registerOutput<SourceIamBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.members = registerOutput<List<String>>('members');
    this.organization = registerOutput<String>('organization');
    this.role = registerOutput<String>('role');
    this.source = registerOutput<String>('source');
  }
}
