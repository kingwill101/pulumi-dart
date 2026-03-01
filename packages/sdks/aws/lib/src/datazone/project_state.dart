// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_failure_reason.dart';
import 'project_timeouts.dart';

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// Timestamp of when the project was made.
  final pulumi.Input<String>? createdAt;
  /// Creator of the project.
  final pulumi.Input<String>? createdBy;
  /// Description of project.
  final pulumi.Input<String>? description;
  /// Identifier of domain which the project is part of. Must follow the regex of `^dzd[-_][a-zA-Z0-9_-]{1,36}$`.
  final pulumi.Input<String>? domainIdentifier;
  /// List of error messages if operation cannot be completed.
  final pulumi.Input<List<ProjectFailureReason>>? failureReasons;
  /// List of glossary terms that can be used in the project. The list cannot be empty or include over 20 values. Each value must follow the regex of `[a-zA-Z0-9_-]{1,36}$`.
  final pulumi.Input<List<String>>? glossaryTerms;
  /// Timestamp of when the project was last updated.
  final pulumi.Input<String>? lastUpdatedAt;
  /// Name of the project. Must follow the regex of `^[\w -]+$`. and have a length of at most 64.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Enum that conveys state of project. Can be `ACTIVE`, `DELETING`, or `DELETE_FAILED`.
  final pulumi.Input<String>? projectStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Optional flag to delete all child entities within the project.
  final pulumi.Input<bool>? skipDeletionCheck;
  final pulumi.Input<ProjectTimeouts>? timeouts;

  /// Creates a new [ProjectState].
  /// [createdAt] Timestamp of when the project was made.
  /// [createdBy] Creator of the project.
  /// [description] Description of project.
  /// [domainIdentifier] Identifier of domain which the project is part of. Must follow the regex of `^dzd[-_][a-zA-Z0-9_-]{1,36}$`.
  /// [failureReasons] List of error messages if operation cannot be completed.
  /// [glossaryTerms] List of glossary terms that can be used in the project. The list cannot be empty or include over 20 values. Each value must follow the regex of `[a-zA-Z0-9_-]{1,36}$`.
  /// [lastUpdatedAt] Timestamp of when the project was last updated.
  /// [name] Name of the project. Must follow the regex of `^[\w -]+$`. and have a length of at most 64.
  /// [projectStatus] Enum that conveys state of project. Can be `ACTIVE`, `DELETING`, or `DELETE_FAILED`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipDeletionCheck] Optional flag to delete all child entities within the project.
  /// [timeouts] Optional.
  ProjectState({
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? createdBy,
    pulumi.Output<String>? description,
    pulumi.Output<String>? domainIdentifier,
    pulumi.Output<List<ProjectFailureReason>>? failureReasons,
    pulumi.Output<List<String>>? glossaryTerms,
    pulumi.Output<String>? lastUpdatedAt,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectStatus,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? skipDeletionCheck,
    pulumi.Output<ProjectTimeouts>? timeouts,
  }) :
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      createdBy = pulumi.Input.asOptionalInput<String>(createdBy),
      description = pulumi.Input.asOptionalInput<String>(description),
      domainIdentifier = pulumi.Input.asOptionalInput<String>(domainIdentifier),
      failureReasons = pulumi.Input.asOptionalInput<List<ProjectFailureReason>>(failureReasons),
      glossaryTerms = pulumi.Input.asOptionalInput<List<String>>(glossaryTerms),
      lastUpdatedAt = pulumi.Input.asOptionalInput<String>(lastUpdatedAt),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectStatus = pulumi.Input.asOptionalInput<String>(projectStatus),
      region = pulumi.Input.asOptionalInput<String>(region),
      skipDeletionCheck = pulumi.Input.asOptionalInput<bool>(skipDeletionCheck),
      timeouts = pulumi.Input.asOptionalInput<ProjectTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'description': ?description,
      'domainIdentifier': ?domainIdentifier,
      'failureReasons': ?pulumi.Input.mapOptionalInputValue<List<ProjectFailureReason>, List<Map<String, dynamic>>>(failureReasons, (value) => pulumi.Input.encodeList<ProjectFailureReason, Map<String, dynamic>>(value, (value) => value.toMap())),
      'glossaryTerms': ?glossaryTerms,
      'lastUpdatedAt': ?lastUpdatedAt,
      'name': ?name,
      'projectStatus': ?projectStatus,
      'region': ?region,
      'skipDeletionCheck': ?skipDeletionCheck,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ProjectTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<String>(map['createdBy'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domainIdentifier: map['domainIdentifier'] == null ? null : pulumi.Output.create<String>(map['domainIdentifier'] as String),
      failureReasons: map['failureReasons'] == null ? null : pulumi.Output.create<List<ProjectFailureReason>>(pulumi.Input.decodeList<ProjectFailureReason>(map['failureReasons'], (value) => ProjectFailureReason.fromMap((value as Map).cast<String, dynamic>()))),
      glossaryTerms: map['glossaryTerms'] == null ? null : pulumi.Output.create<List<String>>((map['glossaryTerms'] as List).cast<String>()),
      lastUpdatedAt: map['lastUpdatedAt'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedAt'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectStatus: map['projectStatus'] == null ? null : pulumi.Output.create<String>(map['projectStatus'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      skipDeletionCheck: map['skipDeletionCheck'] == null ? null : pulumi.Output.create<bool>(map['skipDeletionCheck'] as bool),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ProjectTimeouts>(ProjectTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

