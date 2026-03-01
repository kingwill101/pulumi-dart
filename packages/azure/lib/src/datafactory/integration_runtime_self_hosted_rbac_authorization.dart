// ignore_for_file: unused_element, unnecessary_cast


class IntegrationRuntimeSelfHostedRbacAuthorization {
  /// The resource identifier of the integration runtime to be shared.
  ///
  /// > **Please Note**: RBAC Authorization creates a [linked Self-hosted Integration Runtime targeting the Shared Self-hosted Integration Runtime in resource_id](https://docs.microsoft.com/azure/data-factory/create-shared-self-hosted-integration-runtime-powershell#share-the-self-hosted-integration-runtime-with-another-data-factory). The linked Self-hosted Integration Runtime needs Contributor access granted to the Shared Self-hosted Data Factory.
  ///
  /// For more information on the configuration, please check out the [Azure documentation](https://docs.microsoft.com/rest/api/datafactory/integrationruntimes/createorupdate#linkedintegrationruntimerbacauthorization)
  final String resourceId;

  /// Creates a new [IntegrationRuntimeSelfHostedRbacAuthorization].
  /// [resourceId] The resource identifier of the integration runtime to be shared.
  IntegrationRuntimeSelfHostedRbacAuthorization({
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
    };
  }

  factory IntegrationRuntimeSelfHostedRbacAuthorization.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSelfHostedRbacAuthorization(
      resourceId: map['resourceId'] as String,
    );
  }
}

