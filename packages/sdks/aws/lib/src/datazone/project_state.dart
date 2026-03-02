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
    this.createdAt,
    this.createdBy,
    this.description,
    this.domainIdentifier,
    this.failureReasons,
    this.glossaryTerms,
    this.lastUpdatedAt,
    this.name,
    this.projectStatus,
    this.region,
    this.skipDeletionCheck,
    this.timeouts,
  });

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
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      createdBy: map['createdBy'] == null ? null : ((map['createdBy'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      domainIdentifier: map['domainIdentifier'] == null ? null : ((map['domainIdentifier'] as String).input()).input(),
      failureReasons: map['failureReasons'] == null ? null : ((pulumi.Input.decodeList<ProjectFailureReason>(map['failureReasons']!, (value) => ProjectFailureReason.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      glossaryTerms: map['glossaryTerms'] == null ? null : (((map['glossaryTerms'] as List).cast<String>()).input()).input(),
      lastUpdatedAt: map['lastUpdatedAt'] == null ? null : ((map['lastUpdatedAt'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      projectStatus: map['projectStatus'] == null ? null : ((map['projectStatus'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      skipDeletionCheck: map['skipDeletionCheck'] == null ? null : ((map['skipDeletionCheck'] as bool).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((ProjectTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

