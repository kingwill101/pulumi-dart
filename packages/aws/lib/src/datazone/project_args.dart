// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_timeouts.dart';

/// {@template pulumi_datazone_project_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_datazone_project_project_args_doc}
class ProjectArgs {
  /// Description of project.
  final pulumi.Input<String>? description;

  /// Identifier of domain which the project is part of. Must follow the regex of `^dzd[-_][a-zA-Z0-9_-]{1,36}$`.
  final pulumi.Input<String> domainIdentifier;

  /// List of glossary terms that can be used in the project. The list cannot be empty or include over 20 values. Each value must follow the regex of `[a-zA-Z0-9_-]{1,36}$`.
  final pulumi.Input<List<String>>? glossaryTerms;

  /// Name of the project. Must follow the regex of `^[\w -]+$`. and have a length of at most 64.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Optional flag to delete all child entities within the project.
  final pulumi.Input<bool>? skipDeletionCheck;
  final pulumi.Input<ProjectTimeouts>? timeouts;

  /// Creates a new [ProjectArgs].
  /// [description] Description of project.
  /// [domainIdentifier] Identifier of domain which the project is part of. Must follow the regex of `^dzd[-_][a-zA-Z0-9_-]{1,36}$`.
  /// [glossaryTerms] List of glossary terms that can be used in the project. The list cannot be empty or include over 20 values. Each value must follow the regex of `[a-zA-Z0-9_-]{1,36}$`.
  /// [name] Name of the project. Must follow the regex of `^[\w -]+$`. and have a length of at most 64.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipDeletionCheck] Optional flag to delete all child entities within the project.
  /// [timeouts] Optional.
  ProjectArgs({
    String? description,
    required String domainIdentifier,
    List<String>? glossaryTerms,
    String? name,
    String? region,
    bool? skipDeletionCheck,
    ProjectTimeouts? timeouts,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        domainIdentifier = pulumi.Input.asInput<String>(domainIdentifier),
        glossaryTerms =
            pulumi.Input.asOptionalInput<List<String>>(glossaryTerms),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        skipDeletionCheck =
            pulumi.Input.asOptionalInput<bool>(skipDeletionCheck),
        timeouts = pulumi.Input.asOptionalInput<ProjectTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['domainIdentifier'] = domainIdentifier;
    final glossaryTermsValue = glossaryTerms;
    if (glossaryTermsValue != null) {
      map['glossaryTerms'] = glossaryTermsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final skipDeletionCheckValue = skipDeletionCheck;
    if (skipDeletionCheckValue != null) {
      map['skipDeletionCheck'] = skipDeletionCheckValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<ProjectTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      domainIdentifier: map['domainIdentifier'] as String,
      glossaryTerms: map['glossaryTerms'] == null
          ? null
          : (map['glossaryTerms'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      skipDeletionCheck: map['skipDeletionCheck'] == null
          ? null
          : map['skipDeletionCheck'] as bool,
      timeouts: map['timeouts'] == null
          ? null
          : ProjectTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
