import 'package:pulumi/pulumi.dart';
import 'get_control_organization_intelligence_config_args.dart';
import 'get_control_organization_intelligence_config_result.dart';

/// Use this data source to get information about a Organization Storage Intelligence config resource.
/// See [the official documentation](https://cloud.google.com/storage/docs/storage-intelligence/overview#resource)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/intelligenceConfig).
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sample_config = gcp.storage.getControlOrganizationIntelligenceConfig({
/// name: "123456789",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sample_config = gcp.storage.get_control_organization_intelligence_config(name="123456789")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var sample_config = Gcp.Storage.GetControlOrganizationIntelligenceConfig.Invoke(new()
/// {
/// Name = "123456789",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storage.LookupControlOrganizationIntelligenceConfig(ctx, &storage.LookupControlOrganizationIntelligenceConfigArgs{
/// Name: "123456789",
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
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetControlOrganizationIntelligenceConfigArgs;
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
/// final var sample-config = StorageFunctions.getControlOrganizationIntelligenceConfig(GetControlOrganizationIntelligenceConfigArgs.builder()
/// .name("123456789")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// sample-config:
/// fn::invoke:
/// function: gcp:storage:getControlOrganizationIntelligenceConfig
/// arguments:
/// name: '123456789'
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetControlOrganizationIntelligenceConfigResult>
    getControlOrganizationIntelligenceConfig(
  GetControlOrganizationIntelligenceConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getControlOrganizationIntelligenceConfig:getControlOrganizationIntelligenceConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetControlOrganizationIntelligenceConfigResult.fromMap(result);
}
