// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_ssis_catalog_info.dart';
import 'integration_runtime_ssis_copy_compute_scale.dart';
import 'integration_runtime_ssis_custom_setup_script.dart';
import 'integration_runtime_ssis_express_custom_setup.dart';
import 'integration_runtime_ssis_express_vnet_integration.dart';
import 'integration_runtime_ssis_package_store.dart';
import 'integration_runtime_ssis_pipeline_external_compute_scale.dart';
import 'integration_runtime_ssis_proxy.dart';
import 'integration_runtime_ssis_vnet_integration.dart';

/// {@template pulumi_datafactory_integration_runtime_ssis_integration_runtime_ssis_args_doc}
/// The set of arguments for IntegrationRuntimeSsis.
/// {@endtemplate}
/// {@macro pulumi_datafactory_integration_runtime_ssis_integration_runtime_ssis_args_doc}
class IntegrationRuntimeSsisArgs {
  /// A `catalog_info` block as defined below.
  final pulumi.Input<IntegrationRuntimeSsisCatalogInfo>? catalogInfo;
  /// One `copy_compute_scale` block as defined below.
  final pulumi.Input<IntegrationRuntimeSsisCopyComputeScale>? copyComputeScale;
  /// The name of a Data Factory Credential that the SSIS integration will use to access data sources. For example, `azure.datafactory.CredentialUserManagedIdentity`
  ///
  /// > **Note:** If `credential_name` is omitted, the integration runtime will use the Data Factory assigned identity.
  final pulumi.Input<String>? credentialName;
  /// A `custom_setup_script` block as defined below.
  final pulumi.Input<IntegrationRuntimeSsisCustomSetupScript>? customSetupScript;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// Integration runtime description.
  final pulumi.Input<String>? description;
  /// The Azure-SSIS Integration Runtime edition. Valid values are `Standard` and `Enterprise`. Defaults to `Standard`.
  final pulumi.Input<String>? edition;
  /// An `express_custom_setup` block as defined below.
  final pulumi.Input<IntegrationRuntimeSsisExpressCustomSetup>? expressCustomSetup;
  /// A `express_vnet_integration` block as defined below.
  final pulumi.Input<IntegrationRuntimeSsisExpressVnetIntegration>? expressVnetIntegration;
  /// The type of the license that is used. Valid values are `LicenseIncluded` and `BasePrice`. Defaults to `LicenseIncluded`.
  final pulumi.Input<String>? licenseType;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Defines the maximum parallel executions per node. Defaults to `1`. Max is `1`.
  final pulumi.Input<int>? maxParallelExecutionsPerNode;
  /// Specifies the name of the Azure-SSIS Integration Runtime. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// The size of the nodes on which the Azure-SSIS Integration Runtime runs. Valid values are: `Standard_D2_v3`, `Standard_D4_v3`, `Standard_D8_v3`, `Standard_D16_v3`, `Standard_D32_v3`, `Standard_D64_v3`, `Standard_E2_v3`, `Standard_E4_v3`, `Standard_E8_v3`, `Standard_E16_v3`, `Standard_E32_v3`, `Standard_E64_v3`, `Standard_D1_v2`, `Standard_D2_v2`, `Standard_D3_v2`, `Standard_D4_v2`, `Standard_A4_v2` and `Standard_A8_v2`
  final pulumi.Input<String> nodeSize;
  /// Number of nodes for the Azure-SSIS Integration Runtime. Max is `10`. Defaults to `1`.
  final pulumi.Input<int>? numberOfNodes;
  /// One or more `package_store` block as defined below.
  final pulumi.Input<List<IntegrationRuntimeSsisPackageStore>>? packageStores;
  /// One `pipeline_external_compute_scale` block as defined below.
  final pulumi.Input<IntegrationRuntimeSsisPipelineExternalComputeScale>? pipelineExternalComputeScale;
  /// A `proxy` block as defined below.
  final pulumi.Input<IntegrationRuntimeSsisProxy>? proxy;
  /// A `vnet_integration` block as defined below.
  final pulumi.Input<IntegrationRuntimeSsisVnetIntegration>? vnetIntegration;

