import 'package:pulumi/pulumi.dart' as pulumi;
import 'upload_buffer_args.dart';

/// Manages an AWS Storage Gateway upload buffer.
///
/// > **NOTE:** The Storage Gateway API provides no method to remove an upload buffer disk. Destroying this resource does not perform any Storage Gateway actions.
///
/// ## Example Usage
///
/// ### Cached and VTL Gateway Type
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.storagegateway.getLocalDisk({
///     diskNode: testAwsVolumeAttachment.deviceName,
///     gatewayArn: testAwsStoragegatewayGateway.arn,
/// });
/// const testUploadBuffer = new aws.storagegateway.UploadBuffer("test", {
///     diskPath: test.then(test => test.diskPath),
///     gatewayArn: testAwsStoragegatewayGateway.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.storagegateway.get_local_disk(disk_node=test_aws_volume_attachment["deviceName"],
///     gateway_arn=test_aws_storagegateway_gateway["arn"])
/// test_upload_buffer = aws.storagegateway.UploadBuffer("test",
///     disk_path=test.disk_path,
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
///         DiskNode = testAwsVolumeAttachment.DeviceName,
///         GatewayArn = testAwsStoragegatewayGateway.Arn,
///     });
///
///     var testUploadBuffer = new Aws.StorageGateway.UploadBuffer("test", new()
///     {
///         DiskPath = test.Apply(getLocalDiskResult => getLocalDiskResult.DiskPath),
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
/// 		test, err := storagegateway.GetLocalDisk(ctx, &storagegateway.GetLocalDiskArgs{
/// 			DiskNode:   pulumi.StringRef(testAwsVolumeAttachment.DeviceName),
/// 			GatewayArn: testAwsStoragegatewayGateway.Arn,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storagegateway.NewUploadBuffer(ctx, "test", &storagegateway.UploadBufferArgs{
/// 			DiskPath:   pulumi.String(test.DiskPath),
/// 			GatewayArn: pulumi.Any(testAwsStoragegatewayGateway.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.aws.storagegateway.UploadBuffer;
/// import com.pulumi.aws.storagegateway.UploadBufferArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .diskNode(testAwsVolumeAttachment.deviceName())
///             .gatewayArn(testAwsStoragegatewayGateway.arn())
///             .build());
///
///         var testUploadBuffer = new UploadBuffer("testUploadBuffer", UploadBufferArgs.builder()
///             .diskPath(test.diskPath())
///             .gatewayArn(testAwsStoragegatewayGateway.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testUploadBuffer:
///     type: aws:storagegateway:UploadBuffer
///     name: test
///     properties:
///       diskPath: ${test.diskPath}
///       gatewayArn: ${testAwsStoragegatewayGateway.arn}
/// variables:
///   test:
///     fn::invoke:
///       function: aws:storagegateway:getLocalDisk
///       arguments:
///         diskNode: ${testAwsVolumeAttachment.deviceName}
///         gatewayArn: ${testAwsStoragegatewayGateway.arn}
/// ```
///
///
/// ### Stored Gateway Type
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.storagegateway.getLocalDisk({
///     diskNode: testAwsVolumeAttachment.deviceName,
///     gatewayArn: testAwsStoragegatewayGateway.arn,
/// });
/// const example = new aws.storagegateway.UploadBuffer("example", {
///     diskId: exampleAwsStoragegatewayLocalDisk.id,
///     gatewayArn: exampleAwsStoragegatewayGateway.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.storagegateway.get_local_disk(disk_node=test_aws_volume_attachment["deviceName"],
///     gateway_arn=test_aws_storagegateway_gateway["arn"])
/// example = aws.storagegateway.UploadBuffer("example",
///     disk_id=example_aws_storagegateway_local_disk["id"],
///     gateway_arn=example_aws_storagegateway_gateway["arn"])
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
///         DiskNode = testAwsVolumeAttachment.DeviceName,
///         GatewayArn = testAwsStoragegatewayGateway.Arn,
///     });
///
///     var example = new Aws.StorageGateway.UploadBuffer("example", new()
///     {
///         DiskId = exampleAwsStoragegatewayLocalDisk.Id,
///         GatewayArn = exampleAwsStoragegatewayGateway.Arn,
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
/// 			DiskNode:   pulumi.StringRef(testAwsVolumeAttachment.DeviceName),
/// 			GatewayArn: testAwsStoragegatewayGateway.Arn,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storagegateway.NewUploadBuffer(ctx, "example", &storagegateway.UploadBufferArgs{
/// 			DiskId:     pulumi.Any(exampleAwsStoragegatewayLocalDisk.Id),
/// 			GatewayArn: pulumi.Any(exampleAwsStoragegatewayGateway.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.aws.storagegateway.UploadBuffer;
/// import com.pulumi.aws.storagegateway.UploadBufferArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .diskNode(testAwsVolumeAttachment.deviceName())
///             .gatewayArn(testAwsStoragegatewayGateway.arn())
///             .build());
///
///         var example = new UploadBuffer("example", UploadBufferArgs.builder()
///             .diskId(exampleAwsStoragegatewayLocalDisk.id())
///             .gatewayArn(exampleAwsStoragegatewayGateway.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:storagegateway:UploadBuffer
///     properties:
///       diskId: ${exampleAwsStoragegatewayLocalDisk.id}
///       gatewayArn: ${exampleAwsStoragegatewayGateway.arn}
/// variables:
///   test:
///     fn::invoke:
///       function: aws:storagegateway:getLocalDisk
///       arguments:
///         diskNode: ${testAwsVolumeAttachment.deviceName}
///         gatewayArn: ${testAwsStoragegatewayGateway.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.storagegateway.UploadBuffer` using the gateway Amazon Resource Name (ARN) and local disk identifier separated with a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/uploadBuffer:UploadBuffer example arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678:pci-0000:03:00.0-scsi-0:0:0:0
/// ```
class UploadBuffer extends pulumi.CustomResource {
  /// Local disk identifier. For example, `pci-0000:03:00.0-scsi-0:0:0:0`.
  late final pulumi.Output<String> diskId;

  /// Local disk path. For example, `/dev/nvme1n1`.
  late final pulumi.Output<String> diskPath;

  /// The Amazon Resource Name (ARN) of the gateway.
  late final pulumi.Output<String> gatewayArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [UploadBuffer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UploadBuffer]. {@macro pulumi_storagegateway_upload_buffer_upload_buffer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UploadBuffer(
    String name, {
    UploadBufferArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/uploadBuffer:UploadBuffer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.diskId = registerOutput<String>('diskId');
    this.diskPath = registerOutput<String>('diskPath');
    this.gatewayArn = registerOutput<String>('gatewayArn');
    this.region = registerOutput<String>('region');
  }
}
