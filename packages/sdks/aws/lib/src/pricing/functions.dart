import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_product_args.dart';
import 'get_product_result.dart';

/// Use this data source to get the pricing information of all products in AWS.
/// This data source is only available in a us-east-1 or ap-south-1 provider.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.pricing.getProduct({
///     filters: [
///         {
///             field: "instanceType",
///             value: "c5.xlarge",
///         },
///         {
///             field: "operatingSystem",
///             value: "Linux",
///         },
///         {
///             field: "location",
///             value: "US East (N. Virginia)",
///         },
///         {
///             field: "preInstalledSw",
///             value: "NA",
///         },
///         {
///             field: "licenseModel",
///             value: "No License required",
///         },
///         {
///             field: "tenancy",
///             value: "Shared",
///         },
///         {
///             field: "capacitystatus",
///             value: "Used",
///         },
///     ],
///     serviceCode: "AmazonEC2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pricing.get_product(filters=[
///         {
///             "field": "instanceType",
///             "value": "c5.xlarge",
///         },
///         {
///             "field": "operatingSystem",
///             "value": "Linux",
///         },
///         {
///             "field": "location",
///             "value": "US East (N. Virginia)",
///         },
///         {
///             "field": "preInstalledSw",
///             "value": "NA",
///         },
///         {
///             "field": "licenseModel",
///             "value": "No License required",
///         },
///         {
///             "field": "tenancy",
///             "value": "Shared",
///         },
///         {
///             "field": "capacitystatus",
///             "value": "Used",
///         },
///     ],
///     service_code="AmazonEC2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Pricing.GetProduct.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Pricing.Inputs.GetProductFilterInputArgs
///             {
///                 Field = "instanceType",
///                 Value = "c5.xlarge",
///             },
///             new Aws.Pricing.Inputs.GetProductFilterInputArgs
///             {
///                 Field = "operatingSystem",
///                 Value = "Linux",
///             },
///             new Aws.Pricing.Inputs.GetProductFilterInputArgs
///             {
///                 Field = "location",
///                 Value = "US East (N. Virginia)",
///             },
///             new Aws.Pricing.Inputs.GetProductFilterInputArgs
///             {
///                 Field = "preInstalledSw",
///                 Value = "NA",
///             },
///             new Aws.Pricing.Inputs.GetProductFilterInputArgs
///             {
///                 Field = "licenseModel",
///                 Value = "No License required",
///             },
///             new Aws.Pricing.Inputs.GetProductFilterInputArgs
///             {
///                 Field = "tenancy",
///                 Value = "Shared",
///             },
///             new Aws.Pricing.Inputs.GetProductFilterInputArgs
///             {
///                 Field = "capacitystatus",
///                 Value = "Used",
///             },
///         },
///         ServiceCode = "AmazonEC2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pricing"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pricing.GetProduct(ctx, &pricing.GetProductArgs{
/// 			Filters: []pricing.GetProductFilter{
/// 				{
/// 					Field: "instanceType",
/// 					Value: "c5.xlarge",
/// 				},
/// 				{
/// 					Field: "operatingSystem",
/// 					Value: "Linux",
/// 				},
/// 				{
/// 					Field: "location",
/// 					Value: "US East (N. Virginia)",
/// 				},
/// 				{
/// 					Field: "preInstalledSw",
/// 					Value: "NA",
/// 				},
/// 				{
/// 					Field: "licenseModel",
/// 					Value: "No License required",
/// 				},
/// 				{
/// 					Field: "tenancy",
/// 					Value: "Shared",
/// 				},
/// 				{
/// 					Field: "capacitystatus",
/// 					Value: "Used",
/// 				},
/// 			},
/// 			ServiceCode: "AmazonEC2",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_pricing_getproduct" "example" {
///   filters {
///     field = "instanceType"
///     value = "c5.xlarge"
///   }
///   filters {
///     field = "operatingSystem"
///     value = "Linux"
///   }
///   filters {
///     field = "location"
///     value = "US East (N. Virginia)"
///   }
///   filters {
///     field = "preInstalledSw"
///     value = "NA"
///   }
///   filters {
///     field = "licenseModel"
///     value = "No License required"
///   }
///   filters {
///     field = "tenancy"
///     value = "Shared"
///   }
///   filters {
///     field = "capacitystatus"
///     value = "Used"
///   }
///   service_code = "AmazonEC2"
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
/// import com.pulumi.aws.pricing.inputs.GetProductFilterArgs;
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
///         final var example = PricingFunctions.getProduct(GetProductArgs.builder()
///             .filters(
///                 GetProductFilterArgs.builder()
///                     .field("instanceType")
///                     .value("c5.xlarge")
///                     .build(),
///                 GetProductFilterArgs.builder()
///                     .field("operatingSystem")
///                     .value("Linux")
///                     .build(),
///                 GetProductFilterArgs.builder()
///                     .field("location")
///                     .value("US East (N. Virginia)")
///                     .build(),
///                 GetProductFilterArgs.builder()
///                     .field("preInstalledSw")
///                     .value("NA")
///                     .build(),
///                 GetProductFilterArgs.builder()
///                     .field("licenseModel")
///                     .value("No License required")
///                     .build(),
///                 GetProductFilterArgs.builder()
///                     .field("tenancy")
///                     .value("Shared")
///                     .build(),
///                 GetProductFilterArgs.builder()
///                     .field("capacitystatus")
///                     .value("Used")
///                     .build())
///             .serviceCode("AmazonEC2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:pricing:getProduct
///       arguments:
///         filters:
///           - field: instanceType
///             value: c5.xlarge
///           - field: operatingSystem
///             value: Linux
///           - field: location
///             value: US East (N. Virginia)
///           - field: preInstalledSw
///             value: NA
///           - field: licenseModel
///             value: No License required
///           - field: tenancy
///             value: Shared
///           - field: capacitystatus
///             value: Used
///         serviceCode: AmazonEC2
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.pricing.getProduct({
///     filters: [
///         {
///             field: "instanceType",
///             value: "ds1.xlarge",
///         },
///         {
///             field: "location",
///             value: "US East (N. Virginia)",
///         },
///     ],
///     serviceCode: "AmazonRedshift",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pricing.get_product(filters=[
///         {
///             "field": "instanceType",
///             "value": "ds1.xlarge",
///         },
///         {
///             "field": "location",
///             "value": "US East (N. Virginia)",
///         },
///     ],
///     service_code="AmazonRedshift")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Pricing.GetProduct.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Pricing.Inputs.GetProductFilterInputArgs
///             {
///                 Field = "instanceType",
///                 Value = "ds1.xlarge",
///             },
///             new Aws.Pricing.Inputs.GetProductFilterInputArgs
///             {
///                 Field = "location",
///                 Value = "US East (N. Virginia)",
///             },
///         },
///         ServiceCode = "AmazonRedshift",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pricing"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pricing.GetProduct(ctx, &pricing.GetProductArgs{
/// 			Filters: []pricing.GetProductFilter{
/// 				{
/// 					Field: "instanceType",
/// 					Value: "ds1.xlarge",
/// 				},
/// 				{
/// 					Field: "location",
/// 					Value: "US East (N. Virginia)",
/// 				},
/// 			},
/// 			ServiceCode: "AmazonRedshift",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_pricing_getproduct" "example" {
///   filters {
///     field = "instanceType"
///     value = "ds1.xlarge"
///   }
///   filters {
///     field = "location"
///     value = "US East (N. Virginia)"
///   }
///   service_code = "AmazonRedshift"
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
/// import com.pulumi.aws.pricing.inputs.GetProductFilterArgs;
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
///         final var example = PricingFunctions.getProduct(GetProductArgs.builder()
///             .filters(
///                 GetProductFilterArgs.builder()
///                     .field("instanceType")
///                     .value("ds1.xlarge")
///                     .build(),
///                 GetProductFilterArgs.builder()
///                     .field("location")
///                     .value("US East (N. Virginia)")
///                     .build())
///             .serviceCode("AmazonRedshift")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:pricing:getProduct
///       arguments:
///         filters:
///           - field: instanceType
///             value: ds1.xlarge
///           - field: location
///             value: US East (N. Virginia)
///         serviceCode: AmazonRedshift
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_pricing_get_product_get_product_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductResult> getProduct(
  GetProductArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:pricing/getProduct:getProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductResult.fromMap(result);
}

pulumi.Output<GetProductResult> getProductOutput(
  GetProductArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:pricing/getProduct:getProduct',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProductResult.fromMap);
}
