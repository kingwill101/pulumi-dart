import 'package:pulumi/pulumi.dart';
import 'get_appregistry_attribute_group_args.dart';
import 'get_appregistry_attribute_group_result.dart';

/// Data source for managing an AWS Service Catalog AppRegistry Attribute Group.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.servicecatalog.getAppregistryAttributeGroup({
/// name: "example_attribute_group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.get_appregistry_attribute_group(name="example_attribute_group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.ServiceCatalog.GetAppregistryAttributeGroup.Invoke(new()
/// {
/// Name = "example_attribute_group",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := servicecatalog.LookupAppregistryAttributeGroup(ctx, &servicecatalog.LookupAppregistryAttributeGroupArgs{
/// Name: pulumi.StringRef("example_attribute_group"),
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
/// import com.pulumi.aws.servicecatalog.ServicecatalogFunctions;
/// import com.pulumi.aws.servicecatalog.inputs.GetAppregistryAttributeGroupArgs;
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
/// final var example = ServicecatalogFunctions.getAppregistryAttributeGroup(GetAppregistryAttributeGroupArgs.builder()
/// .name("example_attribute_group")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:servicecatalog:getAppregistryAttributeGroup
/// arguments:
/// name: example_attribute_group
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAppregistryAttributeGroupResult> getAppregistryAttributeGroup(
  GetAppregistryAttributeGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getAppregistryAttributeGroup:getAppregistryAttributeGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppregistryAttributeGroupResult.fromMap(result);
}
