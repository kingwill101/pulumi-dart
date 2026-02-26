import 'package:pulumi/pulumi.dart';
import 'get_appregistry_attribute_group_associations_args.dart';
import 'get_appregistry_attribute_group_associations_result.dart';

/// Data source for managing AWS Service Catalog AppRegistry Attribute Group Associations.
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
/// const example = aws.servicecatalog.getAppregistryAttributeGroupAssociations({
/// id: "12456778723424sdffsdfsdq34,12234t3564dsfsdf34asff4ww3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.get_appregistry_attribute_group_associations(id="12456778723424sdffsdfsdq34,12234t3564dsfsdf34asff4ww3")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.ServiceCatalog.GetAppregistryAttributeGroupAssociations.Invoke(new()
/// {
/// Id = "12456778723424sdffsdfsdq34,12234t3564dsfsdf34asff4ww3",
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
/// _, err := servicecatalog.GetAppregistryAttributeGroupAssociations(ctx, &servicecatalog.GetAppregistryAttributeGroupAssociationsArgs{
/// Id: pulumi.StringRef("12456778723424sdffsdfsdq34,12234t3564dsfsdf34asff4ww3"),
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
/// import com.pulumi.aws.servicecatalog.inputs.GetAppregistryAttributeGroupAssociationsArgs;
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
/// final var example = ServicecatalogFunctions.getAppregistryAttributeGroupAssociations(GetAppregistryAttributeGroupAssociationsArgs.builder()
/// .id("12456778723424sdffsdfsdq34,12234t3564dsfsdf34asff4ww3")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:servicecatalog:getAppregistryAttributeGroupAssociations
/// arguments:
/// id: 12456778723424sdffsdfsdq34,12234t3564dsfsdf34asff4ww3
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAppregistryAttributeGroupAssociationsResult>
    getAppregistryAttributeGroupAssociations(
  GetAppregistryAttributeGroupAssociationsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getAppregistryAttributeGroupAssociations:getAppregistryAttributeGroupAssociations',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppregistryAttributeGroupAssociationsResult.fromMap(result);
}
