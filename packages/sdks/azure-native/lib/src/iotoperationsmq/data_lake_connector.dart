import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_image_response.dart';
import 'data_lake_connector_args.dart';
import 'data_lake_target_storage_response.dart';
import 'extended_location_property_response.dart';
import 'local_broker_connection_spec_response.dart';
import 'node_tolerations_response.dart';
import 'system_data_response.dart';

/// MQ dataLakeConnector resource
///
/// Uses Azure REST API version 2023-10-04-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-04-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DataLakeConnector_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataLakeConnector = new AzureNative.IoTOperationsMQ.DataLakeConnector("dataLakeConnector", new()
///     {
///         DataLakeConnectorName = "87v4D",
///         DatabaseFormat = AzureNative.IoTOperationsMQ.DataLakeDatabaseFormat.Delta,
///         ExtendedLocation = new AzureNative.IoTOperationsMQ.Inputs.ExtendedLocationPropertyArgs
///         {
///             Name = "an",
///             Type = AzureNative.IoTOperationsMQ.ExtendedLocationType.CustomLocation,
///         },
///         Image = new AzureNative.IoTOperationsMQ.Inputs.ContainerImageArgs
///         {
///             PullPolicy = "imfuzvqxgbdwliqnn",
///             PullSecrets = "klnqimxqsrdwhcqldjvdtsrs",
///             Repository = "m",
///             Tag = "jygfdiamhhm",
///         },
///         Instances = 53467,
///         LocalBrokerConnection = new AzureNative.IoTOperationsMQ.Inputs.LocalBrokerConnectionSpecArgs
///         {
///             Authentication = new AzureNative.IoTOperationsMQ.Inputs.LocalBrokerAuthenticationMethodsArgs
///             {
///                 Kubernetes = new AzureNative.IoTOperationsMQ.Inputs.LocalBrokerKubernetesAuthenticationArgs
///                 {
///                     SecretPath = "soukzfkouir",
///                     ServiceAccountTokenName = "suwetviuhmhorhvsidlznnufe",
///                 },
///             },
///             Endpoint = "xc",
///             Tls = new AzureNative.IoTOperationsMQ.Inputs.LocalBrokerConnectionTlsArgs
///             {
///                 TlsEnabled = true,
///                 TrustedCaCertificateConfigMap = "rinkomfeznsfedbmllxlbmmhc",
///             },
///         },
///         Location = "ewguwvlahlu",
///         LogLevel = "ikicyoalavfmqlodnupfjayxjti",
///         MqName = "Ox--3e65kYN0731DJ1Qg",
///         NodeTolerations = new AzureNative.IoTOperationsMQ.Inputs.NodeTolerationsArgs
///         {
///             Effect = "eeswvciblqmmaeesjoflyvxqbz",
///             Key = "wbrstdwxgm",
///             Operator = "lbegegneekwnyodtzraarivtwhmzep",
///             Value = "sfafsjdcezdmkwibxeluukxgl",
///         },
///         Protocol = AzureNative.IoTOperationsMQ.MqttProtocol.V3,
///         ResourceGroupName = "rgiotoperationsmq",
///         Tags = null,
///         Target = new AzureNative.IoTOperationsMQ.Inputs.DataLakeTargetStorageArgs
///         {
///             DatalakeStorage = new AzureNative.IoTOperationsMQ.Inputs.DataLakeServiceStorageArgs
///             {
///                 Authentication = new AzureNative.IoTOperationsMQ.Inputs.DataLakeServiceStorageAuthenticationArgs
///                 {
///                     AccessTokenSecretName = "cfaoxjbfbwdldqjbfczvovgooyqkl",
///                     SystemAssignedManagedIdentity = new AzureNative.IoTOperationsMQ.Inputs.ManagedIdentityAuthenticationArgs
///                     {
///                         Audience = "kjderojhpehosgfcrxxbh",
///                         ExtensionName = "cyckjqqzspleajbtkniwrfsqygjfhe",
///                     },
///                 },
///                 Endpoint = "bddy",
///             },
///             FabricOneLake = new AzureNative.IoTOperationsMQ.Inputs.DataLakeFabricStorageArgs
///             {
///                 Authentication = new AzureNative.IoTOperationsMQ.Inputs.DataLakeFabricStorageAuthenticationArgs
///                 {
///                     SystemAssignedManagedIdentity = new AzureNative.IoTOperationsMQ.Inputs.ManagedIdentityAuthenticationArgs
///                     {
///                         Audience = "kjderojhpehosgfcrxxbh",
///                         ExtensionName = "cyckjqqzspleajbtkniwrfsqygjfhe",
///                     },
///                 },
///                 Endpoint = "S.fabric.microsoft.com",
///                 FabricPath = AzureNative.IoTOperationsMQ.FabricPathType.Files,
///                 Guids = new AzureNative.IoTOperationsMQ.Inputs.FabricGuidsArgs
///                 {
///                     LakehouseGuid = "grsapopwjnuzbmnxbjnawaae",
///                     WorkspaceGuid = "iwqfplayvdkdxumpdc",
///                 },
///                 Names = new AzureNative.IoTOperationsMQ.Inputs.FabricNamesArgs
///                 {
///                     LakehouseName = "iqgqtk",
///                     WorkspaceName = "fxvlfhfcmlhcbgpopyqfikqsryct",
///                 },
///             },
///             LocalStorage = new AzureNative.IoTOperationsMQ.Inputs.DataLakeLocalStorageArgs
///             {
///                 VolumeName = "nmzsioldiwteljpplmftk",
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
/// 	iotoperationsmq "github.com/pulumi/pulumi-azure-native-sdk/iotoperationsmq/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotoperationsmq.NewDataLakeConnector(ctx, "dataLakeConnector", &iotoperationsmq.DataLakeConnectorArgs{
/// 			DataLakeConnectorName: pulumi.String("87v4D"),
/// 			DatabaseFormat:        pulumi.String(iotoperationsmq.DataLakeDatabaseFormatDelta),
/// 			ExtendedLocation: &iotoperationsmq.ExtendedLocationPropertyArgs{
/// 				Name: pulumi.String("an"),
/// 				Type: pulumi.String(iotoperationsmq.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			Image: &iotoperationsmq.ContainerImageArgs{
/// 				PullPolicy:  pulumi.String("imfuzvqxgbdwliqnn"),
/// 				PullSecrets: pulumi.String("klnqimxqsrdwhcqldjvdtsrs"),
/// 				Repository:  pulumi.String("m"),
/// 				Tag:         pulumi.String("jygfdiamhhm"),
/// 			},
/// 			Instances: pulumi.Int(53467),
/// 			LocalBrokerConnection: &iotoperationsmq.LocalBrokerConnectionSpecArgs{
/// 				Authentication: &iotoperationsmq.LocalBrokerAuthenticationMethodsArgs{
/// 					Kubernetes: &iotoperationsmq.LocalBrokerKubernetesAuthenticationArgs{
/// 						SecretPath:              pulumi.String("soukzfkouir"),
/// 						ServiceAccountTokenName: pulumi.String("suwetviuhmhorhvsidlznnufe"),
/// 					},
/// 				},
/// 				Endpoint: pulumi.String("xc"),
/// 				Tls: &iotoperationsmq.LocalBrokerConnectionTlsArgs{
/// 					TlsEnabled:                    pulumi.Bool(true),
/// 					TrustedCaCertificateConfigMap: pulumi.String("rinkomfeznsfedbmllxlbmmhc"),
/// 				},
/// 			},
/// 			Location: pulumi.String("ewguwvlahlu"),
/// 			LogLevel: pulumi.String("ikicyoalavfmqlodnupfjayxjti"),
/// 			MqName:   pulumi.String("Ox--3e65kYN0731DJ1Qg"),
/// 			NodeTolerations: &iotoperationsmq.NodeTolerationsArgs{
/// 				Effect:   pulumi.String("eeswvciblqmmaeesjoflyvxqbz"),
/// 				Key:      pulumi.String("wbrstdwxgm"),
/// 				Operator: pulumi.String("lbegegneekwnyodtzraarivtwhmzep"),
/// 				Value:    pulumi.String("sfafsjdcezdmkwibxeluukxgl"),
/// 			},
/// 			Protocol:          pulumi.String(iotoperationsmq.MqttProtocolV3),
/// 			ResourceGroupName: pulumi.String("rgiotoperationsmq"),
/// 			Tags:              pulumi.StringMap{},
/// 			Target: &iotoperationsmq.DataLakeTargetStorageArgs{
/// 				DatalakeStorage: &iotoperationsmq.DataLakeServiceStorageArgs{
/// 					Authentication: &iotoperationsmq.DataLakeServiceStorageAuthenticationArgs{
/// 						AccessTokenSecretName: pulumi.String("cfaoxjbfbwdldqjbfczvovgooyqkl"),
/// 						SystemAssignedManagedIdentity: &iotoperationsmq.ManagedIdentityAuthenticationArgs{
/// 							Audience:      pulumi.String("kjderojhpehosgfcrxxbh"),
/// 							ExtensionName: pulumi.String("cyckjqqzspleajbtkniwrfsqygjfhe"),
/// 						},
/// 					},
/// 					Endpoint: pulumi.String("bddy"),
/// 				},
/// 				FabricOneLake: &iotoperationsmq.DataLakeFabricStorageArgs{
/// 					Authentication: &iotoperationsmq.DataLakeFabricStorageAuthenticationArgs{
/// 						SystemAssignedManagedIdentity: &iotoperationsmq.ManagedIdentityAuthenticationArgs{
/// 							Audience:      pulumi.String("kjderojhpehosgfcrxxbh"),
/// 							ExtensionName: pulumi.String("cyckjqqzspleajbtkniwrfsqygjfhe"),
/// 						},
/// 					},
/// 					Endpoint:   pulumi.String("S.fabric.microsoft.com"),
/// 					FabricPath: pulumi.String(iotoperationsmq.FabricPathTypeFiles),
/// 					Guids: &iotoperationsmq.FabricGuidsArgs{
/// 						LakehouseGuid: pulumi.String("grsapopwjnuzbmnxbjnawaae"),
/// 						WorkspaceGuid: pulumi.String("iwqfplayvdkdxumpdc"),
/// 					},
/// 					Names: &iotoperationsmq.FabricNamesArgs{
/// 						LakehouseName: pulumi.String("iqgqtk"),
/// 						WorkspaceName: pulumi.String("fxvlfhfcmlhcbgpopyqfikqsryct"),
/// 					},
/// 				},
/// 				LocalStorage: &iotoperationsmq.DataLakeLocalStorageArgs{
/// 					VolumeName: pulumi.String("nmzsioldiwteljpplmftk"),
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
/// import com.pulumi.azurenative.iotoperationsmq.DataLakeConnector;
/// import com.pulumi.azurenative.iotoperationsmq.DataLakeConnectorArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ExtendedLocationPropertyArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ContainerImageArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.LocalBrokerConnectionSpecArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.LocalBrokerAuthenticationMethodsArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.LocalBrokerKubernetesAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.LocalBrokerConnectionTlsArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.NodeTolerationsArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.DataLakeTargetStorageArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.DataLakeServiceStorageArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.DataLakeServiceStorageAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ManagedIdentityAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.DataLakeFabricStorageArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.DataLakeFabricStorageAuthenticationArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.FabricGuidsArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.FabricNamesArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.DataLakeLocalStorageArgs;
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
///         var dataLakeConnector = new DataLakeConnector("dataLakeConnector", DataLakeConnectorArgs.builder()
///             .dataLakeConnectorName("87v4D")
///             .databaseFormat("delta")
///             .extendedLocation(ExtendedLocationPropertyArgs.builder()
///                 .name("an")
///                 .type("CustomLocation")
///                 .build())
///             .image(ContainerImageArgs.builder()
///                 .pullPolicy("imfuzvqxgbdwliqnn")
///                 .pullSecrets("klnqimxqsrdwhcqldjvdtsrs")
///                 .repository("m")
///                 .tag("jygfdiamhhm")
///                 .build())
///             .instances(53467)
///             .localBrokerConnection(LocalBrokerConnectionSpecArgs.builder()
///                 .authentication(LocalBrokerAuthenticationMethodsArgs.builder()
///                     .kubernetes(LocalBrokerKubernetesAuthenticationArgs.builder()
///                         .secretPath("soukzfkouir")
///                         .serviceAccountTokenName("suwetviuhmhorhvsidlznnufe")
///                         .build())
///                     .build())
///                 .endpoint("xc")
///                 .tls(LocalBrokerConnectionTlsArgs.builder()
///                     .tlsEnabled(true)
///                     .trustedCaCertificateConfigMap("rinkomfeznsfedbmllxlbmmhc")
///                     .build())
///                 .build())
///             .location("ewguwvlahlu")
///             .logLevel("ikicyoalavfmqlodnupfjayxjti")
///             .mqName("Ox--3e65kYN0731DJ1Qg")
///             .nodeTolerations(NodeTolerationsArgs.builder()
///                 .effect("eeswvciblqmmaeesjoflyvxqbz")
///                 .key("wbrstdwxgm")
///                 .operator("lbegegneekwnyodtzraarivtwhmzep")
///                 .value("sfafsjdcezdmkwibxeluukxgl")
///                 .build())
///             .protocol("v3")
///             .resourceGroupName("rgiotoperationsmq")
///             .tags(Map.ofEntries(
///             ))
///             .target(DataLakeTargetStorageArgs.builder()
///                 .datalakeStorage(DataLakeServiceStorageArgs.builder()
///                     .authentication(DataLakeServiceStorageAuthenticationArgs.builder()
///                         .accessTokenSecretName("cfaoxjbfbwdldqjbfczvovgooyqkl")
///                         .systemAssignedManagedIdentity(ManagedIdentityAuthenticationArgs.builder()
///                             .audience("kjderojhpehosgfcrxxbh")
///                             .extensionName("cyckjqqzspleajbtkniwrfsqygjfhe")
///                             .build())
///                         .build())
///                     .endpoint("bddy")
///                     .build())
///                 .fabricOneLake(DataLakeFabricStorageArgs.builder()
///                     .authentication(DataLakeFabricStorageAuthenticationArgs.builder()
///                         .systemAssignedManagedIdentity(ManagedIdentityAuthenticationArgs.builder()
///                             .audience("kjderojhpehosgfcrxxbh")
///                             .extensionName("cyckjqqzspleajbtkniwrfsqygjfhe")
///                             .build())
///                         .build())
///                     .endpoint("S.fabric.microsoft.com")
///                     .fabricPath("files")
///                     .guids(FabricGuidsArgs.builder()
///                         .lakehouseGuid("grsapopwjnuzbmnxbjnawaae")
///                         .workspaceGuid("iwqfplayvdkdxumpdc")
///                         .build())
///                     .names(FabricNamesArgs.builder()
///                         .lakehouseName("iqgqtk")
///                         .workspaceName("fxvlfhfcmlhcbgpopyqfikqsryct")
///                         .build())
///                     .build())
///                 .localStorage(DataLakeLocalStorageArgs.builder()
///                     .volumeName("nmzsioldiwteljpplmftk")
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
/// const dataLakeConnector = new azure_native.iotoperationsmq.DataLakeConnector("dataLakeConnector", {
///     dataLakeConnectorName: "87v4D",
///     databaseFormat: azure_native.iotoperationsmq.DataLakeDatabaseFormat.Delta,
///     extendedLocation: {
///         name: "an",
///         type: azure_native.iotoperationsmq.ExtendedLocationType.CustomLocation,
///     },
///     image: {
///         pullPolicy: "imfuzvqxgbdwliqnn",
///         pullSecrets: "klnqimxqsrdwhcqldjvdtsrs",
///         repository: "m",
///         tag: "jygfdiamhhm",
///     },
///     instances: 53467,
///     localBrokerConnection: {
///         authentication: {
///             kubernetes: {
///                 secretPath: "soukzfkouir",
///                 serviceAccountTokenName: "suwetviuhmhorhvsidlznnufe",
///             },
///         },
///         endpoint: "xc",
///         tls: {
///             tlsEnabled: true,
///             trustedCaCertificateConfigMap: "rinkomfeznsfedbmllxlbmmhc",
///         },
///     },
///     location: "ewguwvlahlu",
///     logLevel: "ikicyoalavfmqlodnupfjayxjti",
///     mqName: "Ox--3e65kYN0731DJ1Qg",
///     nodeTolerations: {
///         effect: "eeswvciblqmmaeesjoflyvxqbz",
///         key: "wbrstdwxgm",
///         operator: "lbegegneekwnyodtzraarivtwhmzep",
///         value: "sfafsjdcezdmkwibxeluukxgl",
///     },
///     protocol: azure_native.iotoperationsmq.MqttProtocol.V3,
///     resourceGroupName: "rgiotoperationsmq",
///     tags: {},
///     target: {
///         datalakeStorage: {
///             authentication: {
///                 accessTokenSecretName: "cfaoxjbfbwdldqjbfczvovgooyqkl",
///                 systemAssignedManagedIdentity: {
///                     audience: "kjderojhpehosgfcrxxbh",
///                     extensionName: "cyckjqqzspleajbtkniwrfsqygjfhe",
///                 },
///             },
///             endpoint: "bddy",
///         },
///         fabricOneLake: {
///             authentication: {
///                 systemAssignedManagedIdentity: {
///                     audience: "kjderojhpehosgfcrxxbh",
///                     extensionName: "cyckjqqzspleajbtkniwrfsqygjfhe",
///                 },
///             },
///             endpoint: "S.fabric.microsoft.com",
///             fabricPath: azure_native.iotoperationsmq.FabricPathType.Files,
///             guids: {
///                 lakehouseGuid: "grsapopwjnuzbmnxbjnawaae",
///                 workspaceGuid: "iwqfplayvdkdxumpdc",
///             },
///             names: {
///                 lakehouseName: "iqgqtk",
///                 workspaceName: "fxvlfhfcmlhcbgpopyqfikqsryct",
///             },
///         },
///         localStorage: {
///             volumeName: "nmzsioldiwteljpplmftk",
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
/// data_lake_connector = azure_native.iotoperationsmq.DataLakeConnector("dataLakeConnector",
///     data_lake_connector_name="87v4D",
///     database_format=azure_native.iotoperationsmq.DataLakeDatabaseFormat.DELTA,
///     extended_location={
///         "name": "an",
///         "type": azure_native.iotoperationsmq.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     image={
///         "pull_policy": "imfuzvqxgbdwliqnn",
///         "pull_secrets": "klnqimxqsrdwhcqldjvdtsrs",
///         "repository": "m",
///         "tag": "jygfdiamhhm",
///     },
///     instances=53467,
///     local_broker_connection={
///         "authentication": {
///             "kubernetes": {
///                 "secret_path": "soukzfkouir",
///                 "service_account_token_name": "suwetviuhmhorhvsidlznnufe",
///             },
///         },
///         "endpoint": "xc",
///         "tls": {
///             "tls_enabled": True,
///             "trusted_ca_certificate_config_map": "rinkomfeznsfedbmllxlbmmhc",
///         },
///     },
///     location="ewguwvlahlu",
///     log_level="ikicyoalavfmqlodnupfjayxjti",
///     mq_name="Ox--3e65kYN0731DJ1Qg",
///     node_tolerations={
///         "effect": "eeswvciblqmmaeesjoflyvxqbz",
///         "key": "wbrstdwxgm",
///         "operator": "lbegegneekwnyodtzraarivtwhmzep",
///         "value": "sfafsjdcezdmkwibxeluukxgl",
///     },
///     protocol=azure_native.iotoperationsmq.MqttProtocol.V3,
///     resource_group_name="rgiotoperationsmq",
///     tags={},
///     target={
///         "datalake_storage": {
///             "authentication": {
///                 "access_token_secret_name": "cfaoxjbfbwdldqjbfczvovgooyqkl",
///                 "system_assigned_managed_identity": {
///                     "audience": "kjderojhpehosgfcrxxbh",
///                     "extension_name": "cyckjqqzspleajbtkniwrfsqygjfhe",
///                 },
///             },
///             "endpoint": "bddy",
///         },
///         "fabric_one_lake": {
///             "authentication": {
///                 "system_assigned_managed_identity": {
///                     "audience": "kjderojhpehosgfcrxxbh",
///                     "extension_name": "cyckjqqzspleajbtkniwrfsqygjfhe",
///                 },
///             },
///             "endpoint": "S.fabric.microsoft.com",
///             "fabric_path": azure_native.iotoperationsmq.FabricPathType.FILES,
///             "guids": {
///                 "lakehouse_guid": "grsapopwjnuzbmnxbjnawaae",
///                 "workspace_guid": "iwqfplayvdkdxumpdc",
///             },
///             "names": {
///                 "lakehouse_name": "iqgqtk",
///                 "workspace_name": "fxvlfhfcmlhcbgpopyqfikqsryct",
///             },
///         },
///         "local_storage": {
///             "volume_name": "nmzsioldiwteljpplmftk",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   dataLakeConnector:
///     type: azure-native:iotoperationsmq:DataLakeConnector
///     properties:
///       dataLakeConnectorName: 87v4D
///       databaseFormat: delta
///       extendedLocation:
///         name: an
///         type: CustomLocation
///       image:
///         pullPolicy: imfuzvqxgbdwliqnn
///         pullSecrets: klnqimxqsrdwhcqldjvdtsrs
///         repository: m
///         tag: jygfdiamhhm
///       instances: 53467
///       localBrokerConnection:
///         authentication:
///           kubernetes:
///             secretPath: soukzfkouir
///             serviceAccountTokenName: suwetviuhmhorhvsidlznnufe
///         endpoint: xc
///         tls:
///           tlsEnabled: true
///           trustedCaCertificateConfigMap: rinkomfeznsfedbmllxlbmmhc
///       location: ewguwvlahlu
///       logLevel: ikicyoalavfmqlodnupfjayxjti
///       mqName: Ox--3e65kYN0731DJ1Qg
///       nodeTolerations:
///         effect: eeswvciblqmmaeesjoflyvxqbz
///         key: wbrstdwxgm
///         operator: lbegegneekwnyodtzraarivtwhmzep
///         value: sfafsjdcezdmkwibxeluukxgl
///       protocol: v3
///       resourceGroupName: rgiotoperationsmq
///       tags: {}
///       target:
///         datalakeStorage:
///           authentication:
///             accessTokenSecretName: cfaoxjbfbwdldqjbfczvovgooyqkl
///             systemAssignedManagedIdentity:
///               audience: kjderojhpehosgfcrxxbh
///               extensionName: cyckjqqzspleajbtkniwrfsqygjfhe
///           endpoint: bddy
///         fabricOneLake:
///           authentication:
///             systemAssignedManagedIdentity:
///               audience: kjderojhpehosgfcrxxbh
///               extensionName: cyckjqqzspleajbtkniwrfsqygjfhe
///           endpoint: S.fabric.microsoft.com
///           fabricPath: files
///           guids:
///             lakehouseGuid: grsapopwjnuzbmnxbjnawaae
///             workspaceGuid: iwqfplayvdkdxumpdc
///           names:
///             lakehouseName: iqgqtk
///             workspaceName: fxvlfhfcmlhcbgpopyqfikqsryct
///         localStorage:
///           volumeName: nmzsioldiwteljpplmftk
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
/// $ pulumi import azure-native:iotoperationsmq:DataLakeConnector yduqhtfsalzehud /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperationsMQ/mq/{mqName}/dataLakeConnector/{dataLakeConnectorName}
/// ```
class DataLakeConnector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// DataLake database format to use.
  late final pulumi.Output<String> databaseFormat;

  /// Extended Location
  late final pulumi.Output<ExtendedLocationPropertyResponse> extendedLocation;

  /// The details of DataLakeConnector Docker Image.
  late final pulumi.Output<ContainerImageResponse> image;

  /// The number of DataLakeConnector pods to spin up.
  late final pulumi.Output<int?> instances;

  /// The details for connecting with Local Broker.
  late final pulumi.Output<LocalBrokerConnectionSpecResponse?>
  localBrokerConnection;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The log level of the DataLake Connector instances.
  late final pulumi.Output<String?> logLevel;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The Node Tolerations for the DataLake Connector pods.
  late final pulumi.Output<NodeTolerationsResponse?> nodeTolerations;

  /// The protocol to use for connecting with Brokers.
  late final pulumi.Output<String> protocol;

  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The protocol to use for connecting with Brokers. NOTE - Enum only storage is supported at at time.
  late final pulumi.Output<DataLakeTargetStorageResponse> target;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DataLakeConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataLakeConnector]. {@macro pulumi_iotoperationsmq_data_lake_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataLakeConnector(
    String name, {
    DataLakeConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:iotoperationsmq:DataLakeConnector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    databaseFormat = registerOutput<String>('databaseFormat');
    extendedLocation = registerOutput<ExtendedLocationPropertyResponse>(
      'extendedLocation',
    );
    image = registerOutput<ContainerImageResponse>('image');
    instances = registerOutput<int?>('instances');
    localBrokerConnection = registerOutput<LocalBrokerConnectionSpecResponse?>(
      'localBrokerConnection',
    );
    location = registerOutput<String>('location');
    logLevel = registerOutput<String?>('logLevel');
    this.name = registerOutput<String>('name');
    nodeTolerations = registerOutput<NodeTolerationsResponse?>(
      'nodeTolerations',
    );
    protocol = registerOutput<String>('protocol');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    target = registerOutput<DataLakeTargetStorageResponse>('target');
    type = registerOutput<String>('type');
  }
}
