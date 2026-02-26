// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../project_timeouts/project_timeouts.dart';

/// The set of arguments for Project.
class ProjectArgs3 {
  /// Description of project.
  final Input<String>? description;

  /// Identifier of domain which the project is part of. Must follow the regex of `^dzd[-_][a-zA-Z0-9_-]{1,36}$`.
  final Input<String> domainIdentifier;

  /// List of glossary terms that can be used in the project. The list cannot be empty or include over 20 values. Each value must follow the regex of `[a-zA-Z0-9_-]{1,36}$`.
  final Input<List<String>>? glossaryTerms;

  /// Name of the project. Must follow the regex of `^[\w -]+$`. and have a length of at most 64.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Optional flag to delete all child entities within the project.
  final Input<bool>? skipDeletionCheck;
  final Input<ProjectTimeouts>? timeouts;

  ProjectArgs3({
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
      map['timeouts'] =
          Input.mapOptionalInputValue<ProjectTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ProjectArgs3.fromMap(Map<String, dynamic> map) {
    return ProjectArgs3(
      description: Input.asOptionalInput<String>(map['description']),
      domainIdentifier: Input.asInput<String>(map['domainIdentifier']),
      glossaryTerms: Input.asOptionalInput<List<String>>(map['glossaryTerms']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      skipDeletionCheck: Input.asOptionalInput<bool>(map['skipDeletionCheck']),
      timeouts: Input.asOptionalInput<ProjectTimeouts>(map['timeouts']),
    );
  }
}
