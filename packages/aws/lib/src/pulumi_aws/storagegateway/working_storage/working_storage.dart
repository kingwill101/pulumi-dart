import 'package:pulumi/pulumi.dart';
import 'working_storage_args.dart';

/// Manages an AWS Storage Gateway working storage.
///
/// > **NOTE:** The Storage Gateway API provides no method to remove a working storage disk. Destroying this resource does not perform any Storage Gateway actions.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.WorkingStorage("example", {
/// diskId: exampleAwsStoragegatewayLocalDisk.id,
/// gatewayArn: exampleAwsStoragegatewayGateway.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.WorkingStorage("example",
/// disk_id=example_aws_storagegateway_local_disk["id"],
/// gateway_arn=example_aws_storagegateway_gateway["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.StorageGateway.WorkingStorage("example", new()
/// {
/// DiskId = exampleAwsStoragegatewayLocalDisk.Id,
/// GatewayArn = exampleAwsStoragegatewayGateway.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/storagegateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storagegateway.NewWorkingStorage(ctx, "example", &storagegateway.WorkingStorageArgs{
/// DiskId:     pulumi.Any(exampleAwsStoragegatewayLocalDisk.Id),
/// GatewayArn: pulumi.Any(exampleAwsStoragegatewayGateway.Arn),
/// })
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
/// import com.pulumi.aws.storagegateway.WorkingStorage;
/// import com.pulumi.aws.storagegateway.WorkingStorageArgs;
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
/// var example = new WorkingStorage("example", WorkingStorageArgs.builder()
/// .diskId(exampleAwsStoragegatewayLocalDisk.id())
/// .gatewayArn(exampleAwsStoragegatewayGateway.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:storagegateway:WorkingStorage
/// properties:
/// diskId: ${exampleAwsStoragegatewayLocalDisk.id}
/// gatewayArn: ${exampleAwsStoragegatewayGateway.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.storagegateway.WorkingStorage`" pulumi-lang-dotnet="`aws.storagegateway.WorkingStorage`" pulumi-lang-go="`storagegateway.WorkingStorage`" pulumi-lang-python="`storagegateway.WorkingStorage`" pulumi-lang-yaml="`aws.storagegateway.WorkingStorage`" pulumi-lang-java="`aws.storagegateway.WorkingStorage`">`aws.storagegateway.WorkingStorage`</span> using the gateway Amazon Resource Name (ARN) and local disk identifier separated with a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/workingStorage:WorkingStorage example arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678:pci-0000:03:00.0-scsi-0:0:0:0
/// ```
class WorkingStorage extends CustomResource {
  /// Local disk identifier. For example, `pci-0000:03:00.0-scsi-0:0:0:0`.
  late final Output<String> diskId;

  /// The Amazon Resource Name (ARN) of the gateway.
  late final Output<String> gatewayArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  WorkingStorage(
    String name, {
    WorkingStorageArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/workingStorage:WorkingStorage',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.diskId = Output.createUnknown<String>();
    this.gatewayArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
