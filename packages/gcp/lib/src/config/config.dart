// ignore_for_file: unused_element, unnecessary_cast

import 'dart:convert';
import 'package:pulumi/pulumi.dart' as pulumi;
import 'batching.dart';
import 'external_credentials.dart';

/// Configuration values for the gcp package.
class GcpConfig {
  const GcpConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  String? get accessApprovalCustomEndpoint {
    final raw = _raw('accessApprovalCustomEndpoint');
    return raw;
  }

  bool get accessApprovalCustomEndpointIsSecret => _isSecret('accessApprovalCustomEndpoint');

  String? get accessContextManagerCustomEndpoint {
    final raw = _raw('accessContextManagerCustomEndpoint');
    return raw;
  }

  bool get accessContextManagerCustomEndpointIsSecret => _isSecret('accessContextManagerCustomEndpoint');

  String? get accessToken {
    final raw = _raw('accessToken');
    return raw;
  }

  bool get accessTokenIsSecret => _isSecret('accessToken');

  String? get activeDirectoryCustomEndpoint {
    final raw = _raw('activeDirectoryCustomEndpoint');
    return raw;
  }

  bool get activeDirectoryCustomEndpointIsSecret => _isSecret('activeDirectoryCustomEndpoint');

  bool? get addPulumiAttributionLabel {
    final raw = _raw('addPulumiAttributionLabel');
    return (raw).toBool();
  }

  bool get addPulumiAttributionLabelIsSecret => _isSecret('addPulumiAttributionLabel');

  String? get alloydbCustomEndpoint {
    final raw = _raw('alloydbCustomEndpoint');
    return raw;
  }

  bool get alloydbCustomEndpointIsSecret => _isSecret('alloydbCustomEndpoint');

  String? get apiGatewayCustomEndpoint {
    final raw = _raw('apiGatewayCustomEndpoint');
    return raw;
  }

  bool get apiGatewayCustomEndpointIsSecret => _isSecret('apiGatewayCustomEndpoint');

  String? get apigeeCustomEndpoint {
    final raw = _raw('apigeeCustomEndpoint');
    return raw;
  }

  bool get apigeeCustomEndpointIsSecret => _isSecret('apigeeCustomEndpoint');

  String? get apihubCustomEndpoint {
    final raw = _raw('apihubCustomEndpoint');
    return raw;
  }

  bool get apihubCustomEndpointIsSecret => _isSecret('apihubCustomEndpoint');

  String? get apikeysCustomEndpoint {
    final raw = _raw('apikeysCustomEndpoint');
    return raw;
  }

  bool get apikeysCustomEndpointIsSecret => _isSecret('apikeysCustomEndpoint');

  String? get appEngineCustomEndpoint {
    final raw = _raw('appEngineCustomEndpoint');
    return raw;
  }

  bool get appEngineCustomEndpointIsSecret => _isSecret('appEngineCustomEndpoint');

  String? get apphubCustomEndpoint {
    final raw = _raw('apphubCustomEndpoint');
    return raw;
  }

  bool get apphubCustomEndpointIsSecret => _isSecret('apphubCustomEndpoint');

  String? get artifactRegistryCustomEndpoint {
    final raw = _raw('artifactRegistryCustomEndpoint');
    return raw;
  }

  bool get artifactRegistryCustomEndpointIsSecret => _isSecret('artifactRegistryCustomEndpoint');

  String? get assuredWorkloadsCustomEndpoint {
    final raw = _raw('assuredWorkloadsCustomEndpoint');
    return raw;
  }

  bool get assuredWorkloadsCustomEndpointIsSecret => _isSecret('assuredWorkloadsCustomEndpoint');

  String? get backupDrCustomEndpoint {
    final raw = _raw('backupDrCustomEndpoint');
    return raw;
  }

  bool get backupDrCustomEndpointIsSecret => _isSecret('backupDrCustomEndpoint');

  Batching? get batching {
    final raw = _raw('batching');
    return raw == null ? null : Batching.fromMap((jsonDecode(raw) as Map).cast<String, dynamic>());
  }

  bool get batchingIsSecret => _isSecret('batching');

  String? get beyondcorpCustomEndpoint {
    final raw = _raw('beyondcorpCustomEndpoint');
    return raw;
  }

  bool get beyondcorpCustomEndpointIsSecret => _isSecret('beyondcorpCustomEndpoint');

  String? get bigQueryCustomEndpoint {
    final raw = _raw('bigQueryCustomEndpoint');
    return raw;
  }

  bool get bigQueryCustomEndpointIsSecret => _isSecret('bigQueryCustomEndpoint');

  String? get biglakeCustomEndpoint {
    final raw = _raw('biglakeCustomEndpoint');
    return raw;
  }

  bool get biglakeCustomEndpointIsSecret => _isSecret('biglakeCustomEndpoint');

  String? get biglakeIcebergCustomEndpoint {
    final raw = _raw('biglakeIcebergCustomEndpoint');
    return raw;
  }

  bool get biglakeIcebergCustomEndpointIsSecret => _isSecret('biglakeIcebergCustomEndpoint');

  String? get bigqueryAnalyticsHubCustomEndpoint {
    final raw = _raw('bigqueryAnalyticsHubCustomEndpoint');
    return raw;
  }

  bool get bigqueryAnalyticsHubCustomEndpointIsSecret => _isSecret('bigqueryAnalyticsHubCustomEndpoint');

  String? get bigqueryConnectionCustomEndpoint {
    final raw = _raw('bigqueryConnectionCustomEndpoint');
    return raw;
  }

  bool get bigqueryConnectionCustomEndpointIsSecret => _isSecret('bigqueryConnectionCustomEndpoint');

  String? get bigqueryDataTransferCustomEndpoint {
    final raw = _raw('bigqueryDataTransferCustomEndpoint');
    return raw;
  }

  bool get bigqueryDataTransferCustomEndpointIsSecret => _isSecret('bigqueryDataTransferCustomEndpoint');

  String? get bigqueryDatapolicyCustomEndpoint {
    final raw = _raw('bigqueryDatapolicyCustomEndpoint');
    return raw;
  }

