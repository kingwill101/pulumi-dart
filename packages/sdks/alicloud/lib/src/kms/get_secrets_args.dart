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
    this.enableDetails,
    this.fetchTags,
    this.filters,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.tags,
  });

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
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fetchTags: (() { final guardedValue = map['fetchTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

