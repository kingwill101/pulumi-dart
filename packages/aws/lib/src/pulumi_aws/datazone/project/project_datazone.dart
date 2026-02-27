import 'package:pulumi/pulumi.dart' as pulumi;
import '../project_failure_reason/project_failure_reason.dart';
import '../project_timeouts/project_timeouts.dart';
import 'project_datazone_args.dart';

/// Resource for managing an AWS DataZone Project.
///
/// ## Example Usage
///
///
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DataZone Project using a colon-delimited string combining `domain_id` and `id`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/project:Project example domain-1234:project-1234
/// ```
class ProjectDatazone extends pulumi.CustomResource {
  /// Timestamp of when the project was made.
  late final pulumi.Output<String> createdAt;

  /// Creator of the project.
  late final pulumi.Output<String> createdBy;

  /// Description of project.
  late final pulumi.Output<String?> description;

  /// Identifier of domain which the project is part of. Must follow the regex of `^dzd[-_][a-zA-Z0-9_-]{1,36}$`.
  late final pulumi.Output<String> domainIdentifier;

  /// List of error messages if operation cannot be completed.
  late final pulumi.Output<List<ProjectFailureReason>> failureReasons;

  /// List of glossary terms that can be used in the project. The list cannot be empty or include over 20 values. Each value must follow the regex of `[a-zA-Z0-9_-]{1,36}$`.
  late final pulumi.Output<List<String>?> glossaryTerms;

  /// Timestamp of when the project was last updated.
  late final pulumi.Output<String> lastUpdatedAt;

  /// Name of the project. Must follow the regex of `^[\w -]+$`. and have a length of at most 64.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Enum that conveys state of project. Can be `ACTIVE`, `DELETING`, or `DELETE_FAILED`.
  late final pulumi.Output<String> projectStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Optional flag to delete all child entities within the project.
  late final pulumi.Output<bool?> skipDeletionCheck;
  late final pulumi.Output<ProjectTimeouts?> timeouts;

  ProjectDatazone(
    String name, {
    ProjectDatazoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/project:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.createdBy = registerOutput<String>('createdBy');
    this.description = registerOutput<String?>('description');
    this.domainIdentifier = registerOutput<String>('domainIdentifier');
    this.failureReasons =
        registerOutput<List<ProjectFailureReason>>('failureReasons');
    this.glossaryTerms = registerOutput<List<String>?>('glossaryTerms');
    this.lastUpdatedAt = registerOutput<String>('lastUpdatedAt');
    this.name = registerOutput<String>('name');
    this.projectStatus = registerOutput<String>('projectStatus');
    this.region = registerOutput<String>('region');
    this.skipDeletionCheck = registerOutput<bool?>('skipDeletionCheck');
    this.timeouts = registerOutput<ProjectTimeouts?>('timeouts');
  }
}
