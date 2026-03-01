import 'package:pulumi/pulumi.dart' as pulumi;
import 'business_case_operation_args.dart';
import 'report_details_response.dart';
import 'settings_response.dart';
import 'system_data_response.dart';

/// Business case resource.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BusinessCaseOperations_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var businessCaseOperation = new AzureNative.Migrate.BusinessCaseOperation("businessCaseOperation", new()
///     {
///         BusinessCaseName = "sample-business-case",
///         ProjectName = "multipleto8617project",
///         ResourceGroupName = "rgopenapi",
///         Settings = new AzureNative.Migrate.Inputs.SettingsArgs
///         {
///             AzureArcSettings = new AzureNative.Migrate.Inputs.AzureArcSettingsArgs
///             {
///                 AzureArcState = AzureNative.Migrate.AzureArcState.Enabled,
///                 LaborCostPercentage = 70,
///                 ManagementSettings = new AzureNative.Migrate.Inputs.AzureArcManagementSettingsArgs
///                 {
///                     MonitoringSettings = new AzureNative.Migrate.Inputs.AzureArcMonitoringSettingsArgs
///                     {
///                         AlertRulesCount = 10,
///                         LogsVolumeInGB = 0.5,
///                     },
///                 },
///             },
///             AzureSettings = new AzureNative.Migrate.Inputs.AzureSettingsArgs
///             {
///                 AvsLaborCostPercentage = 0,
///                 BusinessCaseType = AzureNative.Migrate.MigrationStrategy.OptimizeForCost,
///                 ComfortFactor = 29,
///                 Currency = AzureNative.Migrate.BusinessCaseCurrency.USD,
///                 DiscountPercentage = 83,
///                 IaasLaborCostPercentage = 94,
///                 InfrastructureGrowthRate = 83,
///                 NetworkCostPercentage = 40,
///                 PaasLaborCostPercentage = 47,
///                 PerYearMigrationCompletionPercentage =
///                 {
///                     { "Year0", 20 },
///                     { "Year1", 30 },
///                     { "Year2", 60 },
///                     { "Year3", 90 },
///                 },
///                 PerformanceDataEndTime = "2023-11-08T07:10:07.764Z",
///                 PerformanceDataStartTime = "2023-11-08T07:10:07.764Z",
///                 PerformanceUtilizationPercentile = 4,
///                 SavingsOption = AzureNative.Migrate.SavingsOption.RI3Year,
///                 TargetLocation = "WestUs2",
///                 Wacc = 79,
///                 WorkloadDiscoverySource = AzureNative.Migrate.DiscoverySource.Appliance,
///             },
///             OnPremiseSettings = new AzureNative.Migrate.Inputs.OnPremiseSettingsArgs
///             {
///                 ComputeSettings = new AzureNative.Migrate.Inputs.ComputeSettingsArgs
///                 {
///                     HyperthreadCoreToMemoryRatio = 12,
///                     Price = 16,
///                     RhelLinuxServerLicensing = new AzureNative.Migrate.Inputs.LinuxServerLicensingSettingsArgs
///                     {
///                         LicenseCost = 9,
///                     },
///                     SqlServerLicensing = new[]
///                     {
///                         new AzureNative.Migrate.Inputs.SqlServerLicensingSettingsArgs
///                         {
///                             LicenseCost = 27,
///                             SoftwareAssuranceCost = 16,
///                             Version = AzureNative.Migrate.SqlServerLicenseType.Enterprise,
///                         },
///                     },
///                     SuseLinuxServerLicensing = new AzureNative.Migrate.Inputs.LinuxServerLicensingSettingsArgs
///                     {
///                         LicenseCost = 9,
///                     },
///                     VirtualizationSoftwareSettings = new AzureNative.Migrate.Inputs.VirtualizationSoftwareSettingsArgs
///                     {
///                         VMwareCloudFoundationLicenseCost = 7,
///                     },
///                     WindowsServerLicensing = new AzureNative.Migrate.Inputs.WindowsServerLicensingSettingsArgs
///                     {
///                         LicenseCost = 9,
///                         LicensesPerCore = 11,
///                         SoftwareAssuranceCost = 1,
///                     },
///                 },
///                 FacilitySettings = new AzureNative.Migrate.Inputs.FacilitySettingsArgs
///                 {
///                     FacilitiesCostPerKwh = 28,
///                 },
///                 LaborSettings = new AzureNative.Migrate.Inputs.LaborSettingsArgs
///                 {
///                     HourlyAdminCost = 25,
///                     PhysicalServersPerAdmin = 6,
///                     VirtualMachinesPerAdmin = 24,
///                 },
///                 ManagementSettings = new AzureNative.Migrate.Inputs.ManagementSettingsArgs
///                 {
///                     HypervVirtualizationManagementSettings = new AzureNative.Migrate.Inputs.HypervVirtualizationManagementSettingsArgs
///                     {
///                         LicenseAndSupportList = new[]
///                         {
///                             new AzureNative.Migrate.Inputs.HypervLicenseArgs
///                             {
///                                 LicenseCost = 4,
///                                 LicenseType = AzureNative.Migrate.HyperVLicenseType.Standard,
///                             },
///                         },
///                         NumberOfPhysicalCoresPerLicense = 2,
///                         SoftwareAssuranceCost = 11,
///                     },
///                     OtherManagementCostsSettings = new AzureNative.Migrate.Inputs.OtherManagementCostsSettingsArgs
///                     {
///                         DataProtectionCostPerServerPerYear = 18,
///                         MonitoringCostPerServerPerYear = 10,
///                         PatchingCostPerServerPerYear = 18,
///                     },
///                     ThirdPartyManagementSettings = new AzureNative.Migrate.Inputs.ThirdPartyManagementSettingsArgs
///                     {
///                         LicenseCost = 23,
///                         SupportCost = 9,
///                     },
///                 },
///                 NetworkSettings = new AzureNative.Migrate.Inputs.NetworkSettingsArgs
///                 {
///                     HardwareSoftwareCostPercentage = 50,
///                     MaintenanceCostPercentage = 48,
///                 },
///                 SecuritySettings = new AzureNative.Migrate.Inputs.SecuritySettingsArgs
///                 {
///                     ServerSecurityCostPerServerPerYear = 14,
///                     SqlServerSecurityCostPerServerPerYear = 7,
///                 },
///                 StorageSettings = new AzureNative.Migrate.Inputs.StorageSettingsArgs
///                 {
///                     CostPerGbPerMonth = 22,
///                     MaintainanceCostPercentageToAcquisitionCost = 1,
///                 },
///             },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	migrate "github.com/pulumi/pulumi-azure-native-sdk/migrate/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := migrate.NewBusinessCaseOperation(ctx, "businessCaseOperation", &migrate.BusinessCaseOperationArgs{
/// 			BusinessCaseName:  pulumi.String("sample-business-case"),
/// 			ProjectName:       pulumi.String("multipleto8617project"),
/// 			ResourceGroupName: pulumi.String("rgopenapi"),
/// 			Settings: &migrate.SettingsArgs{
/// 				AzureArcSettings: &migrate.AzureArcSettingsArgs{
/// 					AzureArcState:       pulumi.String(migrate.AzureArcStateEnabled),
/// 					LaborCostPercentage: pulumi.Float64(70),
/// 					ManagementSettings: &migrate.AzureArcManagementSettingsArgs{
/// 						MonitoringSettings: &migrate.AzureArcMonitoringSettingsArgs{
/// 							AlertRulesCount: pulumi.Int(10),
/// 							LogsVolumeInGB:  pulumi.Float64(0.5),
/// 						},
/// 					},
/// 				},
/// 				AzureSettings: &migrate.AzureSettingsArgs{
/// 					AvsLaborCostPercentage:   pulumi.Float64(0),
/// 					BusinessCaseType:         pulumi.String(migrate.MigrationStrategyOptimizeForCost),
/// 					ComfortFactor:            pulumi.Float64(29),
/// 					Currency:                 pulumi.String(migrate.BusinessCaseCurrencyUSD),
/// 					DiscountPercentage:       pulumi.Float64(83),
/// 					IaasLaborCostPercentage:  pulumi.Float64(94),
/// 					InfrastructureGrowthRate: pulumi.Float64(83),
/// 					NetworkCostPercentage:    pulumi.Float64(40),
/// 					PaasLaborCostPercentage:  pulumi.Float64(47),
/// 					PerYearMigrationCompletionPercentage: pulumi.Float64Map{
/// 						"Year0": pulumi.Float64(20),
/// 						"Year1": pulumi.Float64(30),
/// 						"Year2": pulumi.Float64(60),
/// 						"Year3": pulumi.Float64(90),
/// 					},
/// 					PerformanceDataEndTime:           pulumi.String("2023-11-08T07:10:07.764Z"),
/// 					PerformanceDataStartTime:         pulumi.String("2023-11-08T07:10:07.764Z"),
/// 					PerformanceUtilizationPercentile: pulumi.Float64(4),
/// 					SavingsOption:                    pulumi.String(migrate.SavingsOptionRI3Year),
/// 					TargetLocation:                   pulumi.String("WestUs2"),
/// 					Wacc:                             pulumi.Float64(79),
/// 					WorkloadDiscoverySource:          pulumi.String(migrate.DiscoverySourceAppliance),
/// 				},
/// 				OnPremiseSettings: &migrate.OnPremiseSettingsArgs{
/// 					ComputeSettings: &migrate.ComputeSettingsArgs{
/// 						HyperthreadCoreToMemoryRatio: pulumi.Float64(12),
/// 						Price:                        pulumi.Float64(16),
/// 						RhelLinuxServerLicensing: &migrate.LinuxServerLicensingSettingsArgs{
/// 							LicenseCost: pulumi.Float64(9),
/// 						},
/// 						SqlServerLicensing: migrate.SqlServerLicensingSettingsArray{
/// 							&migrate.SqlServerLicensingSettingsArgs{
/// 								LicenseCost:           pulumi.Float64(27),
/// 								SoftwareAssuranceCost: pulumi.Float64(16),
/// 								Version:               pulumi.String(migrate.SqlServerLicenseTypeEnterprise),
/// 							},
/// 						},
/// 						SuseLinuxServerLicensing: &migrate.LinuxServerLicensingSettingsArgs{
/// 							LicenseCost: pulumi.Float64(9),
/// 						},
/// 						VirtualizationSoftwareSettings: &migrate.VirtualizationSoftwareSettingsArgs{
/// 							VMwareCloudFoundationLicenseCost: pulumi.Float64(7),
/// 						},
/// 						WindowsServerLicensing: &migrate.WindowsServerLicensingSettingsArgs{
/// 							LicenseCost:           pulumi.Float64(9),
/// 							LicensesPerCore:       pulumi.Int(11),
/// 							SoftwareAssuranceCost: pulumi.Float64(1),
/// 						},
/// 					},
/// 					FacilitySettings: &migrate.FacilitySettingsArgs{
/// 						FacilitiesCostPerKwh: pulumi.Float64(28),
/// 					},
/// 					LaborSettings: &migrate.LaborSettingsArgs{
/// 						HourlyAdminCost:         pulumi.Float64(25),
/// 						PhysicalServersPerAdmin: pulumi.Int(6),
/// 						VirtualMachinesPerAdmin: pulumi.Int(24),
/// 					},
/// 					ManagementSettings: &migrate.ManagementSettingsArgs{
/// 						HypervVirtualizationManagementSettings: &migrate.HypervVirtualizationManagementSettingsArgs{
/// 							LicenseAndSupportList: migrate.HypervLicenseArray{
/// 								&migrate.HypervLicenseArgs{
/// 									LicenseCost: pulumi.Float64(4),
/// 									LicenseType: pulumi.String(migrate.HyperVLicenseTypeStandard),
/// 								},
/// 							},
/// 							NumberOfPhysicalCoresPerLicense: pulumi.Int(2),
/// 							SoftwareAssuranceCost:           pulumi.Float64(11),
/// 						},
/// 						OtherManagementCostsSettings: &migrate.OtherManagementCostsSettingsArgs{
/// 							DataProtectionCostPerServerPerYear: pulumi.Float64(18),
/// 							MonitoringCostPerServerPerYear:     pulumi.Float64(10),
/// 							PatchingCostPerServerPerYear:       pulumi.Float64(18),
/// 						},
/// 						ThirdPartyManagementSettings: &migrate.ThirdPartyManagementSettingsArgs{
/// 							LicenseCost: pulumi.Float64(23),
/// 							SupportCost: pulumi.Float64(9),
/// 						},
/// 					},
/// 					NetworkSettings: &migrate.NetworkSettingsArgs{
/// 						HardwareSoftwareCostPercentage: pulumi.Float64(50),
/// 						MaintenanceCostPercentage:      pulumi.Float64(48),
/// 					},
/// 					SecuritySettings: &migrate.SecuritySettingsArgs{
/// 						ServerSecurityCostPerServerPerYear:    pulumi.Float64(14),
/// 						SqlServerSecurityCostPerServerPerYear: pulumi.Float64(7),
/// 					},
/// 					StorageSettings: &migrate.StorageSettingsArgs{
/// 						CostPerGbPerMonth: pulumi.Float64(22),
/// 						MaintainanceCostPercentageToAcquisitionCost: pulumi.Float64(1),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.migrate.BusinessCaseOperation;
/// import com.pulumi.azurenative.migrate.BusinessCaseOperationArgs;
/// import com.pulumi.azurenative.migrate.inputs.SettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.AzureArcSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.AzureArcManagementSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.AzureArcMonitoringSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.AzureSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.OnPremiseSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.ComputeSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.LinuxServerLicensingSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.VirtualizationSoftwareSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.WindowsServerLicensingSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.FacilitySettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.LaborSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.ManagementSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.HypervVirtualizationManagementSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.OtherManagementCostsSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.ThirdPartyManagementSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.NetworkSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.SecuritySettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.StorageSettingsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var businessCaseOperation = new BusinessCaseOperation("businessCaseOperation", BusinessCaseOperationArgs.builder()
///             .businessCaseName("sample-business-case")
///             .projectName("multipleto8617project")
///             .resourceGroupName("rgopenapi")
///             .settings(SettingsArgs.builder()
///                 .azureArcSettings(AzureArcSettingsArgs.builder()
///                     .azureArcState("Enabled")
///                     .laborCostPercentage(70.0)
///                     .managementSettings(AzureArcManagementSettingsArgs.builder()
///                         .monitoringSettings(AzureArcMonitoringSettingsArgs.builder()
///                             .alertRulesCount(10)
///                             .logsVolumeInGB(0.5)
///                             .build())
///                         .build())
///                     .build())
///                 .azureSettings(AzureSettingsArgs.builder()
///                     .avsLaborCostPercentage(0.0)
///                     .businessCaseType("OptimizeForCost")
///                     .comfortFactor(29.0)
///                     .currency("USD")
///                     .discountPercentage(83.0)
///                     .iaasLaborCostPercentage(94.0)
///                     .infrastructureGrowthRate(83.0)
///                     .networkCostPercentage(40.0)
///                     .paasLaborCostPercentage(47.0)
///                     .perYearMigrationCompletionPercentage(Map.ofEntries(
///                         Map.entry("Year0", 20.0),
///                         Map.entry("Year1", 30.0),
///                         Map.entry("Year2", 60.0),
///                         Map.entry("Year3", 90.0)
///                     ))
///                     .performanceDataEndTime("2023-11-08T07:10:07.764Z")
///                     .performanceDataStartTime("2023-11-08T07:10:07.764Z")
///                     .performanceUtilizationPercentile(4.0)
///                     .savingsOption("RI3Year")
///                     .targetLocation("WestUs2")
///                     .wacc(79.0)
///                     .workloadDiscoverySource("Appliance")
///                     .build())
///                 .onPremiseSettings(OnPremiseSettingsArgs.builder()
///                     .computeSettings(ComputeSettingsArgs.builder()
///                         .hyperthreadCoreToMemoryRatio(12.0)
///                         .price(16.0)
///                         .rhelLinuxServerLicensing(LinuxServerLicensingSettingsArgs.builder()
///                             .licenseCost(9.0)
///                             .build())
///                         .sqlServerLicensing(SqlServerLicensingSettingsArgs.builder()
///                             .licenseCost(27.0)
///                             .softwareAssuranceCost(16.0)
///                             .version("Enterprise")
///                             .build())
///                         .suseLinuxServerLicensing(LinuxServerLicensingSettingsArgs.builder()
///                             .licenseCost(9.0)
///                             .build())
///                         .virtualizationSoftwareSettings(VirtualizationSoftwareSettingsArgs.builder()
///                             .vMwareCloudFoundationLicenseCost(7.0)
///                             .build())
///                         .windowsServerLicensing(WindowsServerLicensingSettingsArgs.builder()
///                             .licenseCost(9.0)
///                             .licensesPerCore(11)
///                             .softwareAssuranceCost(1.0)
///                             .build())
///                         .build())
///                     .facilitySettings(FacilitySettingsArgs.builder()
///                         .facilitiesCostPerKwh(28.0)
///                         .build())
///                     .laborSettings(LaborSettingsArgs.builder()
///                         .hourlyAdminCost(25.0)
///                         .physicalServersPerAdmin(6)
///                         .virtualMachinesPerAdmin(24)
///                         .build())
///                     .managementSettings(ManagementSettingsArgs.builder()
///                         .hypervVirtualizationManagementSettings(HypervVirtualizationManagementSettingsArgs.builder()
///                             .licenseAndSupportList(HypervLicenseArgs.builder()
///                                 .licenseCost(4.0)
///                                 .licenseType("Standard")
///                                 .build())
///                             .numberOfPhysicalCoresPerLicense(2)
///                             .softwareAssuranceCost(11.0)
///                             .build())
///                         .otherManagementCostsSettings(OtherManagementCostsSettingsArgs.builder()
///                             .dataProtectionCostPerServerPerYear(18.0)
///                             .monitoringCostPerServerPerYear(10.0)
///                             .patchingCostPerServerPerYear(18.0)
///                             .build())
///                         .thirdPartyManagementSettings(ThirdPartyManagementSettingsArgs.builder()
///                             .licenseCost(23.0)
///                             .supportCost(9.0)
///                             .build())
///                         .build())
///                     .networkSettings(NetworkSettingsArgs.builder()
///                         .hardwareSoftwareCostPercentage(50.0)
///                         .maintenanceCostPercentage(48.0)
///                         .build())
///                     .securitySettings(SecuritySettingsArgs.builder()
///                         .serverSecurityCostPerServerPerYear(14.0)
///                         .sqlServerSecurityCostPerServerPerYear(7.0)
///                         .build())
///                     .storageSettings(StorageSettingsArgs.builder()
///                         .costPerGbPerMonth(22.0)
///                         .maintainanceCostPercentageToAcquisitionCost(1.0)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const businessCaseOperation = new azure_native.migrate.BusinessCaseOperation("businessCaseOperation", {
///     businessCaseName: "sample-business-case",
///     projectName: "multipleto8617project",
///     resourceGroupName: "rgopenapi",
///     settings: {
///         azureArcSettings: {
///             azureArcState: azure_native.migrate.AzureArcState.Enabled,
///             laborCostPercentage: 70,
///             managementSettings: {
///                 monitoringSettings: {
///                     alertRulesCount: 10,
///                     logsVolumeInGB: 0.5,
///                 },
///             },
///         },
///         azureSettings: {
///             avsLaborCostPercentage: 0,
///             businessCaseType: azure_native.migrate.MigrationStrategy.OptimizeForCost,
///             comfortFactor: 29,
///             currency: azure_native.migrate.BusinessCaseCurrency.USD,
///             discountPercentage: 83,
///             iaasLaborCostPercentage: 94,
///             infrastructureGrowthRate: 83,
///             networkCostPercentage: 40,
///             paasLaborCostPercentage: 47,
///             perYearMigrationCompletionPercentage: {
///                 Year0: 20,
///                 Year1: 30,
///                 Year2: 60,
///                 Year3: 90,
///             },
///             performanceDataEndTime: "2023-11-08T07:10:07.764Z",
///             performanceDataStartTime: "2023-11-08T07:10:07.764Z",
///             performanceUtilizationPercentile: 4,
///             savingsOption: azure_native.migrate.SavingsOption.RI3Year,
///             targetLocation: "WestUs2",
///             wacc: 79,
///             workloadDiscoverySource: azure_native.migrate.DiscoverySource.Appliance,
///         },
///         onPremiseSettings: {
///             computeSettings: {
///                 hyperthreadCoreToMemoryRatio: 12,
///                 price: 16,
///                 rhelLinuxServerLicensing: {
///                     licenseCost: 9,
///                 },
///                 sqlServerLicensing: [{
///                     licenseCost: 27,
///                     softwareAssuranceCost: 16,
///                     version: azure_native.migrate.SqlServerLicenseType.Enterprise,
///                 }],
///                 suseLinuxServerLicensing: {
///                     licenseCost: 9,
///                 },
///                 virtualizationSoftwareSettings: {
///                     vMwareCloudFoundationLicenseCost: 7,
///                 },
///                 windowsServerLicensing: {
///                     licenseCost: 9,
///                     licensesPerCore: 11,
///                     softwareAssuranceCost: 1,
///                 },
///             },
///             facilitySettings: {
///                 facilitiesCostPerKwh: 28,
///             },
///             laborSettings: {
///                 hourlyAdminCost: 25,
///                 physicalServersPerAdmin: 6,
///                 virtualMachinesPerAdmin: 24,
///             },
///             managementSettings: {
///                 hypervVirtualizationManagementSettings: {
///                     licenseAndSupportList: [{
///                         licenseCost: 4,
///                         licenseType: azure_native.migrate.HyperVLicenseType.Standard,
///                     }],
///                     numberOfPhysicalCoresPerLicense: 2,
///                     softwareAssuranceCost: 11,
///                 },
///                 otherManagementCostsSettings: {
///                     dataProtectionCostPerServerPerYear: 18,
///                     monitoringCostPerServerPerYear: 10,
///                     patchingCostPerServerPerYear: 18,
///                 },
///                 thirdPartyManagementSettings: {
///                     licenseCost: 23,
///                     supportCost: 9,
///                 },
///             },
///             networkSettings: {
///                 hardwareSoftwareCostPercentage: 50,
///                 maintenanceCostPercentage: 48,
///             },
///             securitySettings: {
///                 serverSecurityCostPerServerPerYear: 14,
///                 sqlServerSecurityCostPerServerPerYear: 7,
///             },
///             storageSettings: {
///                 costPerGbPerMonth: 22,
///                 maintainanceCostPercentageToAcquisitionCost: 1,
///             },
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// business_case_operation = azure_native.migrate.BusinessCaseOperation("businessCaseOperation",
///     business_case_name="sample-business-case",
///     project_name="multipleto8617project",
///     resource_group_name="rgopenapi",
///     settings={
///         "azure_arc_settings": {
///             "azure_arc_state": azure_native.migrate.AzureArcState.ENABLED,
///             "labor_cost_percentage": 70,
///             "management_settings": {
///                 "monitoring_settings": {
///                     "alert_rules_count": 10,
///                     "logs_volume_in_gb": 0.5,
///                 },
///             },
///         },
///         "azure_settings": {
///             "avs_labor_cost_percentage": 0,
///             "business_case_type": azure_native.migrate.MigrationStrategy.OPTIMIZE_FOR_COST,
///             "comfort_factor": 29,
///             "currency": azure_native.migrate.BusinessCaseCurrency.USD,
///             "discount_percentage": 83,
///             "iaas_labor_cost_percentage": 94,
///             "infrastructure_growth_rate": 83,
///             "network_cost_percentage": 40,
///             "paas_labor_cost_percentage": 47,
///             "per_year_migration_completion_percentage": {
///                 "Year0": 20,
///                 "Year1": 30,
///                 "Year2": 60,
///                 "Year3": 90,
///             },
///             "performance_data_end_time": "2023-11-08T07:10:07.764Z",
///             "performance_data_start_time": "2023-11-08T07:10:07.764Z",
///             "performance_utilization_percentile": 4,
///             "savings_option": azure_native.migrate.SavingsOption.RI3_YEAR,
///             "target_location": "WestUs2",
///             "wacc": 79,
///             "workload_discovery_source": azure_native.migrate.DiscoverySource.APPLIANCE,
///         },
///         "on_premise_settings": {
///             "compute_settings": {
///                 "hyperthread_core_to_memory_ratio": 12,
///                 "price": 16,
///                 "rhel_linux_server_licensing": {
///                     "license_cost": 9,
///                 },
///                 "sql_server_licensing": [{
///                     "license_cost": 27,
///                     "software_assurance_cost": 16,
///                     "version": azure_native.migrate.SqlServerLicenseType.ENTERPRISE,
///                 }],
///                 "suse_linux_server_licensing": {
///                     "license_cost": 9,
///                 },
///                 "virtualization_software_settings": {
///                     "v_mware_cloud_foundation_license_cost": 7,
///                 },
///                 "windows_server_licensing": {
///                     "license_cost": 9,
///                     "licenses_per_core": 11,
///                     "software_assurance_cost": 1,
///                 },
///             },
///             "facility_settings": {
///                 "facilities_cost_per_kwh": 28,
///             },
///             "labor_settings": {
///                 "hourly_admin_cost": 25,
///                 "physical_servers_per_admin": 6,
///                 "virtual_machines_per_admin": 24,
///             },
///             "management_settings": {
///                 "hyperv_virtualization_management_settings": {
///                     "license_and_support_list": [{
///                         "license_cost": 4,
///                         "license_type": azure_native.migrate.HyperVLicenseType.STANDARD,
///                     }],
///                     "number_of_physical_cores_per_license": 2,
///                     "software_assurance_cost": 11,
///                 },
///                 "other_management_costs_settings": {
///                     "data_protection_cost_per_server_per_year": 18,
///                     "monitoring_cost_per_server_per_year": 10,
///                     "patching_cost_per_server_per_year": 18,
///                 },
///                 "third_party_management_settings": {
///                     "license_cost": 23,
///                     "support_cost": 9,
///                 },
///             },
///             "network_settings": {
///                 "hardware_software_cost_percentage": 50,
///                 "maintenance_cost_percentage": 48,
///             },
///             "security_settings": {
///                 "server_security_cost_per_server_per_year": 14,
///                 "sql_server_security_cost_per_server_per_year": 7,
///             },
///             "storage_settings": {
///                 "cost_per_gb_per_month": 22,
///                 "maintainance_cost_percentage_to_acquisition_cost": 1,
///             },
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   businessCaseOperation:
///     type: azure-native:migrate:BusinessCaseOperation
///     properties:
///       businessCaseName: sample-business-case
///       projectName: multipleto8617project
///       resourceGroupName: rgopenapi
///       settings:
///         azureArcSettings:
///           azureArcState: Enabled
///           laborCostPercentage: 70
///           managementSettings:
///             monitoringSettings:
///               alertRulesCount: 10
///               logsVolumeInGB: 0.5
///         azureSettings:
///           avsLaborCostPercentage: 0
///           businessCaseType: OptimizeForCost
///           comfortFactor: 29
///           currency: USD
///           discountPercentage: 83
///           iaasLaborCostPercentage: 94
///           infrastructureGrowthRate: 83
///           networkCostPercentage: 40
///           paasLaborCostPercentage: 47
///           perYearMigrationCompletionPercentage:
///             Year0: 20
///             Year1: 30
///             Year2: 60
///             Year3: 90
///           performanceDataEndTime: 2023-11-08T07:10:07.764Z
///           performanceDataStartTime: 2023-11-08T07:10:07.764Z
///           performanceUtilizationPercentile: 4
///           savingsOption: RI3Year
///           targetLocation: WestUs2
///           wacc: 79
///           workloadDiscoverySource: Appliance
///         onPremiseSettings:
///           computeSettings:
///             hyperthreadCoreToMemoryRatio: 12
///             price: 16
///             rhelLinuxServerLicensing:
///               licenseCost: 9
///             sqlServerLicensing:
///               - licenseCost: 27
///                 softwareAssuranceCost: 16
///                 version: Enterprise
///             suseLinuxServerLicensing:
///               licenseCost: 9
///             virtualizationSoftwareSettings:
///               vMwareCloudFoundationLicenseCost: 7
///             windowsServerLicensing:
///               licenseCost: 9
///               licensesPerCore: 11
///               softwareAssuranceCost: 1
///           facilitySettings:
///             facilitiesCostPerKwh: 28
///           laborSettings:
///             hourlyAdminCost: 25
///             physicalServersPerAdmin: 6
///             virtualMachinesPerAdmin: 24
///           managementSettings:
///             hypervVirtualizationManagementSettings:
///               licenseAndSupportList:
///                 - licenseCost: 4
///                   licenseType: Standard
///               numberOfPhysicalCoresPerLicense: 2
///               softwareAssuranceCost: 11
///             otherManagementCostsSettings:
///               dataProtectionCostPerServerPerYear: 18
///               monitoringCostPerServerPerYear: 10
///               patchingCostPerServerPerYear: 18
///             thirdPartyManagementSettings:
///               licenseCost: 23
///               supportCost: 9
///           networkSettings:
///             hardwareSoftwareCostPercentage: 50
///             maintenanceCostPercentage: 48
///           securitySettings:
///             serverSecurityCostPerServerPerYear: 14
///             sqlServerSecurityCostPerServerPerYear: 7
///           storageSettings:
///             costPerGbPerMonth: 22
///             maintainanceCostPercentageToAcquisitionCost: 1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:migrate:BusinessCaseOperation sample-business-case /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/businessCases/{businessCaseName}
/// ```
class BusinessCaseOperation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// Gets the state of business case reports.
  late final pulumi.Output<List<ReportDetailsResponse>> reportStatusDetails;
  /// Business case settings.
  late final pulumi.Output<SettingsResponse?> settings;
  /// Business case state.
  late final pulumi.Output<String> state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [BusinessCaseOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BusinessCaseOperation]. {@macro pulumi_migrate_business_case_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BusinessCaseOperation(
    String name, {
    BusinessCaseOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:BusinessCaseOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.reportStatusDetails = registerOutput<List<ReportDetailsResponse>>('reportStatusDetails');
    this.settings = registerOutput<SettingsResponse?>('settings');
    this.state = registerOutput<String>('state');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
