import 'package:pulumi/pulumi.dart';
import 'get_instance_type_offerings_args2.dart';
import 'get_instance_type_offerings_result2.dart';

/// Provides details about available MQ broker instance type offerings. Use this data source to discover supported instance types, storage types, and deployment modes for Amazon MQ brokers.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Get all instance type offerings
/// const all = aws.mq.getInstanceTypeOfferings({});
/// // Filter by engine type
/// const activemq = aws.mq.getInstanceTypeOfferings({
/// engineType: "ACTIVEMQ",
/// });
/// // Filter by storage type
/// const ebs = aws.mq.getInstanceTypeOfferings({
/// storageType: "EBS",
/// });
/// // Filter by instance type
/// const m5 = aws.mq.getInstanceTypeOfferings({
/// hostInstanceType: "mq.m5.large",
/// });
/// // Filter by multiple criteria
/// const filtered = aws.mq.getInstanceTypeOfferings({
/// engineType: "ACTIVEMQ",
/// storageType: "EBS",
/// hostInstanceType: "mq.m5.large",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Get all instance type offerings
/// all = aws.mq.get_instance_type_offerings()
/// # Filter by engine type
/// activemq = aws.mq.get_instance_type_offerings(engine_type="ACTIVEMQ")
/// # Filter by storage type
/// ebs = aws.mq.get_instance_type_offerings(storage_type="EBS")
/// # Filter by instance type
/// m5 = aws.mq.get_instance_type_offerings(host_instance_type="mq.m5.large")
/// # Filter by multiple criteria
/// filtered = aws.mq.get_instance_type_offerings(engine_type="ACTIVEMQ",
/// storage_type="EBS",
/// host_instance_type="mq.m5.large")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Get all instance type offerings
/// var all = Aws.Mq.GetInstanceTypeOfferings.Invoke();
///
/// // Filter by engine type
/// var activemq = Aws.Mq.GetInstanceTypeOfferings.Invoke(new()
/// {
/// EngineType = "ACTIVEMQ",
/// });
///
/// // Filter by storage type
/// var ebs = Aws.Mq.GetInstanceTypeOfferings.Invoke(new()
/// {
/// StorageType = "EBS",
/// });
///
/// // Filter by instance type
/// var m5 = Aws.Mq.GetInstanceTypeOfferings.Invoke(new()
/// {
/// HostInstanceType = "mq.m5.large",
/// });
///
/// // Filter by multiple criteria
/// var filtered = Aws.Mq.GetInstanceTypeOfferings.Invoke(new()
/// {
/// EngineType = "ACTIVEMQ",
/// StorageType = "EBS",
/// HostInstanceType = "mq.m5.large",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mq"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Get all instance type offerings
/// _, err := mq.GetInstanceTypeOfferings(ctx, &mq.GetInstanceTypeOfferingsArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// // Filter by engine type
/// _, err = mq.GetInstanceTypeOfferings(ctx, &mq.GetInstanceTypeOfferingsArgs{
/// EngineType: pulumi.StringRef("ACTIVEMQ"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Filter by storage type
/// _, err = mq.GetInstanceTypeOfferings(ctx, &mq.GetInstanceTypeOfferingsArgs{
/// StorageType: pulumi.StringRef("EBS"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Filter by instance type
/// _, err = mq.GetInstanceTypeOfferings(ctx, &mq.GetInstanceTypeOfferingsArgs{
/// HostInstanceType: pulumi.StringRef("mq.m5.large"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Filter by multiple criteria
/// _, err = mq.GetInstanceTypeOfferings(ctx, &mq.GetInstanceTypeOfferingsArgs{
/// EngineType:       pulumi.StringRef("ACTIVEMQ"),
/// StorageType:      pulumi.StringRef("EBS"),
/// HostInstanceType: pulumi.StringRef("mq.m5.large"),
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
/// import com.pulumi.aws.mq.MqFunctions;
/// import com.pulumi.aws.mq.inputs.GetInstanceTypeOfferingsArgs;
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
/// // Get all instance type offerings
/// final var all = MqFunctions.getInstanceTypeOfferings(GetInstanceTypeOfferingsArgs.builder()
/// .build());
///
/// // Filter by engine type
/// final var activemq = MqFunctions.getInstanceTypeOfferings(GetInstanceTypeOfferingsArgs.builder()
/// .engineType("ACTIVEMQ")
/// .build());
///
/// // Filter by storage type
/// final var ebs = MqFunctions.getInstanceTypeOfferings(GetInstanceTypeOfferingsArgs.builder()
/// .storageType("EBS")
/// .build());
///
/// // Filter by instance type
/// final var m5 = MqFunctions.getInstanceTypeOfferings(GetInstanceTypeOfferingsArgs.builder()
/// .hostInstanceType("mq.m5.large")
/// .build());
///
/// // Filter by multiple criteria
/// final var filtered = MqFunctions.getInstanceTypeOfferings(GetInstanceTypeOfferingsArgs.builder()
/// .engineType("ACTIVEMQ")
/// .storageType("EBS")
/// .hostInstanceType("mq.m5.large")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// # Get all instance type offerings
/// all:
/// fn::invoke:
/// function: aws:mq:getInstanceTypeOfferings
/// arguments: {}
/// # Filter by engine type
/// activemq:
/// fn::invoke:
/// function: aws:mq:getInstanceTypeOfferings
/// arguments:
/// engineType: ACTIVEMQ
/// # Filter by storage type
/// ebs:
/// fn::invoke:
/// function: aws:mq:getInstanceTypeOfferings
/// arguments:
/// storageType: EBS
/// # Filter by instance type
/// m5:
/// fn::invoke:
/// function: aws:mq:getInstanceTypeOfferings
/// arguments:
/// hostInstanceType: mq.m5.large
/// # Filter by multiple criteria
/// filtered:
/// fn::invoke:
/// function: aws:mq:getInstanceTypeOfferings
/// arguments:
/// engineType: ACTIVEMQ
/// storageType: EBS
/// hostInstanceType: mq.m5.large
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstanceTypeOfferingsResult2> getInstanceTypeOfferings2(
  GetInstanceTypeOfferingsArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:mq/getInstanceTypeOfferings:getInstanceTypeOfferings',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypeOfferingsResult2.fromMap(result);
}