  bool get bigqueryDatapolicyCustomEndpointIsSecret => _isSecret('bigqueryDatapolicyCustomEndpoint');

  String? get bigqueryDatapolicyv2CustomEndpoint {
    final raw = _raw('bigqueryDatapolicyv2CustomEndpoint');
    return raw;
  }

  bool get bigqueryDatapolicyv2CustomEndpointIsSecret => _isSecret('bigqueryDatapolicyv2CustomEndpoint');

  String? get bigqueryReservationCustomEndpoint {
    final raw = _raw('bigqueryReservationCustomEndpoint');
    return raw;
  }

  bool get bigqueryReservationCustomEndpointIsSecret => _isSecret('bigqueryReservationCustomEndpoint');

  String? get bigtableCustomEndpoint {
    final raw = _raw('bigtableCustomEndpoint');
    return raw;
  }

  bool get bigtableCustomEndpointIsSecret => _isSecret('bigtableCustomEndpoint');

  String? get billingCustomEndpoint {
    final raw = _raw('billingCustomEndpoint');
    return raw;
  }

  bool get billingCustomEndpointIsSecret => _isSecret('billingCustomEndpoint');

  String? get billingProject {
    final raw = _raw('billingProject');
    return raw;
  }

  bool get billingProjectIsSecret => _isSecret('billingProject');

  String? get binaryAuthorizationCustomEndpoint {
    final raw = _raw('binaryAuthorizationCustomEndpoint');
    return raw;
  }

  bool get binaryAuthorizationCustomEndpointIsSecret => _isSecret('binaryAuthorizationCustomEndpoint');

  String? get blockchainNodeEngineCustomEndpoint {
    final raw = _raw('blockchainNodeEngineCustomEndpoint');
    return raw;
  }

  bool get blockchainNodeEngineCustomEndpointIsSecret => _isSecret('blockchainNodeEngineCustomEndpoint');

  String? get certificateManagerCustomEndpoint {
    final raw = _raw('certificateManagerCustomEndpoint');
    return raw;
  }

  bool get certificateManagerCustomEndpointIsSecret => _isSecret('certificateManagerCustomEndpoint');

  String? get cesCustomEndpoint {
    final raw = _raw('cesCustomEndpoint');
    return raw;
  }

  bool get cesCustomEndpointIsSecret => _isSecret('cesCustomEndpoint');

  String? get chronicleCustomEndpoint {
    final raw = _raw('chronicleCustomEndpoint');
    return raw;
  }

  bool get chronicleCustomEndpointIsSecret => _isSecret('chronicleCustomEndpoint');

  String? get cloudAssetCustomEndpoint {
    final raw = _raw('cloudAssetCustomEndpoint');
    return raw;
  }

  bool get cloudAssetCustomEndpointIsSecret => _isSecret('cloudAssetCustomEndpoint');

  String? get cloudBillingCustomEndpoint {
    final raw = _raw('cloudBillingCustomEndpoint');
    return raw;
  }

  bool get cloudBillingCustomEndpointIsSecret => _isSecret('cloudBillingCustomEndpoint');

  String? get cloudBuildCustomEndpoint {
    final raw = _raw('cloudBuildCustomEndpoint');
    return raw;
  }

  bool get cloudBuildCustomEndpointIsSecret => _isSecret('cloudBuildCustomEndpoint');

  String? get cloudFunctionsCustomEndpoint {
    final raw = _raw('cloudFunctionsCustomEndpoint');
    return raw;
  }

  bool get cloudFunctionsCustomEndpointIsSecret => _isSecret('cloudFunctionsCustomEndpoint');

  String? get cloudIdentityCustomEndpoint {
    final raw = _raw('cloudIdentityCustomEndpoint');
    return raw;
  }

  bool get cloudIdentityCustomEndpointIsSecret => _isSecret('cloudIdentityCustomEndpoint');

  String? get cloudIdsCustomEndpoint {
    final raw = _raw('cloudIdsCustomEndpoint');
    return raw;
  }

  bool get cloudIdsCustomEndpointIsSecret => _isSecret('cloudIdsCustomEndpoint');

  String? get cloudQuotasCustomEndpoint {
    final raw = _raw('cloudQuotasCustomEndpoint');
    return raw;
  }

  bool get cloudQuotasCustomEndpointIsSecret => _isSecret('cloudQuotasCustomEndpoint');

  String? get cloudResourceManagerCustomEndpoint {
    final raw = _raw('cloudResourceManagerCustomEndpoint');
    return raw;
  }

  bool get cloudResourceManagerCustomEndpointIsSecret => _isSecret('cloudResourceManagerCustomEndpoint');

  String? get cloudRunCustomEndpoint {
    final raw = _raw('cloudRunCustomEndpoint');
    return raw;
  }

  bool get cloudRunCustomEndpointIsSecret => _isSecret('cloudRunCustomEndpoint');

  String? get cloudRunV2CustomEndpoint {
    final raw = _raw('cloudRunV2CustomEndpoint');
    return raw;
  }

  bool get cloudRunV2CustomEndpointIsSecret => _isSecret('cloudRunV2CustomEndpoint');

  String? get cloudSchedulerCustomEndpoint {
    final raw = _raw('cloudSchedulerCustomEndpoint');
    return raw;
  }

  bool get cloudSchedulerCustomEndpointIsSecret => _isSecret('cloudSchedulerCustomEndpoint');

  String? get cloudSecurityComplianceCustomEndpoint {
    final raw = _raw('cloudSecurityComplianceCustomEndpoint');
    return raw;
  }

  bool get cloudSecurityComplianceCustomEndpointIsSecret => _isSecret('cloudSecurityComplianceCustomEndpoint');

  String? get cloudTasksCustomEndpoint {
    final raw = _raw('cloudTasksCustomEndpoint');
    return raw;
  }

  bool get cloudTasksCustomEndpointIsSecret => _isSecret('cloudTasksCustomEndpoint');

  String? get cloudbuildv2CustomEndpoint {
    final raw = _raw('cloudbuildv2CustomEndpoint');
    return raw;
  }

  bool get cloudbuildv2CustomEndpointIsSecret => _isSecret('cloudbuildv2CustomEndpoint');

