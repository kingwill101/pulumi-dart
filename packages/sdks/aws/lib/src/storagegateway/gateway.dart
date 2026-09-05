import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_args.dart';
import 'gateway_gateway_network_interface.dart';
import 'gateway_maintenance_start_time.dart';
import 'gateway_smb_active_directory_settings.dart';
import 'gateway_state.dart';

/// Manages an AWS Storage Gateway file, tape, or volume gateway in the provider region.
///
/// &gt; **NOTE:** The Storage Gateway API requires the gateway to be connected to properly return information after activation. If you are receiving `The specified gateway is not connected` errors during resource creation (gateway activation), ensure your gateway instance meets the [Storage Gateway requirements](https://docs.aws.amazon.com/storagegateway/latest/userguide/Requirements.html).
///
/// ## Example Usage
///
/// ### Local Cache
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testVolumeAttachment = new aws.ec2.VolumeAttachment("test", {
///     deviceName: "/dev/xvdb",
///     volumeId: testAwsEbsVolume.id,
///     instanceId: testAwsInstance.id,
/// });
/// const test = aws.storagegateway.getLocalDiskOutput({
///     diskNode: testVolumeAttachment.deviceName,
///     gatewayArn: testAwsStoragegatewayGateway.arn,
/// });
/// const testCache = new aws.storagegateway.Cache("test", {
///     diskId: test.diskId,
///     gatewayArn: testAwsStoragegatewayGateway.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_volume_attachment = aws.ec2.VolumeAttachment("test",
///     device_name="/dev/xvdb",
///     volume_id=test_aws_ebs_volume["id"],
///     instance_id=test_aws_instance["id"])
/// test = aws.storagegateway.get_local_disk_output(disk_node=test_volume_attachment.device_name,
///     gateway_arn=test_aws_storagegateway_gateway["arn"])
/// test_cache = aws.storagegateway.Cache("test",
///     disk_id=test.disk_id,
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
///     var testVolumeAttachment = new Aws.Ec2.VolumeAttachment("test", new()
///     {
///         DeviceName = "/dev/xvdb",
///         VolumeId = testAwsEbsVolume.Id,
///         InstanceId = testAwsInstance.Id,
///     });
///
///     var test = Aws.StorageGateway.GetLocalDisk.Invoke(new()
///     {
///         DiskNode = testVolumeAttachment.DeviceName,
///         GatewayArn = testAwsStoragegatewayGateway.Arn,
///     });
///
///     var testCache = new Aws.StorageGateway.Cache("test", new()
///     {
///         DiskId = test.Apply(getLocalDiskResult => getLocalDiskResult.DiskId),
///         GatewayArn = testAwsStoragegatewayGateway.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/storagegateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testVolumeAttachment, err := ec2.NewVolumeAttachment(ctx, "test", &ec2.VolumeAttachmentArgs{
/// 			DeviceName: pulumi.String("/dev/xvdb"),
/// 			VolumeId:   pulumi.Any(testAwsEbsVolume.Id),
/// 			InstanceId: pulumi.Any(testAwsInstance.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test := storagegateway.GetLocalDiskOutput(ctx, storagegateway.GetLocalDiskOutputArgs{
/// 			DiskNode:   testVolumeAttachment.DeviceName,
/// 			GatewayArn: pulumi.Any(testAwsStoragegatewayGateway.Arn),
/// 		}, nil)
/// 		_, err = storagegateway.NewCache(ctx, "test", &storagegateway.CacheArgs{
/// 			DiskId:     test.DiskId(),
/// 			GatewayArn: pulumi.Any(testAwsStoragegatewayGateway.Arn),
/// 		})
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
///   disk_node   = aws_ec2_volumeattachment.test.device_name
///   gateway_arn = testAwsStoragegatewayGateway.arn
/// }
///
/// resource "aws_ec2_volumeattachment" "test" {
///   device_name = "/dev/xvdb"
///   volume_id   = testAwsEbsVolume.id
///   instance_id = testAwsInstance.id
/// }
/// resource "aws_storagegateway_cache" "test" {
///   disk_id     = data.aws_storagegateway_getlocaldisk.test.disk_id
///   gateway_arn = testAwsStoragegatewayGateway.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.VolumeAttachment;
/// import com.pulumi.aws.ec2.VolumeAttachmentArgs;
/// import com.pulumi.aws.storagegateway.StoragegatewayFunctions;
/// import com.pulumi.aws.storagegateway.inputs.GetLocalDiskArgs;
/// import com.pulumi.aws.storagegateway.Cache;
/// import com.pulumi.aws.storagegateway.CacheArgs;
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
///         var testVolumeAttachment = new VolumeAttachment("testVolumeAttachment", VolumeAttachmentArgs.builder()
///             .deviceName("/dev/xvdb")
///             .volumeId(testAwsEbsVolume.id())
///             .instanceId(testAwsInstance.id())
///             .build());
///
///         final var test = StoragegatewayFunctions.getLocalDisk(GetLocalDiskArgs.builder()
///             .diskNode(testVolumeAttachment.deviceName())
///             .gatewayArn(testAwsStoragegatewayGateway.arn())
///             .build());
///
///         var testCache = new Cache("testCache", CacheArgs.builder()
///             .diskId(test.applyValue(_test -> _test.diskId()))
///             .gatewayArn(testAwsStoragegatewayGateway.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testVolumeAttachment:
///     type: aws:ec2:VolumeAttachment
///     name: test
///     properties:
///       deviceName: /dev/xvdb
///       volumeId: ${testAwsEbsVolume.id}
///       instanceId: ${testAwsInstance.id}
///   testCache:
///     type: aws:storagegateway:Cache
///     name: test
///     properties:
///       diskId: ${test.diskId}
///       gatewayArn: ${testAwsStoragegatewayGateway.arn}
/// variables:
///   test:
///     fn::invoke:
///       function: aws:storagegateway:getLocalDisk
///       arguments:
///         diskNode: ${testVolumeAttachment.deviceName}
///         gatewayArn: ${testAwsStoragegatewayGateway.arn}
/// ```
///
///
/// ### FSx File Gateway
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.Gateway("example", {
///     smbActiveDirectorySettings: {
///         domainName: "corp.example.com",
///         password: "avoid-plaintext-passwords",
///         username: "Admin",
///     },
///     gatewayIpAddress: "1.2.3.4",
///     gatewayName: "example",
///     gatewayTimezone: "GMT",
///     gatewayType: "FILE_FSX_SMB",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.Gateway("example",
///     smb_active_directory_settings={
///         "domain_name": "corp.example.com",
///         "password": "avoid-plaintext-passwords",
///         "username": "Admin",
///     },
///     gateway_ip_address="1.2.3.4",
///     gateway_name="example",
///     gateway_timezone="GMT",
///     gateway_type="FILE_FSX_SMB")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.StorageGateway.Gateway("example", new()
///     {
///         SmbActiveDirectorySettings = new Aws.StorageGateway.Inputs.GatewaySmbActiveDirectorySettingsArgs
///         {
///             DomainName = "corp.example.com",
///             Password = "avoid-plaintext-passwords",
///             Username = "Admin",
///         },
///         GatewayIpAddress = "1.2.3.4",
///         GatewayName = "example",
///         GatewayTimezone = "GMT",
///         GatewayType = "FILE_FSX_SMB",
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
/// 		_, err := storagegateway.NewGateway(ctx, "example", &storagegateway.GatewayArgs{
/// 			SmbActiveDirectorySettings: &storagegateway.GatewaySmbActiveDirectorySettingsArgs{
/// 				DomainName: pulumi.String("corp.example.com"),
/// 				Password:   pulumi.String("avoid-plaintext-passwords"),
/// 				Username:   pulumi.String("Admin"),
/// 			},
/// 			GatewayIpAddress: pulumi.String("1.2.3.4"),
/// 			GatewayName:      pulumi.String("example"),
/// 			GatewayTimezone:  pulumi.String("GMT"),
/// 			GatewayType:      pulumi.String("FILE_FSX_SMB"),
/// 		})
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
/// resource "aws_storagegateway_gateway" "example" {
///   smb_active_directory_settings = {
///     domain_name = "corp.example.com"
///     password    = "avoid-plaintext-passwords"
///     username    = "Admin"
///   }
///   gateway_ip_address = "1.2.3.4"
///   gateway_name       = "example"
///   gateway_timezone   = "GMT"
///   gateway_type       = "FILE_FSX_SMB"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.storagegateway.Gateway;
/// import com.pulumi.aws.storagegateway.GatewayArgs;
/// import com.pulumi.aws.storagegateway.inputs.GatewaySmbActiveDirectorySettingsArgs;
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
///         var example = new Gateway("example", GatewayArgs.builder()
///             .smbActiveDirectorySettings(GatewaySmbActiveDirectorySettingsArgs.builder()
///                 .domainName("corp.example.com")
///                 .password("avoid-plaintext-passwords")
///                 .username("Admin")
///                 .build())
///             .gatewayIpAddress("1.2.3.4")
///             .gatewayName("example")
///             .gatewayTimezone("GMT")
///             .gatewayType("FILE_FSX_SMB")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:storagegateway:Gateway
///     properties:
///       smbActiveDirectorySettings:
///         domainName: corp.example.com
///         password: avoid-plaintext-passwords
///         username: Admin
///       gatewayIpAddress: 1.2.3.4
///       gatewayName: example
///       gatewayTimezone: GMT
///       gatewayType: FILE_FSX_SMB
/// ```
///
///
/// ### S3 File Gateway
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.Gateway("example", {
///     gatewayIpAddress: "1.2.3.4",
///     gatewayName: "example",
///     gatewayTimezone: "GMT",
///     gatewayType: "FILE_S3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.Gateway("example",
///     gateway_ip_address="1.2.3.4",
///     gateway_name="example",
///     gateway_timezone="GMT",
///     gateway_type="FILE_S3")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.StorageGateway.Gateway("example", new()
///     {
///         GatewayIpAddress = "1.2.3.4",
///         GatewayName = "example",
///         GatewayTimezone = "GMT",
///         GatewayType = "FILE_S3",
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
/// 		_, err := storagegateway.NewGateway(ctx, "example", &storagegateway.GatewayArgs{
/// 			GatewayIpAddress: pulumi.String("1.2.3.4"),
/// 			GatewayName:      pulumi.String("example"),
/// 			GatewayTimezone:  pulumi.String("GMT"),
/// 			GatewayType:      pulumi.String("FILE_S3"),
/// 		})
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
/// resource "aws_storagegateway_gateway" "example" {
///   gateway_ip_address = "1.2.3.4"
///   gateway_name       = "example"
///   gateway_timezone   = "GMT"
///   gateway_type       = "FILE_S3"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.storagegateway.Gateway;
/// import com.pulumi.aws.storagegateway.GatewayArgs;
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
///         var example = new Gateway("example", GatewayArgs.builder()
///             .gatewayIpAddress("1.2.3.4")
///             .gatewayName("example")
///             .gatewayTimezone("GMT")
///             .gatewayType("FILE_S3")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:storagegateway:Gateway
///     properties:
///       gatewayIpAddress: 1.2.3.4
///       gatewayName: example
///       gatewayTimezone: GMT
///       gatewayType: FILE_S3
/// ```
///
///
/// ### Tape Gateway
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.Gateway("example", {
///     gatewayIpAddress: "1.2.3.4",
///     gatewayName: "example",
///     gatewayTimezone: "GMT",
///     gatewayType: "VTL",
///     mediumChangerType: "AWS-Gateway-VTL",
///     tapeDriveType: "IBM-ULT3580-TD5",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.Gateway("example",
///     gateway_ip_address="1.2.3.4",
///     gateway_name="example",
///     gateway_timezone="GMT",
///     gateway_type="VTL",
///     medium_changer_type="AWS-Gateway-VTL",
///     tape_drive_type="IBM-ULT3580-TD5")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.StorageGateway.Gateway("example", new()
///     {
///         GatewayIpAddress = "1.2.3.4",
///         GatewayName = "example",
///         GatewayTimezone = "GMT",
///         GatewayType = "VTL",
///         MediumChangerType = "AWS-Gateway-VTL",
///         TapeDriveType = "IBM-ULT3580-TD5",
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
/// 		_, err := storagegateway.NewGateway(ctx, "example", &storagegateway.GatewayArgs{
/// 			GatewayIpAddress:  pulumi.String("1.2.3.4"),
/// 			GatewayName:       pulumi.String("example"),
/// 			GatewayTimezone:   pulumi.String("GMT"),
/// 			GatewayType:       pulumi.String("VTL"),
/// 			MediumChangerType: pulumi.String("AWS-Gateway-VTL"),
/// 			TapeDriveType:     pulumi.String("IBM-ULT3580-TD5"),
/// 		})
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
/// resource "aws_storagegateway_gateway" "example" {
///   gateway_ip_address  = "1.2.3.4"
///   gateway_name        = "example"
///   gateway_timezone    = "GMT"
///   gateway_type        = "VTL"
///   medium_changer_type = "AWS-Gateway-VTL"
///   tape_drive_type     = "IBM-ULT3580-TD5"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.storagegateway.Gateway;
/// import com.pulumi.aws.storagegateway.GatewayArgs;
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
///         var example = new Gateway("example", GatewayArgs.builder()
///             .gatewayIpAddress("1.2.3.4")
///             .gatewayName("example")
///             .gatewayTimezone("GMT")
///             .gatewayType("VTL")
///             .mediumChangerType("AWS-Gateway-VTL")
///             .tapeDriveType("IBM-ULT3580-TD5")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:storagegateway:Gateway
///     properties:
///       gatewayIpAddress: 1.2.3.4
///       gatewayName: example
///       gatewayTimezone: GMT
///       gatewayType: VTL
///       mediumChangerType: AWS-Gateway-VTL
///       tapeDriveType: IBM-ULT3580-TD5
/// ```
///
///
/// ### Volume Gateway (Cached)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.Gateway("example", {
///     gatewayIpAddress: "1.2.3.4",
///     gatewayName: "example",
///     gatewayTimezone: "GMT",
///     gatewayType: "CACHED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.Gateway("example",
///     gateway_ip_address="1.2.3.4",
///     gateway_name="example",
///     gateway_timezone="GMT",
///     gateway_type="CACHED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.StorageGateway.Gateway("example", new()
///     {
///         GatewayIpAddress = "1.2.3.4",
///         GatewayName = "example",
///         GatewayTimezone = "GMT",
///         GatewayType = "CACHED",
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
/// 		_, err := storagegateway.NewGateway(ctx, "example", &storagegateway.GatewayArgs{
/// 			GatewayIpAddress: pulumi.String("1.2.3.4"),
/// 			GatewayName:      pulumi.String("example"),
/// 			GatewayTimezone:  pulumi.String("GMT"),
/// 			GatewayType:      pulumi.String("CACHED"),
/// 		})
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
/// resource "aws_storagegateway_gateway" "example" {
///   gateway_ip_address = "1.2.3.4"
///   gateway_name       = "example"
///   gateway_timezone   = "GMT"
///   gateway_type       = "CACHED"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.storagegateway.Gateway;
/// import com.pulumi.aws.storagegateway.GatewayArgs;
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
///         var example = new Gateway("example", GatewayArgs.builder()
///             .gatewayIpAddress("1.2.3.4")
///             .gatewayName("example")
///             .gatewayTimezone("GMT")
///             .gatewayType("CACHED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:storagegateway:Gateway
///     properties:
///       gatewayIpAddress: 1.2.3.4
///       gatewayName: example
///       gatewayTimezone: GMT
///       gatewayType: CACHED
/// ```
///
///
/// ### Volume Gateway (Stored)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.Gateway("example", {
///     gatewayIpAddress: "1.2.3.4",
///     gatewayName: "example",
///     gatewayTimezone: "GMT",
///     gatewayType: "STORED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.Gateway("example",
///     gateway_ip_address="1.2.3.4",
///     gateway_name="example",
///     gateway_timezone="GMT",
///     gateway_type="STORED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.StorageGateway.Gateway("example", new()
///     {
///         GatewayIpAddress = "1.2.3.4",
///         GatewayName = "example",
///         GatewayTimezone = "GMT",
///         GatewayType = "STORED",
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
/// 		_, err := storagegateway.NewGateway(ctx, "example", &storagegateway.GatewayArgs{
/// 			GatewayIpAddress: pulumi.String("1.2.3.4"),
/// 			GatewayName:      pulumi.String("example"),
/// 			GatewayTimezone:  pulumi.String("GMT"),
/// 			GatewayType:      pulumi.String("STORED"),
/// 		})
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
/// resource "aws_storagegateway_gateway" "example" {
///   gateway_ip_address = "1.2.3.4"
///   gateway_name       = "example"
///   gateway_timezone   = "GMT"
///   gateway_type       = "STORED"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.storagegateway.Gateway;
/// import com.pulumi.aws.storagegateway.GatewayArgs;
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
///         var example = new Gateway("example", GatewayArgs.builder()
///             .gatewayIpAddress("1.2.3.4")
///             .gatewayName("example")
///             .gatewayTimezone("GMT")
///             .gatewayType("STORED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:storagegateway:Gateway
///     properties:
///       gatewayIpAddress: 1.2.3.4
///       gatewayName: example
///       gatewayTimezone: GMT
///       gatewayType: STORED
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.storagegateway.Gateway` using the gateway ARN. For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/gateway:Gateway example arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678
/// ```
///
/// Certain resource arguments, like `gatewayIpAddress` do not have a Storage Gateway API method for reading the information after creation, either omit the argument from the Pulumi program or use `ignoreChanges` to hide the difference. For example:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.Gateway("example", {gatewayIpAddress: sgw.privateIp}, {
///     ignoreChanges: ["gatewayIpAddress"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.Gateway("example", gateway_ip_address=sgw["privateIp"],
/// opts = pulumi.ResourceOptions(ignore_changes=["gatewayIpAddress"]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.StorageGateway.Gateway("example", new()
///     {
///         GatewayIpAddress = sgw.PrivateIp,
///     }, new CustomResourceOptions
///     {
///         IgnoreChanges =
///         {
///             "gatewayIpAddress",
///         },
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
/// 		_, err := storagegateway.NewGateway(ctx, "example", &storagegateway.GatewayArgs{
/// 			GatewayIpAddress: pulumi.Any(sgw.PrivateIp),
/// 		}, pulumi.IgnoreChanges([]string{
/// 			"gatewayIpAddress",
/// 		}))
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
/// resource "aws_storagegateway_gateway" "example" {
///   lifecycle {
///     ignore_changes = [gatewayIpAddress]
///   }
///   gateway_ip_address = sgw.privateIp
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.storagegateway.Gateway;
/// import com.pulumi.aws.storagegateway.GatewayArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Gateway("example", GatewayArgs.builder()
///             .gatewayIpAddress(sgw.privateIp())
///             .build(), CustomResourceOptions.builder()
///                 .ignoreChanges("gatewayIpAddress")
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:storagegateway:Gateway
///     properties:
///       gatewayIpAddress: ${sgw.privateIp}
///     options:
///       ignoreChanges:
///         - gatewayIpAddress
/// ```
class Gateway extends pulumi.CustomResource {
  /// Gateway activation key during resource creation. Conflicts with `gatewayIpAddress`. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
  late final pulumi.Output<String> activationKey;
  /// ARN of the gateway.
  late final pulumi.Output<String> arn;
  /// The average download bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  late final pulumi.Output<int?> averageDownloadRateLimitInBitsPerSec;
  /// The average upload bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  late final pulumi.Output<int?> averageUploadRateLimitInBitsPerSec;
  /// ARN of the Amazon CloudWatch log group to use to monitor and log events in the gateway.
  late final pulumi.Output<String?> cloudwatchLogGroupArn;
  /// The ID of the Amazon EC2 instance that was used to launch the gateway.
  late final pulumi.Output<String> ec2InstanceId;
  /// The type of endpoint for your gateway.
  late final pulumi.Output<String> endpointType;
  /// Identifier of the gateway.
  late final pulumi.Output<String> gatewayId;
  /// Gateway IP address to retrieve activation key during resource creation. Conflicts with `activationKey`. Gateway must be accessible on port 80 from where this provider is running. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
  late final pulumi.Output<String> gatewayIpAddress;
  /// Name of the gateway.
  late final pulumi.Output<String> gatewayName;
  /// An array that contains descriptions of the gateway network interfaces. See Gateway Network Interface.
  late final pulumi.Output<List<GatewayGatewayNetworkInterface>> gatewayNetworkInterfaces;
  /// Time zone for the gateway. The time zone is of the format "GMT", "GMT-hr:mm", or "GMT+hr:mm". For example, `GMT-4:00` indicates the time is 4 hours behind GMT. The time zone is used, for example, for scheduling snapshots and your gateway's maintenance schedule.
  late final pulumi.Output<String> gatewayTimezone;
  /// Type of the gateway. The default value is `STORED`. Valid values: `CACHED`, `FILE_FSX_SMB`, `FILE_S3`, `STORED`, `VTL`.
  late final pulumi.Output<String?> gatewayType;
  /// VPC endpoint address to be used when activating your gateway. This should be used when your instance is in a private subnet. Requires HTTP access from client computer running Pulumi. More info on what ports are required by your VPC Endpoint Security group in [Activating a Gateway in a VPC](https://docs.aws.amazon.com/storagegateway/latest/userguide/gateway-private-link.html).
  late final pulumi.Output<String?> gatewayVpcEndpoint;
  /// The type of hypervisor environment used by the host.
  late final pulumi.Output<String> hostEnvironment;
  /// The gateway's weekly maintenance start time information, including day and time of the week. The maintenance time is the time in your gateway's time zone. More details below.
  late final pulumi.Output<GatewayMaintenanceStartTime> maintenanceStartTime;
  /// Type of medium changer to use for tape gateway. This provider cannot detect drift of this argument. Valid values: `STK-L700`, `AWS-Gateway-VTL`, `IBM-03584L32-0402`.
  late final pulumi.Output<String?> mediumChangerType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Nested argument with Active Directory domain join information for Server Message Block (SMB) file shares. Only valid for `FILE_S3` and `FILE_FSX_SMB` gateway types. Must be set before creating `ActiveDirectory` authentication SMB file shares. More details below.
  late final pulumi.Output<GatewaySmbActiveDirectorySettings?> smbActiveDirectorySettings;
  /// Specifies whether the shares on this gateway appear when listing shares.
  late final pulumi.Output<bool?> smbFileShareVisibility;
  /// Guest password for Server Message Block (SMB) file shares. Only valid for `FILE_S3` and `FILE_FSX_SMB` gateway types. Must be set before creating `GuestAccess` authentication SMB file shares. This provider can only detect drift of the existence of a guest password, not its actual value from the gateway. This provider can however update the password with changing the argument.
  late final pulumi.Output<String?> smbGuestPassword;
  /// Specifies the type of security strategy. Valid values are: `ClientSpecified`, `MandatorySigning`, and `MandatoryEncryption`. See [Setting a Security Level for Your Gateway](https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-gateway-file.html#security-strategy) for more information.
  late final pulumi.Output<String> smbSecurityStrategy;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// &gt; **NOTE:** One of `activationKey` or `gatewayIpAddress` must be provided for resource creation (gateway activation). Neither is required for resource import. If using `gatewayIpAddress`, this provider must be able to make an HTTP (port 80) GET request to the specified IP address from where it is running.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Type of tape drive to use for tape gateway. This provider cannot detect drift of this argument. Valid values: `IBM-ULT3580-TD5`.
  late final pulumi.Output<String?> tapeDriveType;

  /// Creates a new [Gateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gateway]. {@macro pulumi_storagegateway_gateway_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gateway(
    String name, {
    GatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/gateway:Gateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
          additionalSecretOutputs: const ['smbGuestPassword'],
        ) {
    activationKey = registerOutput<String>('activationKey');
    arn = registerOutput<String>('arn');
    averageDownloadRateLimitInBitsPerSec = registerOutput<int?>('averageDownloadRateLimitInBitsPerSec');
    averageUploadRateLimitInBitsPerSec = registerOutput<int?>('averageUploadRateLimitInBitsPerSec');
    cloudwatchLogGroupArn = registerOutput<String?>('cloudwatchLogGroupArn');
    ec2InstanceId = registerOutput<String>('ec2InstanceId');
    endpointType = registerOutput<String>('endpointType');
    gatewayId = registerOutput<String>('gatewayId');
    gatewayIpAddress = registerOutput<String>('gatewayIpAddress');
    gatewayName = registerOutput<String>('gatewayName');
    gatewayNetworkInterfaces = registerOutput<List<GatewayGatewayNetworkInterface>>('gatewayNetworkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GatewayGatewayNetworkInterface>(guardedValue, (value) => GatewayGatewayNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    gatewayTimezone = registerOutput<String>('gatewayTimezone');
    gatewayType = registerOutput<String?>('gatewayType');
    gatewayVpcEndpoint = registerOutput<String?>('gatewayVpcEndpoint');
    hostEnvironment = registerOutput<String>('hostEnvironment');
    maintenanceStartTime = registerOutput<GatewayMaintenanceStartTime>('maintenanceStartTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GatewayMaintenanceStartTime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mediumChangerType = registerOutput<String?>('mediumChangerType');
    region = registerOutput<String>('region');
    smbActiveDirectorySettings = registerOutput<GatewaySmbActiveDirectorySettings?>('smbActiveDirectorySettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GatewaySmbActiveDirectorySettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    smbFileShareVisibility = registerOutput<bool?>('smbFileShareVisibility');
    smbGuestPassword = registerOutput<String?>('smbGuestPassword', isSecret: true);
    smbSecurityStrategy = registerOutput<String>('smbSecurityStrategy');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tapeDriveType = registerOutput<String?>('tapeDriveType');
  }

  /// Gets an existing [Gateway] resource's state with the given [name] and [id].
  static Gateway get(
    String name,
    pulumi.Input<String> id, {
    GatewayState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Gateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Gateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/gateway:Gateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activationKey = registerOutput<String>('activationKey');
    arn = registerOutput<String>('arn');
    averageDownloadRateLimitInBitsPerSec = registerOutput<int?>('averageDownloadRateLimitInBitsPerSec');
    averageUploadRateLimitInBitsPerSec = registerOutput<int?>('averageUploadRateLimitInBitsPerSec');
    cloudwatchLogGroupArn = registerOutput<String?>('cloudwatchLogGroupArn');
    ec2InstanceId = registerOutput<String>('ec2InstanceId');
    endpointType = registerOutput<String>('endpointType');
    gatewayId = registerOutput<String>('gatewayId');
    gatewayIpAddress = registerOutput<String>('gatewayIpAddress');
    gatewayName = registerOutput<String>('gatewayName');
    gatewayNetworkInterfaces = registerOutput<List<GatewayGatewayNetworkInterface>>('gatewayNetworkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GatewayGatewayNetworkInterface>(guardedValue, (value) => GatewayGatewayNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    gatewayTimezone = registerOutput<String>('gatewayTimezone');
    gatewayType = registerOutput<String?>('gatewayType');
    gatewayVpcEndpoint = registerOutput<String?>('gatewayVpcEndpoint');
    hostEnvironment = registerOutput<String>('hostEnvironment');
    maintenanceStartTime = registerOutput<GatewayMaintenanceStartTime>('maintenanceStartTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GatewayMaintenanceStartTime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mediumChangerType = registerOutput<String?>('mediumChangerType');
    region = registerOutput<String>('region');
    smbActiveDirectorySettings = registerOutput<GatewaySmbActiveDirectorySettings?>('smbActiveDirectorySettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GatewaySmbActiveDirectorySettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    smbFileShareVisibility = registerOutput<bool?>('smbFileShareVisibility');
    smbGuestPassword = registerOutput<String?>('smbGuestPassword', isSecret: true);
    smbSecurityStrategy = registerOutput<String>('smbSecurityStrategy');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tapeDriveType = registerOutput<String?>('tapeDriveType');
  }

  /// Creates a typed reference to an existing [Gateway] resource.
  Gateway.reference(String urn)
    : super(
        'aws:storagegateway/gateway:Gateway',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['smbGuestPassword'],
        isResourceReference: true,
      ) {
    activationKey = registerOutput<String>('activationKey');
    arn = registerOutput<String>('arn');
    averageDownloadRateLimitInBitsPerSec = registerOutput<int?>('averageDownloadRateLimitInBitsPerSec');
    averageUploadRateLimitInBitsPerSec = registerOutput<int?>('averageUploadRateLimitInBitsPerSec');
    cloudwatchLogGroupArn = registerOutput<String?>('cloudwatchLogGroupArn');
    ec2InstanceId = registerOutput<String>('ec2InstanceId');
    endpointType = registerOutput<String>('endpointType');
    gatewayId = registerOutput<String>('gatewayId');
    gatewayIpAddress = registerOutput<String>('gatewayIpAddress');
    gatewayName = registerOutput<String>('gatewayName');
    gatewayNetworkInterfaces = registerOutput<List<GatewayGatewayNetworkInterface>>('gatewayNetworkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GatewayGatewayNetworkInterface>(guardedValue, (value) => GatewayGatewayNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    gatewayTimezone = registerOutput<String>('gatewayTimezone');
    gatewayType = registerOutput<String?>('gatewayType');
    gatewayVpcEndpoint = registerOutput<String?>('gatewayVpcEndpoint');
    hostEnvironment = registerOutput<String>('hostEnvironment');
    maintenanceStartTime = registerOutput<GatewayMaintenanceStartTime>('maintenanceStartTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GatewayMaintenanceStartTime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mediumChangerType = registerOutput<String?>('mediumChangerType');
    region = registerOutput<String>('region');
    smbActiveDirectorySettings = registerOutput<GatewaySmbActiveDirectorySettings?>('smbActiveDirectorySettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GatewaySmbActiveDirectorySettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    smbFileShareVisibility = registerOutput<bool?>('smbFileShareVisibility');
    smbGuestPassword = registerOutput<String?>('smbGuestPassword', isSecret: true);
    smbSecurityStrategy = registerOutput<String>('smbSecurityStrategy');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tapeDriveType = registerOutput<String?>('tapeDriveType');
  }
}
