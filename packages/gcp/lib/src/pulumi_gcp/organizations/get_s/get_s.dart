import 'package:pulumi/pulumi.dart';
import 'get_sargs.dart';
import 'get_sresult.dart';

/// Gets a list of all organizations.
/// See [the official documentation](https://docs.cloud.google.com/resource-manager/docs/creating-managing-organization)
/// and [API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/organizations/search).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.organizations.getS({
/// filter: "domain:example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.organizations.get_s(filter="domain:example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Gcp.Organizations.GetS.Invoke(new()
/// {
/// Filter = "domain:example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.GetS(ctx, &organizations.GetSArgs{
/// Filter: pulumi.StringRef("domain:example.com"),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetSArgs;
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
/// final var example = OrganizationsFunctions.getS(GetSArgs.builder()
/// .filter("domain:example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: gcp:organizations:getS
/// arguments:
/// filter: domain:example.com
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSResult> getS(
  GetSArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getS:getS',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSResult.fromMap(result);
}
