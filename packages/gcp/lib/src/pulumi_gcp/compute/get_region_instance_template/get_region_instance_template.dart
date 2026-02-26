import 'package:pulumi/pulumi.dart';
import 'get_region_instance_template_args.dart';
import 'get_region_instance_template_result.dart';

/// Get information about a VM instance template resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instance-templates)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceTemplates).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // by name
/// const generic = gcp.compute.getRegionInstanceTemplate({
/// name: "generic-tpl-20200107",
/// });
/// // using a filter
/// const generic_regex = gcp.compute.getRegionInstanceTemplate({
/// filter: "name != generic-tpl-20200107",
/// mostRecent: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # by name
/// generic = gcp.compute.get_region_instance_template(name="generic-tpl-20200107")
/// # using a filter
/// generic_regex = gcp.compute.get_region_instance_template(filter="name != generic-tpl-20200107",
/// most_recent=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // by name
/// var generic = Gcp.Compute.GetRegionInstanceTemplate.Invoke(new()
/// {
/// Name = "generic-tpl-20200107",
/// });
///
/// // using a filter
/// var generic_regex = Gcp.Compute.GetRegionInstanceTemplate.Invoke(new()
/// {
/// Filter = "name != generic-tpl-20200107",
/// MostRecent = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // by name
/// _, err := compute.LookupRegionInstanceTemplate(ctx, &compute.LookupRegionInstanceTemplateArgs{
/// Name: pulumi.StringRef("generic-tpl-20200107"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // using a filter
/// _, err = compute.LookupRegionInstanceTemplate(ctx, &compute.LookupRegionInstanceTemplateArgs{
/// Filter:     pulumi.StringRef("name != generic-tpl-20200107"),
/// MostRecent: pulumi.BoolRef(true),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionInstanceTemplateArgs;
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
/// // by name
/// final var generic = ComputeFunctions.getRegionInstanceTemplate(GetRegionInstanceTemplateArgs.builder()
/// .name("generic-tpl-20200107")
/// .build());
///
/// // using a filter
/// final var generic-regex = ComputeFunctions.getRegionInstanceTemplate(GetRegionInstanceTemplateArgs.builder()
/// .filter("name != generic-tpl-20200107")
/// .mostRecent(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// # by name
/// generic:
/// fn::invoke:
/// function: gcp:compute:getRegionInstanceTemplate
/// arguments:
/// name: generic-tpl-20200107
/// # using a filter
/// generic-regex:
/// fn::invoke:
/// function: gcp:compute:getRegionInstanceTemplate
/// arguments:
/// filter: name != generic-tpl-20200107
/// mostRecent: true
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionInstanceTemplateResult> getRegionInstanceTemplate(
  GetRegionInstanceTemplateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionInstanceTemplate:getRegionInstanceTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceTemplateResult.fromMap(result);
}
