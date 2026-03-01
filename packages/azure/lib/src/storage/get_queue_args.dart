// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_queue_get_queue_args_doc}
/// Arguments for getQueue.
/// {@endtemplate}
/// {@macro pulumi_storage_get_queue_get_queue_args_doc}
class GetQueueArgs {
  /// A mapping of MetaData for this Queue.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name of the Queue.
  final pulumi.Input<String> name;
  /// The name of the Storage Account where the Queue exists. This property will become Required in version 5.0 of the Provider.
  ///
  /// > **Note:** One of `storage_account_name` or `storage_account_id` must be specified. When specifying `storage_account_id` the resource will use the Resource Manager API, rather than the Data Plane API.
  final pulumi.Input<String>? storageAccountId;
  /// The name of the Storage Account where the Queue exists. This property is deprecated in favour of `storage_account_id`.
  final pulumi.Input<String>? storageAccountName;

  /// Creates a new [GetQueueArgs].
  /// [metadata] A mapping of MetaData for this Queue.
  /// [name] The name of the Queue.
  /// [storageAccountId] The name of the Storage Account where the Queue exists. This property will become Required in version 5.0 of the Provider.
  /// [storageAccountName] The name of the Storage Account where the Queue exists. This property is deprecated in favour of `storage_account_id`.
  GetQueueArgs({
    Map<String, String>? metadata,
    required String name,
    String? storageAccountId,
    String? storageAccountName,
  }) :
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asInput<String>(name),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId),
      storageAccountName = pulumi.Input.asOptionalInput<String>(storageAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata,
      'name': name,
      'storageAccountId': ?storageAccountId,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory GetQueueArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueArgs(
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId'] as String,
      storageAccountName: map['storageAccountName'] == null ? null : map['storageAccountName'] as String,
    );
  }
}

