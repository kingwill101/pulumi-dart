// ignore_for_file: unused_element, unnecessary_cast

import '../transfer_job_replication_spec_gcs_data_sink/transfer_job_replication_spec_gcs_data_sink.dart';
import '../transfer_job_replication_spec_gcs_data_source/transfer_job_replication_spec_gcs_data_source.dart';
import '../transfer_job_replication_spec_object_conditions/transfer_job_replication_spec_object_conditions.dart';
import '../transfer_job_replication_spec_transfer_options/transfer_job_replication_spec_transfer_options.dart';

class TransferJobReplicationSpec {
  /// A Google Cloud Storage data sink. Structure documented below.
  final TransferJobReplicationSpecGcsDataSink? gcsDataSink;

  /// A Google Cloud Storage data source. Structure documented below.
  final TransferJobReplicationSpecGcsDataSource? gcsDataSource;

  /// Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects' <span pulumi-lang-nodejs="`lastModificationTime`" pulumi-lang-dotnet="`LastModificationTime`" pulumi-lang-go="`lastModificationTime`" pulumi-lang-python="`last_modification_time`" pulumi-lang-yaml="`lastModificationTime`" pulumi-lang-java="`lastModificationTime`">`last_modification_time`</span> do not exclude objects in a data sink. Structure documented below.
  final TransferJobReplicationSpecObjectConditions? objectConditions;

  /// Characteristics of how to treat files from datasource and sink during job. If the option <span pulumi-lang-nodejs="`deleteObjectsUniqueInSink`" pulumi-lang-dotnet="`DeleteObjectsUniqueInSink`" pulumi-lang-go="`deleteObjectsUniqueInSink`" pulumi-lang-python="`delete_objects_unique_in_sink`" pulumi-lang-yaml="`deleteObjectsUniqueInSink`" pulumi-lang-java="`deleteObjectsUniqueInSink`">`delete_objects_unique_in_sink`</span> is true, object conditions based on objects' <span pulumi-lang-nodejs="`lastModificationTime`" pulumi-lang-dotnet="`LastModificationTime`" pulumi-lang-go="`lastModificationTime`" pulumi-lang-python="`last_modification_time`" pulumi-lang-yaml="`lastModificationTime`" pulumi-lang-java="`lastModificationTime`">`last_modification_time`</span> are ignored and do not exclude objects in a data source or a data sink. Structure documented below.
  final TransferJobReplicationSpecTransferOptions? transferOptions;

  TransferJobReplicationSpec({
    this.gcsDataSink,
    this.gcsDataSource,
    this.objectConditions,
    this.transferOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gcsDataSinkValue = gcsDataSink;
    if (gcsDataSinkValue != null) {
      map['gcsDataSink'] = gcsDataSinkValue.toMap();
    }
    final gcsDataSourceValue = gcsDataSource;
    if (gcsDataSourceValue != null) {
      map['gcsDataSource'] = gcsDataSourceValue.toMap();
    }
    final objectConditionsValue = objectConditions;
    if (objectConditionsValue != null) {
      map['objectConditions'] = objectConditionsValue.toMap();
    }
    final transferOptionsValue = transferOptions;
    if (transferOptionsValue != null) {
      map['transferOptions'] = transferOptionsValue.toMap();
    }
    return map;
  }

  factory TransferJobReplicationSpec.fromMap(Map<String, dynamic> map) {
    return TransferJobReplicationSpec(
      gcsDataSink: map['gcsDataSink'] == null
          ? null
          : TransferJobReplicationSpecGcsDataSink.fromMap(
              (map['gcsDataSink'] as Map).cast<String, dynamic>()),
      gcsDataSource: map['gcsDataSource'] == null
          ? null
          : TransferJobReplicationSpecGcsDataSource.fromMap(
              (map['gcsDataSource'] as Map).cast<String, dynamic>()),
      objectConditions: map['objectConditions'] == null
          ? null
          : TransferJobReplicationSpecObjectConditions.fromMap(
              (map['objectConditions'] as Map).cast<String, dynamic>()),
      transferOptions: map['transferOptions'] == null
          ? null
          : TransferJobReplicationSpecTransferOptions.fromMap(
              (map['transferOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
