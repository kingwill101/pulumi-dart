import 'package:pulumi/pulumi.dart';
import 'get_spot_price_args.dart';
import 'get_spot_price_result.dart';

/// Information about most recent Spot Price for a given EC2 instance.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getSpotPrice({
/// instanceType: "t3.medium",
/// availabilityZone: "us-west-2a",
/// filters: [{
/// name: "product-description",
/// values: ["Linux/UNIX"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_spot_price(instance_type="t3.medium",
/// availability_zone="us-west-2a",
/// filters=[{
/// "name": "product-description",
/// "values": ["Linux/UNIX"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetSpotPrice.Invoke(new()
/// {
/// InstanceType = "t3.medium",
/// AvailabilityZone = "us-west-2a",
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetSpotPriceFilterInputArgs
/// {
/// Name = "product-description",
/// Values = new[]
/// {
/// "Linux/UNIX",
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.GetSpotPrice(ctx, &ec2.GetSpotPriceArgs{
/// InstanceType:     pulumi.StringRef("t3.medium"),
/// AvailabilityZone: pulumi.StringRef("us-west-2a"),
/// Filters: []ec2.GetSpotPriceFilter{
/// {
/// Name: "product-description",
/// Values: []string{
/// "Linux/UNIX",
/// },
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetSpotPriceArgs;
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
/// final var example = Ec2Functions.getSpotPrice(GetSpotPriceArgs.builder()
/// .instanceType("t3.medium")
/// .availabilityZone("us-west-2a")
/// .filters(GetSpotPriceFilterArgs.builder()
/// .name("product-description")
/// .values("Linux/UNIX")
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
/// function: aws:ec2:getSpotPrice
/// arguments:
/// instanceType: t3.medium
/// availabilityZone: us-west-2a
/// filters:
/// - name: product-description
/// values:
/// - Linux/UNIX
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSpotPriceResult> getSpotPrice(
  GetSpotPriceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSpotPrice:getSpotPrice',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSpotPriceResult.fromMap(result);
}
