// ignore_for_file: unused_element, unnecessary_cast


class IntegrationRuntimeSsisCustomSetupScript {
  /// The blob endpoint for the container which contains a custom setup script that will be run on every node on startup. See [https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup](https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup) for more information.
  final String blobContainerUri;
  /// A container SAS token that gives access to the files. See [https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup](https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup) for more information.
  final String sasToken;

  /// Creates a new [IntegrationRuntimeSsisCustomSetupScript].
  /// [blobContainerUri] The blob endpoint for the container which contains a custom setup script that will be run on every node on startup. See [https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup](https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup) for more information.
  /// [sasToken] A container SAS token that gives access to the files. See [https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup](https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup) for more information.
  IntegrationRuntimeSsisCustomSetupScript({
    required this.blobContainerUri,
    required this.sasToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobContainerUri': blobContainerUri,
      'sasToken': sasToken,
    };
  }

  factory IntegrationRuntimeSsisCustomSetupScript.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisCustomSetupScript(
      blobContainerUri: map['blobContainerUri'] as String,
      sasToken: map['sasToken'] as String,
    );
  }
}

