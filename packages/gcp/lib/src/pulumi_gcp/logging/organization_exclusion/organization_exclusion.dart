import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_exclusion_args.dart';

/// Manages an organization-level logging exclusion. For more information see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/organizations.exclusions)
/// * How-to Guides
/// * [Excluding Logs](https://cloud.google.com/logging/docs/exclusions)
///
/// > You can specify exclusions for log sinks created by the provider by using the exclusions field of `gcp.logging.OrganizationSink`
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Organization-level logging exclusions can be imported using their URI, e.g.
///
/// * `organizations/{{organization}}/exclusions/{{name}}`
///
/// When using the `pulumi import` command, organization-level logging exclusions can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/organizationExclusion:OrganizationExclusion default organizations/{{organization}}/exclusions/{{name}}
/// ```
class OrganizationExclusion extends pulumi.CustomResource {
  /// A human-readable description.
  late final pulumi.Output<String?> description;

  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  late final pulumi.Output<bool?> disabled;

  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  late final pulumi.Output<String> filter;

  /// The name of the logging exclusion.
  late final pulumi.Output<String> name;

  /// The organization to create the exclusion in.
  late final pulumi.Output<String> orgId;

  OrganizationExclusion(
    String name, {
    OrganizationExclusionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/organizationExclusion:OrganizationExclusion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.disabled = registerOutput<bool?>('disabled');
    this.filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
    this.orgId = registerOutput<String>('orgId');
  }
}
