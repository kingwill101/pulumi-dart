// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_keys_get_keys_args_doc}
/// Arguments for getKeys.
/// {@endtemplate}
/// {@macro pulumi_kms_get_keys_get_keys_args_doc}
class GetKeysArgs {
  /// A regex string to filter the results by the KMS key description.
  final pulumi.Input<String>? descriptionRegex;
  /// Default to `true`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// The CMK filter. The filter consists of one or more key-value pairs.
  /// You can specify a maximum of 10 key-value pairs. More details see API [ListKeys](https://www.alibabacloud.com/help/en/key-management-service/latest/listkeys).
  final pulumi.Input<String>? filters;
  /// A list of KMS key IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Filter the results by status of the KMS keys. Valid values: `Enabled`, `Disabled`, `PendingDeletion`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetKeysArgs].
  /// [descriptionRegex] A regex string to filter the results by the KMS key description.
  /// [enableDetails] Default to `true`. Set it to `true` can output more details about resource attributes.
  /// [filters] The CMK filter. The filter consists of one or more key-value pairs.
  /// [ids] A list of KMS key IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] Filter the results by status of the KMS keys. Valid values: `Enabled`, `Disabled`, `PendingDeletion`.
  const GetKeysArgs({
    this.descriptionRegex,
    this.enableDetails,
    this.filters,
    this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptionRegex': ?descriptionRegex,
      'enableDetails': ?enableDetails,
      'filters': ?filters,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetKeysArgs(
      descriptionRegex: (() { final guardedValue = map['descriptionRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

