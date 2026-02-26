// ignore_for_file: unused_element, unnecessary_cast

import 'metadata_options.dart';
import 'transfer_options_overwrite_when.dart';

/// TransferOptions define the actions to be performed on objects in a transfer.
class TransferOptions {
  /// Whether objects should be deleted from the source after they are transferred to the sink. **Note:** This option and delete_objects_unique_in_sink are mutually exclusive.
  final bool? deleteObjectsFromSourceAfterTransfer;

  /// Whether objects that exist only in the sink should be deleted. **Note:** This option and delete_objects_from_source_after_transfer are mutually exclusive.
  final bool? deleteObjectsUniqueInSink;

  /// Represents the selected metadata options for a transfer job.
  final MetadataOptions? metadataOptions;

  /// When to overwrite objects that already exist in the sink. The default is that only objects that are different from the source are ovewritten. If true, all objects in the sink whose name matches an object in the source are overwritten with the source object.
  final bool? overwriteObjectsAlreadyExistingInSink;

  /// When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by overwrite_objects_already_existing_in_sink.
  final TransferOptionsOverwriteWhen? overwriteWhen;

  TransferOptions({
    this.deleteObjectsFromSourceAfterTransfer,
    this.deleteObjectsUniqueInSink,
    this.metadataOptions,
    this.overwriteObjectsAlreadyExistingInSink,
    this.overwriteWhen,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteObjectsFromSourceAfterTransferValue =
        deleteObjectsFromSourceAfterTransfer;
    if (deleteObjectsFromSourceAfterTransferValue != null) {
      map['deleteObjectsFromSourceAfterTransfer'] =
          deleteObjectsFromSourceAfterTransferValue;
    }
    final deleteObjectsUniqueInSinkValue = deleteObjectsUniqueInSink;
    if (deleteObjectsUniqueInSinkValue != null) {
      map['deleteObjectsUniqueInSink'] = deleteObjectsUniqueInSinkValue;
    }
    final metadataOptionsValue = metadataOptions;
    if (metadataOptionsValue != null) {
      map['metadataOptions'] = metadataOptionsValue.toMap();
    }
    final overwriteObjectsAlreadyExistingInSinkValue =
        overwriteObjectsAlreadyExistingInSink;
    if (overwriteObjectsAlreadyExistingInSinkValue != null) {
      map['overwriteObjectsAlreadyExistingInSink'] =
          overwriteObjectsAlreadyExistingInSinkValue;
    }
    final overwriteWhenValue = overwriteWhen;
    if (overwriteWhenValue != null) {
      map['overwriteWhen'] = overwriteWhenValue.value;
    }
    return map;
  }

  factory TransferOptions.fromMap(Map<String, dynamic> map) {
    return TransferOptions(
      deleteObjectsFromSourceAfterTransfer:
          map['deleteObjectsFromSourceAfterTransfer'] == null
              ? null
              : map['deleteObjectsFromSourceAfterTransfer'] as bool,
      deleteObjectsUniqueInSink: map['deleteObjectsUniqueInSink'] == null
          ? null
          : map['deleteObjectsUniqueInSink'] as bool,
      metadataOptions: map['metadataOptions'] == null
          ? null
          : MetadataOptions.fromMap(
              (map['metadataOptions'] as Map).cast<String, dynamic>()),
      overwriteObjectsAlreadyExistingInSink:
          map['overwriteObjectsAlreadyExistingInSink'] == null
              ? null
              : map['overwriteObjectsAlreadyExistingInSink'] as bool,
      overwriteWhen: map['overwriteWhen'] == null
          ? null
          : TransferOptionsOverwriteWhen.fromValue(
              map['overwriteWhen'] as String),
    );
  }
}
