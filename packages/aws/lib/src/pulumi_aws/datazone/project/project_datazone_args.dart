// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../project_timeouts/project_timeouts.dart';

/// The set of arguments for Project.
class ProjectDatazoneArgs {
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

  ProjectDatazoneArgs({
    this.description,
    required this.domainIdentifier,
    this.glossaryTerms,
    this.name,
    this.region,
    this.skipDeletionCheck,
    this.timeouts,
  });

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

  factory ProjectDatazoneArgs.fromMap(Map<String, dynamic> map) {
    return ProjectDatazoneArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      domainIdentifier: pulumi.Input.asInput<String>(map['domainIdentifier']),
      glossaryTerms:
          pulumi.Input.asOptionalInput<List<String>>(map['glossaryTerms']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      skipDeletionCheck:
          pulumi.Input.asOptionalInput<bool>(map['skipDeletionCheck']),
      timeouts: pulumi.Input.asOptionalInput<ProjectTimeouts>(map['timeouts']),
    );
  }
}