  String? get clouddeployCustomEndpoint {
    final raw = _raw('clouddeployCustomEndpoint');
    return raw;
  }

  bool get clouddeployCustomEndpointIsSecret => _isSecret('clouddeployCustomEndpoint');

  String? get clouddomainsCustomEndpoint {
    final raw = _raw('clouddomainsCustomEndpoint');
    return raw;
  }

  bool get clouddomainsCustomEndpointIsSecret => _isSecret('clouddomainsCustomEndpoint');

  String? get cloudfunctions2CustomEndpoint {
    final raw = _raw('cloudfunctions2CustomEndpoint');
    return raw;
  }

  bool get cloudfunctions2CustomEndpointIsSecret => _isSecret('cloudfunctions2CustomEndpoint');

  String? get colabCustomEndpoint {
    final raw = _raw('colabCustomEndpoint');
    return raw;
  }

  bool get colabCustomEndpointIsSecret => _isSecret('colabCustomEndpoint');

  String? get composerCustomEndpoint {
    final raw = _raw('composerCustomEndpoint');
    return raw;
  }

  bool get composerCustomEndpointIsSecret => _isSecret('composerCustomEndpoint');

  String? get computeCustomEndpoint {
    final raw = _raw('computeCustomEndpoint');
    return raw;
  }

  bool get computeCustomEndpointIsSecret => _isSecret('computeCustomEndpoint');

  String? get contactCenterInsightsCustomEndpoint {
    final raw = _raw('contactCenterInsightsCustomEndpoint');
    return raw;
  }

  bool get contactCenterInsightsCustomEndpointIsSecret => _isSecret('contactCenterInsightsCustomEndpoint');

  String? get containerAnalysisCustomEndpoint {
    final raw = _raw('containerAnalysisCustomEndpoint');
    return raw;
  }

  bool get containerAnalysisCustomEndpointIsSecret => _isSecret('containerAnalysisCustomEndpoint');

  String? get containerAttachedCustomEndpoint {
    final raw = _raw('containerAttachedCustomEndpoint');
    return raw;
  }

  bool get containerAttachedCustomEndpointIsSecret => _isSecret('containerAttachedCustomEndpoint');

  String? get containerAwsCustomEndpoint {
    final raw = _raw('containerAwsCustomEndpoint');
    return raw;
  }

  bool get containerAwsCustomEndpointIsSecret => _isSecret('containerAwsCustomEndpoint');

  String? get containerAzureCustomEndpoint {
    final raw = _raw('containerAzureCustomEndpoint');
    return raw;
  }

  bool get containerAzureCustomEndpointIsSecret => _isSecret('containerAzureCustomEndpoint');

  String? get containerCustomEndpoint {
    final raw = _raw('containerCustomEndpoint');
    return raw;
  }

  bool get containerCustomEndpointIsSecret => _isSecret('containerCustomEndpoint');

  String? get coreBillingCustomEndpoint {
    final raw = _raw('coreBillingCustomEndpoint');
    return raw;
  }

  bool get coreBillingCustomEndpointIsSecret => _isSecret('coreBillingCustomEndpoint');

  String? get credentials {
    final raw = _raw('credentials');
    return raw;
  }

  bool get credentialsIsSecret => _isSecret('credentials');

  String? get dataCatalogCustomEndpoint {
    final raw = _raw('dataCatalogCustomEndpoint');
    return raw;
  }

  bool get dataCatalogCustomEndpointIsSecret => _isSecret('dataCatalogCustomEndpoint');

  String? get dataFusionCustomEndpoint {
    final raw = _raw('dataFusionCustomEndpoint');
    return raw;
  }

  bool get dataFusionCustomEndpointIsSecret => _isSecret('dataFusionCustomEndpoint');

  String? get dataLossPreventionCustomEndpoint {
    final raw = _raw('dataLossPreventionCustomEndpoint');
    return raw;
  }

  bool get dataLossPreventionCustomEndpointIsSecret => _isSecret('dataLossPreventionCustomEndpoint');

  String? get dataPipelineCustomEndpoint {
    final raw = _raw('dataPipelineCustomEndpoint');
    return raw;
  }

  bool get dataPipelineCustomEndpointIsSecret => _isSecret('dataPipelineCustomEndpoint');

  String? get databaseMigrationServiceCustomEndpoint {
    final raw = _raw('databaseMigrationServiceCustomEndpoint');
    return raw;
  }

  bool get databaseMigrationServiceCustomEndpointIsSecret => _isSecret('databaseMigrationServiceCustomEndpoint');

  String? get dataflowCustomEndpoint {
    final raw = _raw('dataflowCustomEndpoint');
    return raw;
  }

  bool get dataflowCustomEndpointIsSecret => _isSecret('dataflowCustomEndpoint');

  String? get dataformCustomEndpoint {
    final raw = _raw('dataformCustomEndpoint');
    return raw;
  }

  bool get dataformCustomEndpointIsSecret => _isSecret('dataformCustomEndpoint');

  String? get dataplexCustomEndpoint {
    final raw = _raw('dataplexCustomEndpoint');
    return raw;
  }

  bool get dataplexCustomEndpointIsSecret => _isSecret('dataplexCustomEndpoint');

  String? get dataprocCustomEndpoint {
    final raw = _raw('dataprocCustomEndpoint');
    return raw;
  }

  bool get dataprocCustomEndpointIsSecret => _isSecret('dataprocCustomEndpoint');

  String? get dataprocGdcCustomEndpoint {
    final raw = _raw('dataprocGdcCustomEndpoint');
    return raw;
  }

  bool get dataprocGdcCustomEndpointIsSecret => _isSecret('dataprocGdcCustomEndpoint');

  String? get dataprocMetastoreCustomEndpoint {
    final raw = _raw('dataprocMetastoreCustomEndpoint');
    return raw;
  }

  bool get dataprocMetastoreCustomEndpointIsSecret => _isSecret('dataprocMetastoreCustomEndpoint');

  String? get datastreamCustomEndpoint {
    final raw = _raw('datastreamCustomEndpoint');
    return raw;
  }

  bool get datastreamCustomEndpointIsSecret => _isSecret('datastreamCustomEndpoint');

