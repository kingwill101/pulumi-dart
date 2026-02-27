// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'replication2.dart';

/// The set of arguments for Secret.
class SecretArgs2 {
  /// The labels assigned to this Secret. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `\p{Ll}\p{Lo}{0,62}` Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}` No more than 64 labels can be assigned to a given resource.
  final Input<Map<String, String>>? labels;
  final Input<String>? project;

  /// Immutable. The replication policy of the secret data attached to the Secret. The replication policy cannot be changed after the Secret has been created.
  final Input<Replication2> replication;

  /// Required. This must be unique within the project. A secret ID is a string with a maximum length of 255 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (`-`) and underscore (`_`) characters.
  final Input<String> secretId;

  SecretArgs2({
    this.labels,
    this.project,
    required this.replication,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['replication'] =
        Input.mapInputValue<Replication2, Map<String, dynamic>>(
            replication, (value) => value.toMap());
    map['secretId'] = secretId;
    return map;
  }

  factory SecretArgs2.fromMap(Map<String, dynamic> map) {
    return SecretArgs2(
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      project: Input.asOptionalInput<String>(map['project']),
      replication: Input.asInput<Replication2>(map['replication']),
      secretId: Input.asInput<String>(map['secretId']),
    );
  }
}
