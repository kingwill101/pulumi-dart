// ignore_for_file: unused_element, unnecessary_cast

class TransferJobLoggingConfig {
  /// For transfers with a PosixFilesystem source, this option enables the Cloud Storage transfer logs for this transfer.
  final bool? enableOnPremGcsTransferLogs;

  /// States in which logActions are logged. Not supported for transfers with PosifxFilesystem data sources; use enable_on_prem_gcs_transfer_logs instead.
  final List<String>? logActionStates;

  /// Specifies the actions to be logged. Not supported for transfers with PosifxFilesystem data sources; use enable_on_prem_gcs_transfer_logs instead.
  final List<String>? logActions;

  TransferJobLoggingConfig({
    this.enableOnPremGcsTransferLogs,
    this.logActionStates,
    this.logActions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableOnPremGcsTransferLogsValue = enableOnPremGcsTransferLogs;
    if (enableOnPremGcsTransferLogsValue != null) {
      map['enableOnPremGcsTransferLogs'] = enableOnPremGcsTransferLogsValue;
    }
    final logActionStatesValue = logActionStates;
    if (logActionStatesValue != null) {
      map['logActionStates'] = logActionStatesValue;
    }
    final logActionsValue = logActions;
    if (logActionsValue != null) {
      map['logActions'] = logActionsValue;
    }
    return map;
  }

  factory TransferJobLoggingConfig.fromMap(Map<String, dynamic> map) {
    return TransferJobLoggingConfig(
      enableOnPremGcsTransferLogs: map['enableOnPremGcsTransferLogs'] == null
          ? null
          : map['enableOnPremGcsTransferLogs'] as bool,
      logActionStates: map['logActionStates'] == null
          ? null
          : (map['logActionStates'] as List).cast<String>(),
      logActions: map['logActions'] == null
          ? null
          : (map['logActions'] as List).cast<String>(),
    );
  }
}