  Map<String, String>? get defaultLabels {
    final raw = _raw('defaultLabels');
    return raw == null ? null : (jsonDecode(raw) as Map).cast<String, String>();
  }

  bool get defaultLabelsIsSecret => _isSecret('defaultLabels');

  String? get deploymentManagerCustomEndpoint {
    final raw = _raw('deploymentManagerCustomEndpoint');
    return raw;
  }

  bool get deploymentManagerCustomEndpointIsSecret => _isSecret('deploymentManagerCustomEndpoint');

  String? get developerConnectCustomEndpoint {
    final raw = _raw('developerConnectCustomEndpoint');
    return raw;
  }

  bool get developerConnectCustomEndpointIsSecret => _isSecret('developerConnectCustomEndpoint');

  String? get dialogflowCustomEndpoint {
    final raw = _raw('dialogflowCustomEndpoint');
    return raw;
  }

  bool get dialogflowCustomEndpointIsSecret => _isSecret('dialogflowCustomEndpoint');

  String? get dialogflowCxCustomEndpoint {
    final raw = _raw('dialogflowCxCustomEndpoint');
    return raw;
  }

  bool get dialogflowCxCustomEndpointIsSecret => _isSecret('dialogflowCxCustomEndpoint');

  bool? get disableGlobalProjectWarning {
    final raw = _raw('disableGlobalProjectWarning');
    return (raw).toBool();
  }

  bool get disableGlobalProjectWarningIsSecret => _isSecret('disableGlobalProjectWarning');

  bool? get disableGooglePartnerName {
    final raw = _raw('disableGooglePartnerName');
    return (raw).toBool();
  }

  bool get disableGooglePartnerNameIsSecret => _isSecret('disableGooglePartnerName');

  String? get discoveryEngineCustomEndpoint {
    final raw = _raw('discoveryEngineCustomEndpoint');
    return raw;
  }

  bool get discoveryEngineCustomEndpointIsSecret => _isSecret('discoveryEngineCustomEndpoint');

  String? get dnsCustomEndpoint {
    final raw = _raw('dnsCustomEndpoint');
    return raw;
  }

  bool get dnsCustomEndpointIsSecret => _isSecret('dnsCustomEndpoint');

  String? get documentAiCustomEndpoint {
    final raw = _raw('documentAiCustomEndpoint');
    return raw;
  }

  bool get documentAiCustomEndpointIsSecret => _isSecret('documentAiCustomEndpoint');

  String? get documentAiWarehouseCustomEndpoint {
    final raw = _raw('documentAiWarehouseCustomEndpoint');
    return raw;
  }

  bool get documentAiWarehouseCustomEndpointIsSecret => _isSecret('documentAiWarehouseCustomEndpoint');

  String? get edgecontainerCustomEndpoint {
    final raw = _raw('edgecontainerCustomEndpoint');
    return raw;
  }

  bool get edgecontainerCustomEndpointIsSecret => _isSecret('edgecontainerCustomEndpoint');

  String? get edgenetworkCustomEndpoint {
    final raw = _raw('edgenetworkCustomEndpoint');
    return raw;
  }

  bool get edgenetworkCustomEndpointIsSecret => _isSecret('edgenetworkCustomEndpoint');

  String? get essentialContactsCustomEndpoint {
    final raw = _raw('essentialContactsCustomEndpoint');
    return raw;
  }

  bool get essentialContactsCustomEndpointIsSecret => _isSecret('essentialContactsCustomEndpoint');

  String? get eventarcCustomEndpoint {
    final raw = _raw('eventarcCustomEndpoint');
    return raw;
  }

  bool get eventarcCustomEndpointIsSecret => _isSecret('eventarcCustomEndpoint');

  ExternalCredentials? get externalCredentials {
    final raw = _raw('externalCredentials');
    return raw == null ? null : ExternalCredentials.fromMap((jsonDecode(raw) as Map).cast<String, dynamic>());
  }

  bool get externalCredentialsIsSecret => _isSecret('externalCredentials');

  String? get filestoreCustomEndpoint {
    final raw = _raw('filestoreCustomEndpoint');
    return raw;
  }

  bool get filestoreCustomEndpointIsSecret => _isSecret('filestoreCustomEndpoint');

  String? get firebaseAiLogicCustomEndpoint {
    final raw = _raw('firebaseAiLogicCustomEndpoint');
    return raw;
  }

  bool get firebaseAiLogicCustomEndpointIsSecret => _isSecret('firebaseAiLogicCustomEndpoint');

  String? get firebaseAppCheckCustomEndpoint {
    final raw = _raw('firebaseAppCheckCustomEndpoint');
    return raw;
  }

  bool get firebaseAppCheckCustomEndpointIsSecret => _isSecret('firebaseAppCheckCustomEndpoint');

  String? get firebaseAppHostingCustomEndpoint {
    final raw = _raw('firebaseAppHostingCustomEndpoint');
    return raw;
  }

  bool get firebaseAppHostingCustomEndpointIsSecret => _isSecret('firebaseAppHostingCustomEndpoint');

  String? get firebaseCustomEndpoint {
    final raw = _raw('firebaseCustomEndpoint');
    return raw;
  }

  bool get firebaseCustomEndpointIsSecret => _isSecret('firebaseCustomEndpoint');

  String? get firebaseDataConnectCustomEndpoint {
    final raw = _raw('firebaseDataConnectCustomEndpoint');
    return raw;
  }

  bool get firebaseDataConnectCustomEndpointIsSecret => _isSecret('firebaseDataConnectCustomEndpoint');

  String? get firebaseDatabaseCustomEndpoint {
    final raw = _raw('firebaseDatabaseCustomEndpoint');
    return raw;
  }

  bool get firebaseDatabaseCustomEndpointIsSecret => _isSecret('firebaseDatabaseCustomEndpoint');

  String? get firebaseExtensionsCustomEndpoint {
    final raw = _raw('firebaseExtensionsCustomEndpoint');
    return raw;
  }

  bool get firebaseExtensionsCustomEndpointIsSecret => _isSecret('firebaseExtensionsCustomEndpoint');

  String? get firebaseHostingCustomEndpoint {
    final raw = _raw('firebaseHostingCustomEndpoint');
    return raw;
  }

