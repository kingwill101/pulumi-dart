// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for CodeRepositoryIndex.
class CodeRepositoryIndexArgs {
  /// Required. Id of the Code Repository Index.
  final Input<String> codeRepositoryIndexId;

  /// If set to true, will allow deletion of the CodeRepositoryIndex even if there are existing RepositoryGroups for the resource. These RepositoryGroups will also be deleted.
  final Input<bool>? forceDestroy;

  /// Optional. Immutable. Customer-managed encryption key name, in the format
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final Input<String>? kmsKey;

  /// Optional. Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location of the Code Repository Index, for example `us-central1`.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  CodeRepositoryIndexArgs({
    required this.codeRepositoryIndexId,
    this.forceDestroy,
    this.kmsKey,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['codeRepositoryIndexId'] = codeRepositoryIndexId;
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory CodeRepositoryIndexArgs.fromMap(Map<String, dynamic> map) {
    return CodeRepositoryIndexArgs(
      codeRepositoryIndexId:
          Input.asInput<String>(map['codeRepositoryIndexId']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      kmsKey: Input.asOptionalInput<String>(map['kmsKey']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
