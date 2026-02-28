// ignore_for_file: unused_element, unnecessary_cast


class TransferJobLoggingConfig {
  /// For transfers with a PosixFilesystem source, this option enables the Cloud Storage transfer logs for this transfer.
  final bool? enableOnPremGcsTransferLogs;
  /// States in which logActions are logged. Not supported for transfers with PosifxFilesystem data sources; use enable_on_prem_gcs_transfer_logs instead.
  final List<String>? logActionStates;
  /// Specifies the actions to be logged. Not supported for transfers with PosifxFilesystem data sources; use enable_on_prem_gcs_transfer_logs instead.
  final List<String>? logActions;

  /// Creates a new [TransferJobLoggingConfig].
  /// [enableOnPremGcsTransferLogs] For transfers with a PosixFilesystem source, this option enables the Cloud Storage transfer logs for this transfer.
  /// [logActionStates] States in which logActions are logged. Not supported for transfers with PosifxFilesystem data sources; use enable_on_prem_gcs_transfer_logs instead.
  /// [logActions] Specifies the actions to be logged. Not supported for transfers with PosifxFilesystem data sources; use enable_on_prem_gcs_transfer_logs instead.
  TransferJobLoggingConfig({
    this.enableOnPremGcsTransferLogs,
    this.logActionStates,
    this.logActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableOnPremGcsTransferLogs': ?enableOnPremGcsTransferLogs,
      'logActionStates': ?logActionStates,
      'logActions': ?logActions,
    };
  }

  factory TransferJobLoggingConfig.fromMap(Map<String, dynamic> map) {
    return TransferJobLoggingConfig(
      enableOnPremGcsTransferLogs: map['enableOnPremGcsTransferLogs'] == null ? null : map['enableOnPremGcsTransferLogs'] as bool,
      logActionStates: map['logActionStates'] == null ? null : (map['logActionStates'] as List).cast<String>(),
      logActions: map['logActions'] == null ? null : (map['logActions'] as List).cast<String>(),
    );
  }
}