  bool get firebaseHostingCustomEndpointIsSecret => _isSecret('firebaseHostingCustomEndpoint');

  String? get firebaseStorageCustomEndpoint {
    final raw = _raw('firebaseStorageCustomEndpoint');
    return raw;
  }

  bool get firebaseStorageCustomEndpointIsSecret => _isSecret('firebaseStorageCustomEndpoint');

  String? get firebaserulesCustomEndpoint {
    final raw = _raw('firebaserulesCustomEndpoint');
    return raw;
  }

  bool get firebaserulesCustomEndpointIsSecret => _isSecret('firebaserulesCustomEndpoint');

  String? get firestoreCustomEndpoint {
    final raw = _raw('firestoreCustomEndpoint');
    return raw;
  }

  bool get firestoreCustomEndpointIsSecret => _isSecret('firestoreCustomEndpoint');

  String? get geminiCustomEndpoint {
    final raw = _raw('geminiCustomEndpoint');
    return raw;
  }

  bool get geminiCustomEndpointIsSecret => _isSecret('geminiCustomEndpoint');

  String? get gkeBackupCustomEndpoint {
    final raw = _raw('gkeBackupCustomEndpoint');
    return raw;
  }

  bool get gkeBackupCustomEndpointIsSecret => _isSecret('gkeBackupCustomEndpoint');

  String? get gkeHub2CustomEndpoint {
    final raw = _raw('gkeHub2CustomEndpoint');
    return raw;
  }

  bool get gkeHub2CustomEndpointIsSecret => _isSecret('gkeHub2CustomEndpoint');

  String? get gkeHubCustomEndpoint {
    final raw = _raw('gkeHubCustomEndpoint');
    return raw;
  }

  bool get gkeHubCustomEndpointIsSecret => _isSecret('gkeHubCustomEndpoint');

  String? get gkeonpremCustomEndpoint {
    final raw = _raw('gkeonpremCustomEndpoint');
    return raw;
  }

  bool get gkeonpremCustomEndpointIsSecret => _isSecret('gkeonpremCustomEndpoint');

  String? get googlePartnerName {
    final raw = _raw('googlePartnerName');
    return raw;
  }

  bool get googlePartnerNameIsSecret => _isSecret('googlePartnerName');

  String? get healthcareCustomEndpoint {
    final raw = _raw('healthcareCustomEndpoint');
    return raw;
  }

  bool get healthcareCustomEndpointIsSecret => _isSecret('healthcareCustomEndpoint');

  String? get iam2CustomEndpoint {
    final raw = _raw('iam2CustomEndpoint');
    return raw;
  }

  bool get iam2CustomEndpointIsSecret => _isSecret('iam2CustomEndpoint');

  String? get iam3CustomEndpoint {
    final raw = _raw('iam3CustomEndpoint');
    return raw;
  }

  bool get iam3CustomEndpointIsSecret => _isSecret('iam3CustomEndpoint');

  String? get iamBetaCustomEndpoint {
    final raw = _raw('iamBetaCustomEndpoint');
    return raw;
  }

  bool get iamBetaCustomEndpointIsSecret => _isSecret('iamBetaCustomEndpoint');

  String? get iamCredentialsCustomEndpoint {
    final raw = _raw('iamCredentialsCustomEndpoint');
    return raw;
  }

  bool get iamCredentialsCustomEndpointIsSecret => _isSecret('iamCredentialsCustomEndpoint');

  String? get iamCustomEndpoint {
    final raw = _raw('iamCustomEndpoint');
    return raw;
  }

  bool get iamCustomEndpointIsSecret => _isSecret('iamCustomEndpoint');

  String? get iamWorkforcePoolCustomEndpoint {
    final raw = _raw('iamWorkforcePoolCustomEndpoint');
    return raw;
  }

  bool get iamWorkforcePoolCustomEndpointIsSecret => _isSecret('iamWorkforcePoolCustomEndpoint');

  String? get iapCustomEndpoint {
    final raw = _raw('iapCustomEndpoint');
    return raw;
  }

  bool get iapCustomEndpointIsSecret => _isSecret('iapCustomEndpoint');

  String? get identityPlatformCustomEndpoint {
    final raw = _raw('identityPlatformCustomEndpoint');
    return raw;
  }

  bool get identityPlatformCustomEndpointIsSecret => _isSecret('identityPlatformCustomEndpoint');

  String? get impersonateServiceAccount {
    final raw = _raw('impersonateServiceAccount');
    return raw;
  }

  bool get impersonateServiceAccountIsSecret => _isSecret('impersonateServiceAccount');

  List<String>? get impersonateServiceAccountDelegates {
    final raw = _raw('impersonateServiceAccountDelegates');
    return raw == null ? null : (jsonDecode(raw) as List).cast<String>();
  }

  bool get impersonateServiceAccountDelegatesIsSecret => _isSecret('impersonateServiceAccountDelegates');

  String? get integrationConnectorsCustomEndpoint {
    final raw = _raw('integrationConnectorsCustomEndpoint');
    return raw;
  }

  bool get integrationConnectorsCustomEndpointIsSecret => _isSecret('integrationConnectorsCustomEndpoint');

  String? get integrationsCustomEndpoint {
    final raw = _raw('integrationsCustomEndpoint');
    return raw;
  }

  bool get integrationsCustomEndpointIsSecret => _isSecret('integrationsCustomEndpoint');

  String? get kmsCustomEndpoint {
    final raw = _raw('kmsCustomEndpoint');
    return raw;
  }

  bool get kmsCustomEndpointIsSecret => _isSecret('kmsCustomEndpoint');

  String? get loggingCustomEndpoint {
    final raw = _raw('loggingCustomEndpoint');
    return raw;
  }

  bool get loggingCustomEndpointIsSecret => _isSecret('loggingCustomEndpoint');

  String? get lookerCustomEndpoint {
    final raw = _raw('lookerCustomEndpoint');
    return raw;
  }

  bool get lookerCustomEndpointIsSecret => _isSecret('lookerCustomEndpoint');

  String? get lustreCustomEndpoint {
    final raw = _raw('lustreCustomEndpoint');
    return raw;
  }

