// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secrets_secret.dart';

/// Result data returned by getSecrets.
class GetSecretsResult {
  final bool? enableDetails;
  final bool? fetchTags;
  final String? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Kms Secret ids. The value is same as KMS secret_name.
  final List<String> ids;
  final String? nameRegex;
  /// A list of KMS Secret names.
  final List<String> names;
  final String? outputFile;
  /// A list of KMS Secrets. Each element contains the following attributes:
  final List<GetSecretsSecret> secrets;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetSecretsResult].
  /// [enableDetails] Optional.
  /// [fetchTags] Optional.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Kms Secret ids. The value is same as KMS secret_name.
  /// [nameRegex] Optional.
  /// [names] A list of KMS Secret names.
  /// [outputFile] Optional.
  /// [secrets] A list of KMS Secrets. Each element contains the following attributes:
  /// [tags] A mapping of tags to assign to the resource.
  GetSecretsResult({
    this.enableDetails,
    this.fetchTags,
    this.filters,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.secrets,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'fetchTags': ?fetchTags,
      'filters': ?filters,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'secrets': pulumi.Input.encodeList<GetSecretsSecret, Map<String, dynamic>>(secrets, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory GetSecretsResult.fromMap(Map<String, dynamic> map) {
    return GetSecretsResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      fetchTags: map['fetchTags'] == null ? null : map['fetchTags'] as bool,
      filters: map['filters'] == null ? null : map['filters'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      secrets: pulumi.Input.decodeList<GetSecretsSecret>(map['secrets'], (value) => GetSecretsSecret.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

