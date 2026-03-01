// ignore_for_file: unused_element, unnecessary_cast

import 'transfer_job_replication_spec_gcs_data_sink.dart';
import 'transfer_job_replication_spec_gcs_data_source.dart';
import 'transfer_job_replication_spec_object_conditions.dart';
import 'transfer_job_replication_spec_transfer_options.dart';

class TransferJobReplicationSpec {
  /// A Google Cloud Storage data sink. Structure documented below.
  final TransferJobReplicationSpecGcsDataSink? gcsDataSink;

  /// A Google Cloud Storage data source. Structure documented below.
  final TransferJobReplicationSpecGcsDataSource? gcsDataSource;

  /// Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects' `last_modification_time` do not exclude objects in a data sink. Structure documented below.
  final TransferJobReplicationSpecObjectConditions? objectConditions;

  /// Characteristics of how to treat files from datasource and sink during job. If the option `delete_objects_unique_in_sink` is true, object conditions based on objects' `last_modification_time` are ignored and do not exclude objects in a data source or a data sink. Structure documented below.
  final TransferJobReplicationSpecTransferOptions? transferOptions;

  /// Creates a new [TransferJobReplicationSpec].
  /// [gcsDataSink] A Google Cloud Storage data sink. Structure documented below.
  /// [gcsDataSource] A Google Cloud Storage data source. Structure documented below.
  /// [objectConditions] Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects' `last_modification_time` do not exclude objects in a data sink. Structure documented below.
  /// [transferOptions] Characteristics of how to treat files from datasource and sink during job. If the option `delete_objects_unique_in_sink` is true, object conditions based on objects' `last_modification_time` are ignored and do not exclude objects in a data source or a data sink. Structure documented below.
  TransferJobReplicationSpec({
    this.gcsDataSink,
    this.gcsDataSource,
    this.objectConditions,
    this.transferOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcsDataSink': ?gcsDataSink == null ? null : gcsDataSink!.toMap(),
      'gcsDataSource': ?gcsDataSource == null ? null : gcsDataSource!.toMap(),
      'objectConditions': ?objectConditions == null
          ? null
          : objectConditions!.toMap(),
      'transferOptions': ?transferOptions == null
          ? null
          : transferOptions!.toMap(),
    };
  }

  factory TransferJobReplicationSpec.fromMap(Map<String, dynamic> map) {
    return TransferJobReplicationSpec(
      gcsDataSink: map['gcsDataSink'] == null
          ? null
          : TransferJobReplicationSpecGcsDataSink.fromMap(
              (map['gcsDataSink'] as Map).cast<String, dynamic>(),
            ),
      gcsDataSource: map['gcsDataSource'] == null
          ? null
          : TransferJobReplicationSpecGcsDataSource.fromMap(
              (map['gcsDataSource'] as Map).cast<String, dynamic>(),
            ),
      objectConditions: map['objectConditions'] == null
          ? null
          : TransferJobReplicationSpecObjectConditions.fromMap(
              (map['objectConditions'] as Map).cast<String, dynamic>(),
            ),
      transferOptions: map['transferOptions'] == null
          ? null
          : TransferJobReplicationSpecTransferOptions.fromMap(
              (map['transferOptions'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