  bool get lustreCustomEndpointIsSecret => _isSecret('lustreCustomEndpoint');

  String? get managedKafkaCustomEndpoint {
    final raw = _raw('managedKafkaCustomEndpoint');
    return raw;
  }

  bool get managedKafkaCustomEndpointIsSecret => _isSecret('managedKafkaCustomEndpoint');

  String? get memcacheCustomEndpoint {
    final raw = _raw('memcacheCustomEndpoint');
    return raw;
  }

  bool get memcacheCustomEndpointIsSecret => _isSecret('memcacheCustomEndpoint');

  String? get memorystoreCustomEndpoint {
    final raw = _raw('memorystoreCustomEndpoint');
    return raw;
  }

  bool get memorystoreCustomEndpointIsSecret => _isSecret('memorystoreCustomEndpoint');

  String? get migrationCenterCustomEndpoint {
    final raw = _raw('migrationCenterCustomEndpoint');
    return raw;
  }

  bool get migrationCenterCustomEndpointIsSecret => _isSecret('migrationCenterCustomEndpoint');

  String? get mlEngineCustomEndpoint {
    final raw = _raw('mlEngineCustomEndpoint');
    return raw;
  }

  bool get mlEngineCustomEndpointIsSecret => _isSecret('mlEngineCustomEndpoint');

  String? get modelArmorCustomEndpoint {
    final raw = _raw('modelArmorCustomEndpoint');
    return raw;
  }

  bool get modelArmorCustomEndpointIsSecret => _isSecret('modelArmorCustomEndpoint');

  String? get modelArmorGlobalCustomEndpoint {
    final raw = _raw('modelArmorGlobalCustomEndpoint');
    return raw;
  }

  bool get modelArmorGlobalCustomEndpointIsSecret => _isSecret('modelArmorGlobalCustomEndpoint');

  String? get monitoringCustomEndpoint {
    final raw = _raw('monitoringCustomEndpoint');
    return raw;
  }

  bool get monitoringCustomEndpointIsSecret => _isSecret('monitoringCustomEndpoint');

  String? get netappCustomEndpoint {
    final raw = _raw('netappCustomEndpoint');
    return raw;
  }

  bool get netappCustomEndpointIsSecret => _isSecret('netappCustomEndpoint');

  String? get networkConnectivityCustomEndpoint {
    final raw = _raw('networkConnectivityCustomEndpoint');
    return raw;
  }

  bool get networkConnectivityCustomEndpointIsSecret => _isSecret('networkConnectivityCustomEndpoint');

  String? get networkConnectivityv1CustomEndpoint {
    final raw = _raw('networkConnectivityv1CustomEndpoint');
    return raw;
  }

  bool get networkConnectivityv1CustomEndpointIsSecret => _isSecret('networkConnectivityv1CustomEndpoint');

  String? get networkManagementCustomEndpoint {
    final raw = _raw('networkManagementCustomEndpoint');
    return raw;
  }

  bool get networkManagementCustomEndpointIsSecret => _isSecret('networkManagementCustomEndpoint');

  String? get networkSecurityCustomEndpoint {
    final raw = _raw('networkSecurityCustomEndpoint');
    return raw;
  }

  bool get networkSecurityCustomEndpointIsSecret => _isSecret('networkSecurityCustomEndpoint');

  String? get networkServicesCustomEndpoint {
    final raw = _raw('networkServicesCustomEndpoint');
    return raw;
  }

  bool get networkServicesCustomEndpointIsSecret => _isSecret('networkServicesCustomEndpoint');

  String? get notebooksCustomEndpoint {
    final raw = _raw('notebooksCustomEndpoint');
    return raw;
  }

  bool get notebooksCustomEndpointIsSecret => _isSecret('notebooksCustomEndpoint');

  String? get observabilityCustomEndpoint {
    final raw = _raw('observabilityCustomEndpoint');
    return raw;
  }

  bool get observabilityCustomEndpointIsSecret => _isSecret('observabilityCustomEndpoint');

  String? get oracleDatabaseCustomEndpoint {
    final raw = _raw('oracleDatabaseCustomEndpoint');
    return raw;
  }

  bool get oracleDatabaseCustomEndpointIsSecret => _isSecret('oracleDatabaseCustomEndpoint');

  String? get orgPolicyCustomEndpoint {
    final raw = _raw('orgPolicyCustomEndpoint');
    return raw;
  }

  bool get orgPolicyCustomEndpointIsSecret => _isSecret('orgPolicyCustomEndpoint');

  String? get osConfigCustomEndpoint {
    final raw = _raw('osConfigCustomEndpoint');
    return raw;
  }

  bool get osConfigCustomEndpointIsSecret => _isSecret('osConfigCustomEndpoint');

  String? get osConfigV2CustomEndpoint {
    final raw = _raw('osConfigV2CustomEndpoint');
    return raw;
  }

  bool get osConfigV2CustomEndpointIsSecret => _isSecret('osConfigV2CustomEndpoint');

  String? get osLoginCustomEndpoint {
    final raw = _raw('osLoginCustomEndpoint');
    return raw;
  }

  bool get osLoginCustomEndpointIsSecret => _isSecret('osLoginCustomEndpoint');

  String? get parallelstoreCustomEndpoint {
    final raw = _raw('parallelstoreCustomEndpoint');
    return raw;
  }

  bool get parallelstoreCustomEndpointIsSecret => _isSecret('parallelstoreCustomEndpoint');

  String? get parameterManagerCustomEndpoint {
    final raw = _raw('parameterManagerCustomEndpoint');
    return raw;
  }

  bool get parameterManagerCustomEndpointIsSecret => _isSecret('parameterManagerCustomEndpoint');

  String? get parameterManagerRegionalCustomEndpoint {
    final raw = _raw('parameterManagerRegionalCustomEndpoint');
    return raw;
  }

  bool get parameterManagerRegionalCustomEndpointIsSecret => _isSecret('parameterManagerRegionalCustomEndpoint');

  String? get privatecaCustomEndpoint {
    final raw = _raw('privatecaCustomEndpoint');
    return raw;
  }

  bool get privatecaCustomEndpointIsSecret => _isSecret('privatecaCustomEndpoint');

