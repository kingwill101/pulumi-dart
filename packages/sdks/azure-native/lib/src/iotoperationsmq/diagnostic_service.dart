import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_image_response.dart';
import 'diagnostic_service_args.dart';
import 'extended_location_property_response.dart';
import 'system_data_response.dart';

/// MQ diagnostic services resource
///
/// Uses Azure REST API version 2023-10-04-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-04-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DiagnosticService_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var diagnosticService = new AzureNative.IoTOperationsMQ.DiagnosticService("diagnosticService", new()
///     {
///         DataExportFrequencySeconds = 26084,
///         DiagnosticServiceName = "73-1El3-1",
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
///         Location = "sbhavoiabxjpuq",
///         LogFormat = "i",
///         LogLevel = "aomqhmpa",
///         MaxDataStorageSize = 3757017229,
///         MetricsPort = 37109,
///         MqName = "6RCAgs-XQ-Y2HsUF2",
///         OpenTelemetryTracesCollectorAddr = "ggqmprmjlmmkfdpb",
///         ResourceGroupName = "rgiotoperationsmq",
///         StaleDataTimeoutSeconds = 51616,
///         Tags = null,
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
/// 		_, err := iotoperationsmq.NewDiagnosticService(ctx, "diagnosticService", &iotoperationsmq.DiagnosticServiceArgs{
/// 			DataExportFrequencySeconds: pulumi.Int(26084),
/// 			DiagnosticServiceName:      pulumi.String("73-1El3-1"),
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
/// 			Location:                         pulumi.String("sbhavoiabxjpuq"),
/// 			LogFormat:                        pulumi.String("i"),
/// 			LogLevel:                         pulumi.String("aomqhmpa"),
/// 			MaxDataStorageSize:               pulumi.Float64(3757017229),
/// 			MetricsPort:                      pulumi.Int(37109),
/// 			MqName:                           pulumi.String("6RCAgs-XQ-Y2HsUF2"),
/// 			OpenTelemetryTracesCollectorAddr: pulumi.String("ggqmprmjlmmkfdpb"),
/// 			ResourceGroupName:                pulumi.String("rgiotoperationsmq"),
/// 			StaleDataTimeoutSeconds:          pulumi.Int(51616),
/// 			Tags:                             pulumi.StringMap{},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_iotoperationsmq_diagnosticservice" "diagnosticService" {
///   data_export_frequency_seconds = 26084
///   diagnostic_service_name       = "73-1El3-1"
///   extended_location = {
///     name = "an"
///     type = "CustomLocation"
///   }
///   image = {
///     pull_policy  = "imfuzvqxgbdwliqnn"
///     pull_secrets = "klnqimxqsrdwhcqldjvdtsrs"
///     repository   = "m"
///     tag          = "jygfdiamhhm"
///   }
///   location                             = "sbhavoiabxjpuq"
///   log_format                           = "i"
///   log_level                            = "aomqhmpa"
///   max_data_storage_size                = 3757017229
///   metrics_port                         = 37109
///   mq_name                              = "6RCAgs-XQ-Y2HsUF2"
///   open_telemetry_traces_collector_addr = "ggqmprmjlmmkfdpb"
///   resource_group_name                  = "rgiotoperationsmq"
///   stale_data_timeout_seconds           = 51616
///   tags                                 = {}
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
/// import com.pulumi.azurenative.iotoperationsmq.DiagnosticService;
/// import com.pulumi.azurenative.iotoperationsmq.DiagnosticServiceArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ExtendedLocationPropertyArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ContainerImageArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var diagnosticService = new DiagnosticService("diagnosticService", DiagnosticServiceArgs.builder()
///             .dataExportFrequencySeconds(26084)
///             .diagnosticServiceName("73-1El3-1")
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
///             .location("sbhavoiabxjpuq")
///             .logFormat("i")
///             .logLevel("aomqhmpa")
///             .maxDataStorageSize(3757017229.0)
///             .metricsPort(37109)
///             .mqName("6RCAgs-XQ-Y2HsUF2")
///             .openTelemetryTracesCollectorAddr("ggqmprmjlmmkfdpb")
///             .resourceGroupName("rgiotoperationsmq")
///             .staleDataTimeoutSeconds(51616)
///             .tags(Map.ofEntries(
///             ))
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
/// const diagnosticService = new azure_native.iotoperationsmq.DiagnosticService("diagnosticService", {
///     dataExportFrequencySeconds: 26084,
///     diagnosticServiceName: "73-1El3-1",
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
///     location: "sbhavoiabxjpuq",
///     logFormat: "i",
///     logLevel: "aomqhmpa",
///     maxDataStorageSize: 3757017229,
///     metricsPort: 37109,
///     mqName: "6RCAgs-XQ-Y2HsUF2",
///     openTelemetryTracesCollectorAddr: "ggqmprmjlmmkfdpb",
///     resourceGroupName: "rgiotoperationsmq",
///     staleDataTimeoutSeconds: 51616,
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// diagnostic_service = azure_native.iotoperationsmq.DiagnosticService("diagnosticService",
///     data_export_frequency_seconds=26084,
///     diagnostic_service_name="73-1El3-1",
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
///     location="sbhavoiabxjpuq",
///     log_format="i",
///     log_level="aomqhmpa",
///     max_data_storage_size=3757017229,
///     metrics_port=37109,
///     mq_name="6RCAgs-XQ-Y2HsUF2",
///     open_telemetry_traces_collector_addr="ggqmprmjlmmkfdpb",
///     resource_group_name="rgiotoperationsmq",
///     stale_data_timeout_seconds=51616,
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   diagnosticService:
///     type: azure-native:iotoperationsmq:DiagnosticService
///     properties:
///       dataExportFrequencySeconds: 26084
///       diagnosticServiceName: 73-1El3-1
///       extendedLocation:
///         name: an
///         type: CustomLocation
///       image:
///         pullPolicy: imfuzvqxgbdwliqnn
///         pullSecrets: klnqimxqsrdwhcqldjvdtsrs
///         repository: m
///         tag: jygfdiamhhm
///       location: sbhavoiabxjpuq
///       logFormat: i
///       logLevel: aomqhmpa
///       maxDataStorageSize: 3.757017229e+09
///       metricsPort: 37109
///       mqName: 6RCAgs-XQ-Y2HsUF2
///       openTelemetryTracesCollectorAddr: ggqmprmjlmmkfdpb
///       resourceGroupName: rgiotoperationsmq
///       staleDataTimeoutSeconds: 51616
///       tags: {}
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
/// $ pulumi import azure-native:iotoperationsmq:DiagnosticService kdpnnlr /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperationsMQ/mq/{mqName}/diagnosticService/{diagnosticServiceName}
/// ```
class DiagnosticService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The frequency at which the data will be exported.
  late final pulumi.Output<int?> dataExportFrequencySeconds;
  /// Extended Location
  late final pulumi.Output<ExtendedLocationPropertyResponse> extendedLocation;
  /// The details of Diagnostic Service Docker Image.
  late final pulumi.Output<ContainerImageResponse> image;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The format for the logs generated.
  late final pulumi.Output<String?> logFormat;
  /// The format for the logs generated.
  late final pulumi.Output<String?> logLevel;
  /// The maximum data stored in MiB.
  late final pulumi.Output<double?> maxDataStorageSize;
  /// The port at which metrics is exposed.
  late final pulumi.Output<int?> metricsPort;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The destination to collect traces. Diagnostic service will push traces to this endpoint
  late final pulumi.Output<String?> openTelemetryTracesCollectorAddr;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// Metric inactivity timeout.
  late final pulumi.Output<int?> staleDataTimeoutSeconds;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DiagnosticService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiagnosticService]. {@macro pulumi_iotoperationsmq_diagnostic_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiagnosticService(
    String name, {
    DiagnosticServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iotoperationsmq:DiagnosticService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataExportFrequencySeconds = registerOutput<int?>('dataExportFrequencySeconds');
    extendedLocation = registerOutput<ExtendedLocationPropertyResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    image = registerOutput<ContainerImageResponse>('image', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerImageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    logFormat = registerOutput<String?>('logFormat');
    logLevel = registerOutput<String?>('logLevel');
    maxDataStorageSize = registerOutput<double?>('maxDataStorageSize');
    metricsPort = registerOutput<int?>('metricsPort');
    this.name = registerOutput<String>('name');
    openTelemetryTracesCollectorAddr = registerOutput<String?>('openTelemetryTracesCollectorAddr');
    provisioningState = registerOutput<String>('provisioningState');
    staleDataTimeoutSeconds = registerOutput<int?>('staleDataTimeoutSeconds');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DiagnosticService] resource.
  DiagnosticService.reference(String urn)
    : super(
        'azure-native:iotoperationsmq:DiagnosticService',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataExportFrequencySeconds = registerOutput<int?>('dataExportFrequencySeconds');
    extendedLocation = registerOutput<ExtendedLocationPropertyResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    image = registerOutput<ContainerImageResponse>('image', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerImageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    logFormat = registerOutput<String?>('logFormat');
    logLevel = registerOutput<String?>('logLevel');
    maxDataStorageSize = registerOutput<double?>('maxDataStorageSize');
    metricsPort = registerOutput<int?>('metricsPort');
    this.name = registerOutput<String>('name');
    openTelemetryTracesCollectorAddr = registerOutput<String?>('openTelemetryTracesCollectorAddr');
    provisioningState = registerOutput<String>('provisioningState');
    staleDataTimeoutSeconds = registerOutput<int?>('staleDataTimeoutSeconds');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
