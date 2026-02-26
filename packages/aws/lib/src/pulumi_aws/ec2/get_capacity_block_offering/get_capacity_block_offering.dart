import 'package:pulumi/pulumi.dart';
import 'get_capacity_block_offering_args.dart';
import 'get_capacity_block_offering_result.dart';

/// Information about a single EC2 Capacity Block Offering.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getCapacityBlockOffering({
/// capacityDurationHours: 24,
/// endDateRange: "2024-05-30T15:04:05Z",
/// instanceCount: 1,
/// instanceType: "p4d.24xlarge",
/// startDateRange: "2024-04-28T15:04:05Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_capacity_block_offering(capacity_duration_hours=24,
/// end_date_range="2024-05-30T15:04:05Z",
/// instance_count=1,
/// instance_type="p4d.24xlarge",
/// start_date_range="2024-04-28T15:04:05Z")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetCapacityBlockOffering.Invoke(new()
/// {
/// CapacityDurationHours = 24,
/// EndDateRange = "2024-05-30T15:04:05Z",
/// InstanceCount = 1,
/// InstanceType = "p4d.24xlarge",
/// StartDateRange = "2024-04-28T15:04:05Z",
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
/// _, err := ec2.GetCapacityBlockOffering(ctx, &ec2.GetCapacityBlockOfferingArgs{
/// CapacityDurationHours: 24,
/// EndDateRange:          pulumi.StringRef("2024-05-30T15:04:05Z"),
/// InstanceCount:         1,
/// InstanceType:          "p4d.24xlarge",
/// StartDateRange:        pulumi.StringRef("2024-04-28T15:04:05Z"),
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
/// import com.pulumi.aws.ec2.inputs.GetCapacityBlockOfferingArgs;
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
/// final var example = Ec2Functions.getCapacityBlockOffering(GetCapacityBlockOfferingArgs.builder()
/// .capacityDurationHours(24)
/// .endDateRange("2024-05-30T15:04:05Z")
/// .instanceCount(1)
/// .instanceType("p4d.24xlarge")
/// .startDateRange("2024-04-28T15:04:05Z")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2:getCapacityBlockOffering
/// arguments:
/// capacityDurationHours: 24
/// endDateRange: 2024-05-30T15:04:05Z
/// instanceCount: 1
/// instanceType: p4d.24xlarge
/// startDateRange: 2024-04-28T15:04:05Z
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCapacityBlockOfferingResult> getCapacityBlockOffering(
  GetCapacityBlockOfferingArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getCapacityBlockOffering:getCapacityBlockOffering',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCapacityBlockOfferingResult.fromMap(result);
}