  String? get privilegedAccessManagerCustomEndpoint {
    final raw = _raw('privilegedAccessManagerCustomEndpoint');
    return raw;
  }

  bool get privilegedAccessManagerCustomEndpointIsSecret => _isSecret('privilegedAccessManagerCustomEndpoint');

  String? get project {
    final raw = _raw('project');
    return raw;
  }

  bool get projectIsSecret => _isSecret('project');

  String? get publicCaCustomEndpoint {
    final raw = _raw('publicCaCustomEndpoint');
    return raw;
  }

  bool get publicCaCustomEndpointIsSecret => _isSecret('publicCaCustomEndpoint');

  String? get pubsubCustomEndpoint {
    final raw = _raw('pubsubCustomEndpoint');
    return raw;
  }

  bool get pubsubCustomEndpointIsSecret => _isSecret('pubsubCustomEndpoint');

  String? get pubsubLiteCustomEndpoint {
    final raw = _raw('pubsubLiteCustomEndpoint');
    return raw;
  }

  bool get pubsubLiteCustomEndpointIsSecret => _isSecret('pubsubLiteCustomEndpoint');

  String? get pulumiAttributionLabelAdditionStrategy {
    final raw = _raw('pulumiAttributionLabelAdditionStrategy');
    return raw;
  }

  bool get pulumiAttributionLabelAdditionStrategyIsSecret => _isSecret('pulumiAttributionLabelAdditionStrategy');

  String? get recaptchaEnterpriseCustomEndpoint {
    final raw = _raw('recaptchaEnterpriseCustomEndpoint');
    return raw;
  }

  bool get recaptchaEnterpriseCustomEndpointIsSecret => _isSecret('recaptchaEnterpriseCustomEndpoint');

  String? get redisCustomEndpoint {
    final raw = _raw('redisCustomEndpoint');
    return raw;
  }

  bool get redisCustomEndpointIsSecret => _isSecret('redisCustomEndpoint');

  String? get region {
    final raw = _raw('region');
    return raw;
  }

  bool get regionIsSecret => _isSecret('region');

  String? get requestReason {
    final raw = _raw('requestReason');
    return raw;
  }

  bool get requestReasonIsSecret => _isSecret('requestReason');

  String? get requestTimeout {
    final raw = _raw('requestTimeout');
    return raw;
  }

  bool get requestTimeoutIsSecret => _isSecret('requestTimeout');

  String? get resourceManager3CustomEndpoint {
    final raw = _raw('resourceManager3CustomEndpoint');
    return raw;
  }

  bool get resourceManager3CustomEndpointIsSecret => _isSecret('resourceManager3CustomEndpoint');

  String? get resourceManagerCustomEndpoint {
    final raw = _raw('resourceManagerCustomEndpoint');
    return raw;
  }

  bool get resourceManagerCustomEndpointIsSecret => _isSecret('resourceManagerCustomEndpoint');

  String? get resourceManagerV3CustomEndpoint {
    final raw = _raw('resourceManagerV3CustomEndpoint');
    return raw;
  }

  bool get resourceManagerV3CustomEndpointIsSecret => _isSecret('resourceManagerV3CustomEndpoint');

  String? get runtimeConfigCustomEndpoint {
    final raw = _raw('runtimeConfigCustomEndpoint');
    return raw;
  }

  bool get runtimeConfigCustomEndpointIsSecret => _isSecret('runtimeConfigCustomEndpoint');

  String? get runtimeconfigCustomEndpoint {
    final raw = _raw('runtimeconfigCustomEndpoint');
    return raw;
  }

  bool get runtimeconfigCustomEndpointIsSecret => _isSecret('runtimeconfigCustomEndpoint');

  String? get saasRuntimeCustomEndpoint {
    final raw = _raw('saasRuntimeCustomEndpoint');
    return raw;
  }

  bool get saasRuntimeCustomEndpointIsSecret => _isSecret('saasRuntimeCustomEndpoint');

  List<String>? get scopes {
    final raw = _raw('scopes');
    return raw == null ? null : (jsonDecode(raw) as List).cast<String>();
  }

  bool get scopesIsSecret => _isSecret('scopes');

  String? get secretManagerCustomEndpoint {
    final raw = _raw('secretManagerCustomEndpoint');
    return raw;
  }

  bool get secretManagerCustomEndpointIsSecret => _isSecret('secretManagerCustomEndpoint');

  String? get secretManagerRegionalCustomEndpoint {
    final raw = _raw('secretManagerRegionalCustomEndpoint');
    return raw;
  }

  bool get secretManagerRegionalCustomEndpointIsSecret => _isSecret('secretManagerRegionalCustomEndpoint');

  String? get secureSourceManagerCustomEndpoint {
    final raw = _raw('secureSourceManagerCustomEndpoint');
    return raw;
  }

  bool get secureSourceManagerCustomEndpointIsSecret => _isSecret('secureSourceManagerCustomEndpoint');

  String? get securityCenterCustomEndpoint {
    final raw = _raw('securityCenterCustomEndpoint');
    return raw;
  }

  bool get securityCenterCustomEndpointIsSecret => _isSecret('securityCenterCustomEndpoint');

  String? get securityCenterManagementCustomEndpoint {
    final raw = _raw('securityCenterManagementCustomEndpoint');
    return raw;
  }

  bool get securityCenterManagementCustomEndpointIsSecret => _isSecret('securityCenterManagementCustomEndpoint');

  String? get securityCenterV2CustomEndpoint {
    final raw = _raw('securityCenterV2CustomEndpoint');
    return raw;
  }

  bool get securityCenterV2CustomEndpointIsSecret => _isSecret('securityCenterV2CustomEndpoint');

  String? get securityScannerCustomEndpoint {
    final raw = _raw('securityScannerCustomEndpoint');
    return raw;
  }

  bool get securityScannerCustomEndpointIsSecret => _isSecret('securityScannerCustomEndpoint');

  String? get securitypostureCustomEndpoint {
    final raw = _raw('securitypostureCustomEndpoint');
    return raw;
  }

  bool get securitypostureCustomEndpointIsSecret => _isSecret('securitypostureCustomEndpoint');

