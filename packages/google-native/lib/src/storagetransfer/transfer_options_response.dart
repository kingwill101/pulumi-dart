// ignore_for_file: unused_element, unnecessary_cast

import 'metadata_options_response.dart';

/// TransferOptions define the actions to be performed on objects in a transfer.
class TransferOptionsResponse {
  /// Whether objects should be deleted from the source after they are transferred to the sink. **Note:** This option and delete_objects_unique_in_sink are mutually exclusive.
  final bool deleteObjectsFromSourceAfterTransfer;

  /// Whether objects that exist only in the sink should be deleted. **Note:** This option and delete_objects_from_source_after_transfer are mutually exclusive.
  final bool deleteObjectsUniqueInSink;

  /// Represents the selected metadata options for a transfer job.
  final MetadataOptionsResponse metadataOptions;

  /// When to overwrite objects that already exist in the sink. The default is that only objects that are different from the source are ovewritten. If true, all objects in the sink whose name matches an object in the source are overwritten with the source object.
  final bool overwriteObjectsAlreadyExistingInSink;

  /// When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by overwrite_objects_already_existing_in_sink.
  final String overwriteWhen;

  /// Creates a new [TransferOptionsResponse].
  /// [deleteObjectsFromSourceAfterTransfer] Whether objects should be deleted from the source after they are transferred to the sink. **Note:** This option and delete_objects_unique_in_sink are mutually exclusive.
  /// [deleteObjectsUniqueInSink] Whether objects that exist only in the sink should be deleted. **Note:** This option and delete_objects_from_source_after_transfer are mutually exclusive.
  /// [metadataOptions] Represents the selected metadata options for a transfer job.
  /// [overwriteObjectsAlreadyExistingInSink] When to overwrite objects that already exist in the sink. The default is that only objects that are different from the source are ovewritten. If true, all objects in the sink whose name matches an object in the source are overwritten with the source object.
  /// [overwriteWhen] When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by overwrite_objects_already_existing_in_sink.
  TransferOptionsResponse({
    required this.deleteObjectsFromSourceAfterTransfer,
    required this.deleteObjectsUniqueInSink,
    required this.metadataOptions,
    required this.overwriteObjectsAlreadyExistingInSink,
    required this.overwriteWhen,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deleteObjectsFromSourceAfterTransfer'] =
        deleteObjectsFromSourceAfterTransfer;
    map['deleteObjectsUniqueInSink'] = deleteObjectsUniqueInSink;
    map['metadataOptions'] = metadataOptions.toMap();
    map['overwriteObjectsAlreadyExistingInSink'] =
        overwriteObjectsAlreadyExistingInSink;
    map['overwriteWhen'] = overwriteWhen;
    return map;
  }

  factory TransferOptionsResponse.fromMap(Map<String, dynamic> map) {
    return TransferOptionsResponse(
      deleteObjectsFromSourceAfterTransfer:
          map['deleteObjectsFromSourceAfterTransfer'] as bool,
      deleteObjectsUniqueInSink: map['deleteObjectsUniqueInSink'] as bool,
      metadataOptions: MetadataOptionsResponse.fromMap(
          (map['metadataOptions'] as Map).cast<String, dynamic>()),
      overwriteObjectsAlreadyExistingInSink:
          map['overwriteObjectsAlreadyExistingInSink'] as bool,
      overwriteWhen: map['overwriteWhen'] as String,
    );
  }
}
