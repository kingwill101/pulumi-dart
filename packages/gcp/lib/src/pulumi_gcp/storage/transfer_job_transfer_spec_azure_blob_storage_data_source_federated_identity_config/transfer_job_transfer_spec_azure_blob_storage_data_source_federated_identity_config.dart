// ignore_for_file: unused_element, unnecessary_cast

class TransferJobTransferSpecAzureBlobStorageDataSourceFederatedIdentityConfig {
  /// The client (application) ID of the application with federated credentials.
  final String clientId;

  /// The client (directory) ID of the application with federated credentials.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedScheduleStartEndDate"" pulumi-lang-dotnet=""NestedScheduleStartEndDate"" pulumi-lang-go=""nestedScheduleStartEndDate"" pulumi-lang-python=""nested_schedule_start_end_date"" pulumi-lang-yaml=""nestedScheduleStartEndDate"" pulumi-lang-java=""nestedScheduleStartEndDate"">"nested_schedule_start_end_date"</span>></a>The <span pulumi-lang-nodejs="`scheduleStartDate`" pulumi-lang-dotnet="`ScheduleStartDate`" pulumi-lang-go="`scheduleStartDate`" pulumi-lang-python="`schedule_start_date`" pulumi-lang-yaml="`scheduleStartDate`" pulumi-lang-java="`scheduleStartDate`">`schedule_start_date`</span> and <span pulumi-lang-nodejs="`scheduleEndDate`" pulumi-lang-dotnet="`ScheduleEndDate`" pulumi-lang-go="`scheduleEndDate`" pulumi-lang-python="`schedule_end_date`" pulumi-lang-yaml="`scheduleEndDate`" pulumi-lang-java="`scheduleEndDate`">`schedule_end_date`</span> blocks support:
  final String tenantId;

  TransferJobTransferSpecAzureBlobStorageDataSourceFederatedIdentityConfig({
    required this.clientId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    map['tenantId'] = tenantId;
    return map;
  }

  factory TransferJobTransferSpecAzureBlobStorageDataSourceFederatedIdentityConfig.fromMap(
      Map<String, dynamic> map) {
    return TransferJobTransferSpecAzureBlobStorageDataSourceFederatedIdentityConfig(
      clientId: map['clientId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}
