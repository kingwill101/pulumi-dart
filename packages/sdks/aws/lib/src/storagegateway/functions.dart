import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_disk_args.dart';
import 'get_local_disk_result.dart';

/// Retrieve information about a Storage Gateway local disk. The disk identifier is useful for adding the disk as a cache or upload buffer to a gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.storagegateway.getLocalDisk({
///     diskPath: testAwsVolumeAttachment.deviceName,
///     gatewayArn: testAwsStoragegatewayGateway.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.storagegateway.get_local_disk(disk_path=test_aws_volume_attachment["deviceName"],
///     gateway_arn=test_aws_storagegateway_gateway["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.StorageGateway.GetLocalDisk.Invoke(new()
///     {
///         DiskPath = testAwsVolumeAttachment.DeviceName,
///         GatewayArn = testAwsStoragegatewayGateway.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/storagegateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagegateway.GetLocalDisk(ctx, &storagegateway.GetLocalDiskArgs{
/// 			DiskPath:   pulumi.StringRef(testAwsVolumeAttachment.DeviceName),
/// 			GatewayArn: testAwsStoragegatewayGateway.Arn,
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
/// data "aws_storagegateway_getlocaldisk" "test" {
///   disk_path   = testAwsVolumeAttachment.deviceName
///   gateway_arn = testAwsStoragegatewayGateway.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.storagegateway.StoragegatewayFunctions;
/// import com.pulumi.aws.storagegateway.inputs.GetLocalDiskArgs;
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
///         final var test = StoragegatewayFunctions.getLocalDisk(GetLocalDiskArgs.builder()
///             .diskPath(testAwsVolumeAttachment.deviceName())
///             .gatewayArn(testAwsStoragegatewayGateway.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:storagegateway:getLocalDisk
///       arguments:
///         diskPath: ${testAwsVolumeAttachment.deviceName}
///         gatewayArn: ${testAwsStoragegatewayGateway.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_storagegateway_get_local_disk_get_local_disk_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocalDiskResult> getLocalDisk(
  GetLocalDiskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:storagegateway/getLocalDisk:getLocalDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalDiskResult.fromMap(result);
}

pulumi.Output<GetLocalDiskResult> getLocalDiskOutput(
  GetLocalDiskArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:storagegateway/getLocalDisk:getLocalDisk',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLocalDiskResult.fromMap);
}
