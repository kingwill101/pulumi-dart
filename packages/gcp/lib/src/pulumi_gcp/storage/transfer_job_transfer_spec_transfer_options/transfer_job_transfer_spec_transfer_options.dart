// ignore_for_file: unused_element, unnecessary_cast

import '../transfer_job_transfer_spec_transfer_options_metadata_options/transfer_job_transfer_spec_transfer_options_metadata_options.dart';

class TransferJobTransferSpecTransferOptions {
  /// Whether objects should be deleted from the source after they are transferred to the sink. Note that this option and <span pulumi-lang-nodejs="`deleteObjectsUniqueInSink`" pulumi-lang-dotnet="`DeleteObjectsUniqueInSink`" pulumi-lang-go="`deleteObjectsUniqueInSink`" pulumi-lang-python="`delete_objects_unique_in_sink`" pulumi-lang-yaml="`deleteObjectsUniqueInSink`" pulumi-lang-java="`deleteObjectsUniqueInSink`">`delete_objects_unique_in_sink`</span> are mutually exclusive.
  final bool? deleteObjectsFromSourceAfterTransfer;

  /// Whether objects that exist only in the sink should be deleted. Note that this option and
  /// <span pulumi-lang-nodejs="`deleteObjectsFromSourceAfterTransfer`" pulumi-lang-dotnet="`DeleteObjectsFromSourceAfterTransfer`" pulumi-lang-go="`deleteObjectsFromSourceAfterTransfer`" pulumi-lang-python="`delete_objects_from_source_after_transfer`" pulumi-lang-yaml="`deleteObjectsFromSourceAfterTransfer`" pulumi-lang-java="`deleteObjectsFromSourceAfterTransfer`">`delete_objects_from_source_after_transfer`</span> are mutually exclusive.
  final bool? deleteObjectsUniqueInSink;

  /// Specifies the metadata options for running a transfer. Structure documented below.
  final TransferJobTransferSpecTransferOptionsMetadataOptions? metadataOptions;

  /// Whether overwriting objects that already exist in the sink is allowed.
  final bool? overwriteObjectsAlreadyExistingInSink;

  /// When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by <span pulumi-lang-nodejs="`overwriteObjectsAlreadyExistingInSink`" pulumi-lang-dotnet="`OverwriteObjectsAlreadyExistingInSink`" pulumi-lang-go="`overwriteObjectsAlreadyExistingInSink`" pulumi-lang-python="`overwrite_objects_already_existing_in_sink`" pulumi-lang-yaml="`overwriteObjectsAlreadyExistingInSink`" pulumi-lang-java="`overwriteObjectsAlreadyExistingInSink`">`overwrite_objects_already_existing_in_sink`</span>. Possible values: ALWAYS, DIFFERENT, NEVER.
  final String? overwriteWhen;

  TransferJobTransferSpecTransferOptions({
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
      map['overwriteWhen'] = overwriteWhenValue;
    }
    return map;
  }

  factory TransferJobTransferSpecTransferOptions.fromMap(
      Map<String, dynamic> map) {
    return TransferJobTransferSpecTransferOptions(
      deleteObjectsFromSourceAfterTransfer:
          map['deleteObjectsFromSourceAfterTransfer'] == null
              ? null
              : map['deleteObjectsFromSourceAfterTransfer'] as bool,
      deleteObjectsUniqueInSink: map['deleteObjectsUniqueInSink'] == null
          ? null
          : map['deleteObjectsUniqueInSink'] as bool,
      metadataOptions: map['metadataOptions'] == null
          ? null
          : TransferJobTransferSpecTransferOptionsMetadataOptions.fromMap(
              (map['metadataOptions'] as Map).cast<String, dynamic>()),
      overwriteObjectsAlreadyExistingInSink:
          map['overwriteObjectsAlreadyExistingInSink'] == null
              ? null
              : map['overwriteObjectsAlreadyExistingInSink'] as bool,
      overwriteWhen:
          map['overwriteWhen'] == null ? null : map['overwriteWhen'] as String,
    );
  }
}
