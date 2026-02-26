import 'package:pulumi/pulumi.dart';
import 'get_product_args.dart';
import 'get_product_result.dart';

/// Use this data source to get the pricing information of all products in AWS.
/// This data source is only available in a us-east-1 or ap-south-1 provider.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.pricing.getProduct({
/// serviceCode: "AmazonEC2",
/// filters: [
/// {
/// field: "instanceType",
/// value: "c5.xlarge",
/// },
/// {
/// field: "operatingSystem",
/// value: "Linux",
/// },
/// {
/// field: "location",
/// value: "US East (N. Virginia)",
/// },
/// {
/// field: "preInstalledSw",
/// value: "NA",
/// },
/// {
/// field: "licenseModel",
/// value: "No License required",
/// },
/// {
/// field: "tenancy",
/// value: "Shared",
/// },
/// {
/// field: "capacitystatus",
/// value: "Used",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pricing.get_product(service_code="AmazonEC2",
/// filters=[
/// {
/// "field": "instanceType",
/// "value": "c5.xlarge",
/// },
/// {
/// "field": "operatingSystem",
/// "value": "Linux",
/// },
/// {
/// "field": "location",
/// "value": "US East (N. Virginia)",
/// },
/// {
/// "field": "preInstalledSw",
/// "value": "NA",
/// },
/// {
/// "field": "licenseModel",
/// "value": "No License required",
/// },
/// {
/// "field": "tenancy",
/// "value": "Shared",
/// },
/// {
/// "field": "capacitystatus",
/// "value": "Used",
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Pricing.GetProduct.Invoke(new()
/// {
/// ServiceCode = "AmazonEC2",
/// Filters = new[]
/// {
/// new Aws.Pricing.Inputs.GetProductFilterInputArgs
/// {
/// Field = "instanceType",
/// Value = "c5.xlarge",
/// },
/// new Aws.Pricing.Inputs.GetProductFilterInputArgs
/// {
/// Field = "operatingSystem",
/// Value = "Linux",
/// },
/// new Aws.Pricing.Inputs.GetProductFilterInputArgs
/// {
/// Field = "location",
/// Value = "US East (N. Virginia)",
/// },
/// new Aws.Pricing.Inputs.GetProductFilterInputArgs
/// {
/// Field = "preInstalledSw",
/// Value = "NA",
/// },
/// new Aws.Pricing.Inputs.GetProductFilterInputArgs
/// {
/// Field = "licenseModel",
/// Value = "No License required",
/// },
/// new Aws.Pricing.Inputs.GetProductFilterInputArgs
/// {
/// Field = "tenancy",
/// Value = "Shared",
/// },
/// new Aws.Pricing.Inputs.GetProductFilterInputArgs
/// {
/// Field = "capacitystatus",
/// Value = "Used",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pricing"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := pricing.GetProduct(ctx, &pricing.GetProductArgs{
/// ServiceCode: "AmazonEC2",
/// Filters: []pricing.GetProductFilter{
/// {
/// Field: "instanceType",
/// Value: "c5.xlarge",
/// },
/// {
/// Field: "operatingSystem",
/// Value: "Linux",
/// },
/// {
/// Field: "location",
/// Value: "US East (N. Virginia)",
/// },
/// {
/// Field: "preInstalledSw",
/// Value: "NA",
/// },
/// {
/// Field: "licenseModel",
/// Value: "No License required",
/// },
/// {
/// Field: "tenancy",
/// Value: "Shared",
/// },
/// {
/// Field: "capacitystatus",
/// Value: "Used",
/// },
/// },
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
/// import com.pulumi.aws.pricing.PricingFunctions;
/// import com.pulumi.aws.pricing.inputs.GetProductArgs;
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
/// final var example = PricingFunctions.getProduct(GetProductArgs.builder()
/// .serviceCode("AmazonEC2")
/// .filters(
/// GetProductFilterArgs.builder()
/// .field("instanceType")
/// .value("c5.xlarge")
/// .build(),
/// GetProductFilterArgs.builder()
/// .field("operatingSystem")
/// .value("Linux")
/// .build(),
/// GetProductFilterArgs.builder()
/// .field("location")
/// .value("US East (N. Virginia)")
/// .build(),
/// GetProductFilterArgs.builder()
/// .field("preInstalledSw")
/// .value("NA")
/// .build(),
/// GetProductFilterArgs.builder()
/// .field("licenseModel")
/// .value("No License required")
/// .build(),
/// GetProductFilterArgs.builder()
/// .field("tenancy")
/// .value("Shared")
/// .build(),
/// GetProductFilterArgs.builder()
/// .field("capacitystatus")
/// .value("Used")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:pricing:getProduct
/// arguments:
/// serviceCode: AmazonEC2
/// filters:
/// - field: instanceType
/// value: c5.xlarge
/// - field: operatingSystem
/// value: Linux
/// - field: location
/// value: US East (N. Virginia)
/// - field: preInstalledSw
/// value: NA
/// - field: licenseModel
/// value: No License required
/// - field: tenancy
/// value: Shared
/// - field: capacitystatus
/// value: Used
/// ```
/// <!--End PulumiCodeChooser -->
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.pricing.getProduct({
/// serviceCode: "AmazonRedshift",
/// filters: [
/// {
/// field: "instanceType",
/// value: "ds1.xlarge",
/// },
/// {
/// field: "location",
/// value: "US East (N. Virginia)",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pricing.get_product(service_code="AmazonRedshift",
/// filters=[
/// {
/// "field": "instanceType",
/// "value": "ds1.xlarge",
/// },
/// {
/// "field": "location",
/// "value": "US East (N. Virginia)",
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Pricing.GetProduct.Invoke(new()
/// {
/// ServiceCode = "AmazonRedshift",
/// Filters = new[]
/// {
/// new Aws.Pricing.Inputs.GetProductFilterInputArgs
/// {
/// Field = "instanceType",
/// Value = "ds1.xlarge",
/// },
/// new Aws.Pricing.Inputs.GetProductFilterInputArgs
/// {
/// Field = "location",
/// Value = "US East (N. Virginia)",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pricing"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := pricing.GetProduct(ctx, &pricing.GetProductArgs{
/// ServiceCode: "AmazonRedshift",
/// Filters: []pricing.GetProductFilter{
/// {
/// Field: "instanceType",
/// Value: "ds1.xlarge",
/// },
/// {
/// Field: "location",
/// Value: "US East (N. Virginia)",
/// },
/// },
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
/// import com.pulumi.aws.pricing.PricingFunctions;
/// import com.pulumi.aws.pricing.inputs.GetProductArgs;
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
/// final var example = PricingFunctions.getProduct(GetProductArgs.builder()
/// .serviceCode("AmazonRedshift")
/// .filters(
/// GetProductFilterArgs.builder()
/// .field("instanceType")
/// .value("ds1.xlarge")
/// .build(),
/// GetProductFilterArgs.builder()
/// .field("location")
/// .value("US East (N. Virginia)")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:pricing:getProduct
/// arguments:
/// serviceCode: AmazonRedshift
/// filters:
/// - field: instanceType
/// value: ds1.xlarge
/// - field: location
/// value: US East (N. Virginia)
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetProductResult> getProduct(
  GetProductArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:pricing/getProduct:getProduct',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProductResult.fromMap(result);
}
