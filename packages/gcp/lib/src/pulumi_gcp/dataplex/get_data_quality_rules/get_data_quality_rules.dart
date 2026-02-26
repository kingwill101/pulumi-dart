import 'package:pulumi/pulumi.dart';
import 'get_data_quality_rules_args.dart';
import 'get_data_quality_rules_result.dart';

/// Retrieves the generated data quality rules for the creating a new data quality scan.
/// For more information see
/// the [official documentation](https://cloud.google.com/dataplex/docs)
/// and [API](https://cloud.google.com/dataplex/docs/reference/rest/v1/projects.locations.dataScans/generateDataQualityRules).
///
/// ## example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dqrs = gcp.dataplex.getDataQualityRules({
/// project: "my-project",
/// location: "use-central1",
/// dataScanId: "my-datascan-profile",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dqrs = gcp.dataplex.get_data_quality_rules(project="my-project",
/// location="use-central1",
/// data_scan_id="my-datascan-profile")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dqrs = Gcp.DataPlex.GetDataQualityRules.Invoke(new()
/// {
/// Project = "my-project",
/// Location = "use-central1",
/// DataScanId = "my-datascan-profile",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataplex.GetDataQualityRules(ctx, &dataplex.GetDataQualityRulesArgs{
/// Project:    pulumi.StringRef("my-project"),
/// Location:   pulumi.StringRef("use-central1"),
/// DataScanId: "my-datascan-profile",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.DataplexFunctions;
/// import com.pulumi.gcp.dataplex.inputs.GetDataQualityRulesArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var dqrs = DataplexFunctions.getDataQualityRules(GetDataQualityRulesArgs.builder()
/// .project("my-project")
/// .location("use-central1")
/// .dataScanId("my-datascan-profile")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// dqrs:
/// fn::invoke:
/// function: gcp:dataplex:getDataQualityRules
/// arguments:
/// project: my-project
/// location: use-central1
/// dataScanId: my-datascan-profile
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDataQualityRulesResult> getDataQualityRules(
  GetDataQualityRulesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getDataQualityRules:getDataQualityRules',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataQualityRulesResult.fromMap(result);
}