  String? get serviceDirectoryCustomEndpoint {
    final raw = _raw('serviceDirectoryCustomEndpoint');
    return raw;
  }

  bool get serviceDirectoryCustomEndpointIsSecret => _isSecret('serviceDirectoryCustomEndpoint');

  String? get serviceManagementCustomEndpoint {
    final raw = _raw('serviceManagementCustomEndpoint');
    return raw;
  }

  bool get serviceManagementCustomEndpointIsSecret => _isSecret('serviceManagementCustomEndpoint');

  String? get serviceNetworkingCustomEndpoint {
    final raw = _raw('serviceNetworkingCustomEndpoint');
    return raw;
  }

  bool get serviceNetworkingCustomEndpointIsSecret => _isSecret('serviceNetworkingCustomEndpoint');

  String? get serviceUsageCustomEndpoint {
    final raw = _raw('serviceUsageCustomEndpoint');
    return raw;
  }

  bool get serviceUsageCustomEndpointIsSecret => _isSecret('serviceUsageCustomEndpoint');

  String? get siteVerificationCustomEndpoint {
    final raw = _raw('siteVerificationCustomEndpoint');
    return raw;
  }

  bool get siteVerificationCustomEndpointIsSecret => _isSecret('siteVerificationCustomEndpoint');

  bool? get skipRegionValidation {
    final raw = _raw('skipRegionValidation');
    return (raw).toBool();
  }

  bool get skipRegionValidationIsSecret => _isSecret('skipRegionValidation');

  String? get sourceRepoCustomEndpoint {
    final raw = _raw('sourceRepoCustomEndpoint');
    return raw;
  }

  bool get sourceRepoCustomEndpointIsSecret => _isSecret('sourceRepoCustomEndpoint');

  String? get spannerCustomEndpoint {
    final raw = _raw('spannerCustomEndpoint');
    return raw;
  }

  bool get spannerCustomEndpointIsSecret => _isSecret('spannerCustomEndpoint');

  String? get sqlCustomEndpoint {
    final raw = _raw('sqlCustomEndpoint');
    return raw;
  }

  bool get sqlCustomEndpointIsSecret => _isSecret('sqlCustomEndpoint');

  String? get storageBatchOperationsCustomEndpoint {
    final raw = _raw('storageBatchOperationsCustomEndpoint');
    return raw;
  }

  bool get storageBatchOperationsCustomEndpointIsSecret => _isSecret('storageBatchOperationsCustomEndpoint');

  String? get storageControlCustomEndpoint {
    final raw = _raw('storageControlCustomEndpoint');
    return raw;
  }

  bool get storageControlCustomEndpointIsSecret => _isSecret('storageControlCustomEndpoint');

  String? get storageCustomEndpoint {
    final raw = _raw('storageCustomEndpoint');
    return raw;
  }

  bool get storageCustomEndpointIsSecret => _isSecret('storageCustomEndpoint');

  String? get storageInsightsCustomEndpoint {
    final raw = _raw('storageInsightsCustomEndpoint');
    return raw;
  }

  bool get storageInsightsCustomEndpointIsSecret => _isSecret('storageInsightsCustomEndpoint');

  String? get storageTransferCustomEndpoint {
    final raw = _raw('storageTransferCustomEndpoint');
    return raw;
  }

  bool get storageTransferCustomEndpointIsSecret => _isSecret('storageTransferCustomEndpoint');

  String? get tagsCustomEndpoint {
    final raw = _raw('tagsCustomEndpoint');
    return raw;
  }

  bool get tagsCustomEndpointIsSecret => _isSecret('tagsCustomEndpoint');

  String? get tagsLocationCustomEndpoint {
    final raw = _raw('tagsLocationCustomEndpoint');
    return raw;
  }

  bool get tagsLocationCustomEndpointIsSecret => _isSecret('tagsLocationCustomEndpoint');

  String? get tpuV2CustomEndpoint {
    final raw = _raw('tpuV2CustomEndpoint');
    return raw;
  }

  bool get tpuV2CustomEndpointIsSecret => _isSecret('tpuV2CustomEndpoint');

  String? get transcoderCustomEndpoint {
    final raw = _raw('transcoderCustomEndpoint');
    return raw;
  }

  bool get transcoderCustomEndpointIsSecret => _isSecret('transcoderCustomEndpoint');

  String? get universeDomain {
    final raw = _raw('universeDomain');
    return raw;
  }

  bool get universeDomainIsSecret => _isSecret('universeDomain');

  bool? get userProjectOverride {
    final raw = _raw('userProjectOverride');
    return (raw).toBool();
  }

  bool get userProjectOverrideIsSecret => _isSecret('userProjectOverride');

  String? get vertexAiCustomEndpoint {
    final raw = _raw('vertexAiCustomEndpoint');
    return raw;
  }

  bool get vertexAiCustomEndpointIsSecret => _isSecret('vertexAiCustomEndpoint');

  String? get vmwareengineCustomEndpoint {
    final raw = _raw('vmwareengineCustomEndpoint');
    return raw;
  }

  bool get vmwareengineCustomEndpointIsSecret => _isSecret('vmwareengineCustomEndpoint');

  String? get vpcAccessCustomEndpoint {
    final raw = _raw('vpcAccessCustomEndpoint');
    return raw;
  }

  bool get vpcAccessCustomEndpointIsSecret => _isSecret('vpcAccessCustomEndpoint');

  String? get workbenchCustomEndpoint {
    final raw = _raw('workbenchCustomEndpoint');
    return raw;
  }

  bool get workbenchCustomEndpointIsSecret => _isSecret('workbenchCustomEndpoint');

  String? get workflowsCustomEndpoint {
    final raw = _raw('workflowsCustomEndpoint');
    return raw;
  }

  bool get workflowsCustomEndpointIsSecret => _isSecret('workflowsCustomEndpoint');

  String? get workstationsCustomEndpoint {
    final raw = _raw('workstationsCustomEndpoint');
    return raw;
  }

  bool get workstationsCustomEndpointIsSecret => _isSecret('workstationsCustomEndpoint');

  String? get zone {
    final raw = _raw('zone');
    return raw;
  }

  bool get zoneIsSecret => _isSecret('zone');

}

final config = GcpConfig();

