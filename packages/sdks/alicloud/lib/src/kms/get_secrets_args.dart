// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_secrets_get_secrets_args_doc}
/// Arguments for getSecrets.
/// {@endtemplate}
/// {@macro pulumi_kms_get_secrets_get_secrets_args_doc}
class GetSecretsArgs {
  /// Default to `false`. Set it to true can output more details.
  final pulumi.Input<bool>? enableDetails;
  /// Whether to include the predetermined resource tag in the return value. Default to `false`.
  final pulumi.Input<bool>? fetchTags;
  /// The secret filter. The filter consists of one or more key-value pairs.
  /// More details see API [ListSecrets](https://www.alibabacloud.com/help/en/key-management-service/latest/listsecrets).
  final pulumi.Input<String>? filters;
  /// A list of KMS Secret ids. The value is same as KMS secret_name.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter the results by the KMS secret_name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// A mapping of tags to assign to the resource, and can be used to filter secrets.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSecretsArgs].
  /// [enableDetails] Default to `false`. Set it to true can output more details.
  /// [fetchTags] Whether to include the predetermined resource tag in the return value. Default to `false`.
  /// [filters] The secret filter. The filter consists of one or more key-value pairs.
  /// [ids] A list of KMS Secret ids. The value is same as KMS secret_name.
  /// [nameRegex] A regex string to filter the results by the KMS secret_name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [tags] A mapping of tags to assign to the resource, and can be used to filter secrets.
  GetSecretsArgs({
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<bool>? fetchTags,
    pulumi.Output<String>? filters,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      fetchTags = pulumi.Input.asOptionalInput<bool>(fetchTags),
      filters = pulumi.Input.asOptionalInput<String>(filters),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'fetchTags': ?fetchTags,
      'filters': ?filters,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetSecretsArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretsArgs(
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      fetchTags: map['fetchTags'] == null ? null : pulumi.Output.create<bool>(map['fetchTags'] as bool),
      filters: map['filters'] == null ? null : pulumi.Output.create<String>(map['filters'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

