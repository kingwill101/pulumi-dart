import 'package:pulumi/pulumi.dart' as pulumi;
import 'evidence_args.dart';
import 'system_data_response.dart';

/// A class represent an AppComplianceAutomation evidence resource.
///
/// Uses Azure REST API version 2024-06-27. In version 2.x of the Azure Native provider, it used API version 2024-06-27.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Evidence_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var evidence = new AzureNative.AppComplianceAutomation.Evidence("evidence", new()
///     {
///         ControlId = "Operational_Security_10",
///         EvidenceName = "evidence1",
///         EvidenceType = AzureNative.AppComplianceAutomation.EvidenceType.File,
///         FilePath = "/test-byos/evidence1.png",
///         ReportName = "testReportName",
///         ResponsibilityId = "authorized_ip_ranges_should_be_defined_on_kubernetes_services",
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
/// 	appcomplianceautomation "github.com/pulumi/pulumi-azure-native-sdk/appcomplianceautomation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appcomplianceautomation.NewEvidence(ctx, "evidence", &appcomplianceautomation.EvidenceArgs{
/// 			ControlId:        pulumi.String("Operational_Security_10"),
/// 			EvidenceName:     pulumi.String("evidence1"),
/// 			EvidenceType:     pulumi.String(appcomplianceautomation.EvidenceTypeFile),
/// 			FilePath:         pulumi.String("/test-byos/evidence1.png"),
/// 			ReportName:       pulumi.String("testReportName"),
/// 			ResponsibilityId: pulumi.String("authorized_ip_ranges_should_be_defined_on_kubernetes_services"),
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
/// import com.pulumi.azurenative.appcomplianceautomation.Evidence;
/// import com.pulumi.azurenative.appcomplianceautomation.EvidenceArgs;
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
///         var evidence = new Evidence("evidence", EvidenceArgs.builder()
///             .controlId("Operational_Security_10")
///             .evidenceName("evidence1")
///             .evidenceType("File")
///             .filePath("/test-byos/evidence1.png")
///             .reportName("testReportName")
///             .responsibilityId("authorized_ip_ranges_should_be_defined_on_kubernetes_services")
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
/// const evidence = new azure_native.appcomplianceautomation.Evidence("evidence", {
///     controlId: "Operational_Security_10",
///     evidenceName: "evidence1",
///     evidenceType: azure_native.appcomplianceautomation.EvidenceType.File,
///     filePath: "/test-byos/evidence1.png",
///     reportName: "testReportName",
///     responsibilityId: "authorized_ip_ranges_should_be_defined_on_kubernetes_services",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// evidence = azure_native.appcomplianceautomation.Evidence("evidence",
///     control_id="Operational_Security_10",
///     evidence_name="evidence1",
///     evidence_type=azure_native.appcomplianceautomation.EvidenceType.FILE,
///     file_path="/test-byos/evidence1.png",
///     report_name="testReportName",
///     responsibility_id="authorized_ip_ranges_should_be_defined_on_kubernetes_services")
///
/// ```
///
/// ```yaml
/// resources:
///   evidence:
///     type: azure-native:appcomplianceautomation:Evidence
///     properties:
///       controlId: Operational_Security_10
///       evidenceName: evidence1
///       evidenceType: File
///       filePath: /test-byos/evidence1.png
///       reportName: testReportName
///       responsibilityId: authorized_ip_ranges_should_be_defined_on_kubernetes_services
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
/// $ pulumi import azure-native:appcomplianceautomation:Evidence evidence1 /providers/Microsoft.AppComplianceAutomation/reports/{reportName}/evidences/{evidenceName}
/// ```
class Evidence extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Control id.
  late final pulumi.Output<String?> controlId;

  /// Evidence type.
  late final pulumi.Output<String?> evidenceType;

  /// Extra data considered as evidence.
  late final pulumi.Output<String?> extraData;

  /// The path of the file in storage.
  late final pulumi.Output<String> filePath;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure lifecycle management
  late final pulumi.Output<String> provisioningState;

  /// Responsibility id.
  late final pulumi.Output<String?> responsibilityId;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Evidence].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Evidence]. {@macro pulumi_appcomplianceautomation_evidence_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Evidence(
    String name, {
    EvidenceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:appcomplianceautomation:Evidence',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    controlId = registerOutput<String?>('controlId');
    evidenceType = registerOutput<String?>('evidenceType');
    extraData = registerOutput<String?>('extraData');
    filePath = registerOutput<String>('filePath');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    responsibilityId = registerOutput<String?>('responsibilityId');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