  /// Creates a new [IntegrationRuntimeSsisArgs].
  /// [catalogInfo] A `catalog_info` block as defined below.
  /// [copyComputeScale] One `copy_compute_scale` block as defined below.
  /// [credentialName] The name of a Data Factory Credential that the SSIS integration will use to access data sources. For example, `azure.datafactory.CredentialUserManagedIdentity`
  /// [customSetupScript] A `custom_setup_script` block as defined below.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] Integration runtime description.
  /// [edition] The Azure-SSIS Integration Runtime edition. Valid values are `Standard` and `Enterprise`. Defaults to `Standard`.
  /// [expressCustomSetup] An `express_custom_setup` block as defined below.
  /// [expressVnetIntegration] A `express_vnet_integration` block as defined below.
  /// [licenseType] The type of the license that is used. Valid values are `LicenseIncluded` and `BasePrice`. Defaults to `LicenseIncluded`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [maxParallelExecutionsPerNode] Defines the maximum parallel executions per node. Defaults to `1`. Max is `1`.
  /// [name] Specifies the name of the Azure-SSIS Integration Runtime. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [nodeSize] The size of the nodes on which the Azure-SSIS Integration Runtime runs. Valid values are: `Standard_D2_v3`, `Standard_D4_v3`, `Standard_D8_v3`, `Standard_D16_v3`, `Standard_D32_v3`, `Standard_D64_v3`, `Standard_E2_v3`, `Standard_E4_v3`, `Standard_E8_v3`, `Standard_E16_v3`, `Standard_E32_v3`, `Standard_E64_v3`, `Standard_D1_v2`, `Standard_D2_v2`, `Standard_D3_v2`, `Standard_D4_v2`, `Standard_A4_v2` and `Standard_A8_v2`
  /// [numberOfNodes] Number of nodes for the Azure-SSIS Integration Runtime. Max is `10`. Defaults to `1`.
  /// [packageStores] One or more `package_store` block as defined below.
  /// [pipelineExternalComputeScale] One `pipeline_external_compute_scale` block as defined below.
  /// [proxy] A `proxy` block as defined below.
  /// [vnetIntegration] A `vnet_integration` block as defined below.
  IntegrationRuntimeSsisArgs({
    IntegrationRuntimeSsisCatalogInfo? catalogInfo,
    IntegrationRuntimeSsisCopyComputeScale? copyComputeScale,
    String? credentialName,
    IntegrationRuntimeSsisCustomSetupScript? customSetupScript,
    required String dataFactoryId,
    String? description,
    String? edition,
    IntegrationRuntimeSsisExpressCustomSetup? expressCustomSetup,
    IntegrationRuntimeSsisExpressVnetIntegration? expressVnetIntegration,
    String? licenseType,
    String? location,
    int? maxParallelExecutionsPerNode,
    String? name,
    required String nodeSize,
    int? numberOfNodes,
    List<IntegrationRuntimeSsisPackageStore>? packageStores,
    IntegrationRuntimeSsisPipelineExternalComputeScale? pipelineExternalComputeScale,
    IntegrationRuntimeSsisProxy? proxy,
    IntegrationRuntimeSsisVnetIntegration? vnetIntegration,
  }) :
      catalogInfo = pulumi.Input.asOptionalInput<IntegrationRuntimeSsisCatalogInfo>(catalogInfo),
      copyComputeScale = pulumi.Input.asOptionalInput<IntegrationRuntimeSsisCopyComputeScale>(copyComputeScale),
      credentialName = pulumi.Input.asOptionalInput<String>(credentialName),
      customSetupScript = pulumi.Input.asOptionalInput<IntegrationRuntimeSsisCustomSetupScript>(customSetupScript),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      edition = pulumi.Input.asOptionalInput<String>(edition),
      expressCustomSetup = pulumi.Input.asOptionalInput<IntegrationRuntimeSsisExpressCustomSetup>(expressCustomSetup),
      expressVnetIntegration = pulumi.Input.asOptionalInput<IntegrationRuntimeSsisExpressVnetIntegration>(expressVnetIntegration),
      licenseType = pulumi.Input.asOptionalInput<String>(licenseType),
      location = pulumi.Input.asOptionalInput<String>(location),
      maxParallelExecutionsPerNode = pulumi.Input.asOptionalInput<int>(maxParallelExecutionsPerNode),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeSize = pulumi.Input.asInput<String>(nodeSize),
      numberOfNodes = pulumi.Input.asOptionalInput<int>(numberOfNodes),
      packageStores = pulumi.Input.asOptionalInput<List<IntegrationRuntimeSsisPackageStore>>(packageStores),
      pipelineExternalComputeScale = pulumi.Input.asOptionalInput<IntegrationRuntimeSsisPipelineExternalComputeScale>(pipelineExternalComputeScale),
      proxy = pulumi.Input.asOptionalInput<IntegrationRuntimeSsisProxy>(proxy),
      vnetIntegration = pulumi.Input.asOptionalInput<IntegrationRuntimeSsisVnetIntegration>(vnetIntegration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogInfo': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisCatalogInfo, Map<String, dynamic>>(catalogInfo, (value) => value.toMap()),
      'copyComputeScale': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisCopyComputeScale, Map<String, dynamic>>(copyComputeScale, (value) => value.toMap()),
      'credentialName': ?credentialName,
      'customSetupScript': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisCustomSetupScript, Map<String, dynamic>>(customSetupScript, (value) => value.toMap()),
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'edition': ?edition,
      'expressCustomSetup': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisExpressCustomSetup, Map<String, dynamic>>(expressCustomSetup, (value) => value.toMap()),
      'expressVnetIntegration': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisExpressVnetIntegration, Map<String, dynamic>>(expressVnetIntegration, (value) => value.toMap()),
      'licenseType': ?licenseType,
      'location': ?location,
      'maxParallelExecutionsPerNode': ?maxParallelExecutionsPerNode,
      'name': ?name,
      'nodeSize': nodeSize,
      'numberOfNodes': ?numberOfNodes,
      'packageStores': ?pulumi.Input.mapOptionalInputValue<List<IntegrationRuntimeSsisPackageStore>, List<Map<String, dynamic>>>(packageStores, (value) => pulumi.Input.encodeList<IntegrationRuntimeSsisPackageStore, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pipelineExternalComputeScale': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisPipelineExternalComputeScale, Map<String, dynamic>>(pipelineExternalComputeScale, (value) => value.toMap()),
      'proxy': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisProxy, Map<String, dynamic>>(proxy, (value) => value.toMap()),
      'vnetIntegration': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeSsisVnetIntegration, Map<String, dynamic>>(vnetIntegration, (value) => value.toMap()),
    };
  }

  factory IntegrationRuntimeSsisArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisArgs(
      catalogInfo: map['catalogInfo'] == null ? null : IntegrationRuntimeSsisCatalogInfo.fromMap((map['catalogInfo'] as Map).cast<String, dynamic>()),
      copyComputeScale: map['copyComputeScale'] == null ? null : IntegrationRuntimeSsisCopyComputeScale.fromMap((map['copyComputeScale'] as Map).cast<String, dynamic>()),
      credentialName: map['credentialName'] == null ? null : map['credentialName'] as String,
      customSetupScript: map['customSetupScript'] == null ? null : IntegrationRuntimeSsisCustomSetupScript.fromMap((map['customSetupScript'] as Map).cast<String, dynamic>()),
      dataFactoryId: map['dataFactoryId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      edition: map['edition'] == null ? null : map['edition'] as String,
      expressCustomSetup: map['expressCustomSetup'] == null ? null : IntegrationRuntimeSsisExpressCustomSetup.fromMap((map['expressCustomSetup'] as Map).cast<String, dynamic>()),
      expressVnetIntegration: map['expressVnetIntegration'] == null ? null : IntegrationRuntimeSsisExpressVnetIntegration.fromMap((map['expressVnetIntegration'] as Map).cast<String, dynamic>()),
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      maxParallelExecutionsPerNode: map['maxParallelExecutionsPerNode'] == null ? null : map['maxParallelExecutionsPerNode'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      nodeSize: map['nodeSize'] as String,
      numberOfNodes: map['numberOfNodes'] == null ? null : map['numberOfNodes'] as int,
      packageStores: map['packageStores'] == null ? null : pulumi.Input.decodeList<IntegrationRuntimeSsisPackageStore>(map['packageStores'], (value) => IntegrationRuntimeSsisPackageStore.fromMap((value as Map).cast<String, dynamic>())),
      pipelineExternalComputeScale: map['pipelineExternalComputeScale'] == null ? null : IntegrationRuntimeSsisPipelineExternalComputeScale.fromMap((map['pipelineExternalComputeScale'] as Map).cast<String, dynamic>()),
      proxy: map['proxy'] == null ? null : IntegrationRuntimeSsisProxy.fromMap((map['proxy'] as Map).cast<String, dynamic>()),
      vnetIntegration: map['vnetIntegration'] == null ? null : IntegrationRuntimeSsisVnetIntegration.fromMap((map['vnetIntegration'] as Map).cast<String, dynamic>()),
    );
  }
}

