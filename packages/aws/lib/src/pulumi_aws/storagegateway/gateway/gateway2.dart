import 'package:pulumi/pulumi.dart';
import '../gateway_gateway_network_interface/gateway_gateway_network_interface.dart';
import '../gateway_maintenance_start_time/gateway_maintenance_start_time.dart';
import '../gateway_smb_active_directory_settings/gateway_smb_active_directory_settings.dart';
import 'gateway_args2.dart';

/// Manages an AWS Storage Gateway file, tape, or volume gateway in the provider region.
///
/// > **NOTE:** The Storage Gateway API requires the gateway to be connected to properly return information after activation. If you are receiving `The specified gateway is not connected` errors during resource creation (gateway activation), ensure your gateway instance meets the [Storage Gateway requirements](https://docs.aws.amazon.com/storagegateway/latest/userguide/Requirements.html).
///
/// ## Example Usage
///
/// ### Local Cache
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testVolumeAttachment = new aws.ec2.VolumeAttachment("test", {
/// deviceName: "/dev/xvdb",
/// volumeId: testAwsEbsVolume.id,
/// instanceId: testAwsInstance.id,
/// });
/// const test = aws.storagegateway.getLocalDisk({
/// diskNode: testAwsVolumeAttachment.deviceName,
/// gatewayArn: testAwsStoragegatewayGateway.arn,
/// });
/// const testCache = new aws.storagegateway.Cache("test", {
/// diskId: test.then(test => test.diskId),
/// gatewayArn: testAwsStoragegatewayGateway.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_volume_attachment = aws.ec2.VolumeAttachment("test",
/// device_name="/dev/xvdb",
/// volume_id=test_aws_ebs_volume["id"],
/// instance_id=test_aws_instance["id"])
/// test = aws.storagegateway.get_local_disk(disk_node=test_aws_volume_attachment["deviceName"],
/// gateway_arn=test_aws_storagegateway_gateway["arn"])
/// test_cache = aws.storagegateway.Cache("test",
/// disk_id=test.disk_id,
/// gateway_arn=test_aws_storagegateway_gateway["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testVolumeAttachment = new Aws.Ec2.VolumeAttachment("test", new()
/// {
/// DeviceName = "/dev/xvdb",
/// VolumeId = testAwsEbsVolume.Id,
/// InstanceId = testAwsInstance.Id,
/// });
///
/// var test = Aws.StorageGateway.GetLocalDisk.Invoke(new()
/// {
/// DiskNode = testAwsVolumeAttachment.DeviceName,
/// GatewayArn = testAwsStoragegatewayGateway.Arn,
/// });
///
/// var testCache = new Aws.StorageGateway.Cache("test", new()
/// {
/// DiskId = test.Apply(getLocalDiskResult => getLocalDiskResult.DiskId),
/// GatewayArn = testAwsStoragegatewayGateway.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/storagegateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewVolumeAttachment(ctx, "test", &ec2.VolumeAttachmentArgs{
/// DeviceName: pulumi.String("/dev/xvdb"),
/// VolumeId:   pulumi.Any(testAwsEbsVolume.Id),
/// InstanceId: pulumi.Any(testAwsInstance.Id),
/// })
/// if err != nil {
/// return err
/// }
/// test, err := storagegateway.GetLocalDisk(ctx, &storagegateway.GetLocalDiskArgs{
/// DiskNode:   pulumi.StringRef(testAwsVolumeAttachment.DeviceName),
/// GatewayArn: testAwsStoragegatewayGateway.Arn,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = storagegateway.NewCache(ctx, "test", &storagegateway.CacheArgs{
/// DiskId:     pulumi.String(test.DiskId),
/// GatewayArn: pulumi.Any(testAwsStoragegatewayGateway.Arn),
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
/// import com.pulumi.aws.ec2.VolumeAttachment;
/// import com.pulumi.aws.ec2.VolumeAttachmentArgs;
/// import com.pulumi.aws.storagegateway.StoragegatewayFunctions;
/// import com.pulumi.aws.storagegateway.inputs.GetLocalDiskArgs;
/// import com.pulumi.aws.storagegateway.Cache;
/// import com.pulumi.aws.storagegateway.CacheArgs;
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
/// var testVolumeAttachment = new VolumeAttachment("testVolumeAttachment", VolumeAttachmentArgs.builder()
/// .deviceName("/dev/xvdb")
/// .volumeId(testAwsEbsVolume.id())
/// .instanceId(testAwsInstance.id())
/// .build());
///
/// final var test = StoragegatewayFunctions.getLocalDisk(GetLocalDiskArgs.builder()
/// .diskNode(testAwsVolumeAttachment.deviceName())
/// .gatewayArn(testAwsStoragegatewayGateway.arn())
/// .build());
///
/// var testCache = new Cache("testCache", CacheArgs.builder()
/// .diskId(test.diskId())
/// .gatewayArn(testAwsStoragegatewayGateway.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testVolumeAttachment:
/// type: aws:ec2:VolumeAttachment
/// name: test
/// properties:
/// deviceName: /dev/xvdb
/// volumeId: ${testAwsEbsVolume.id}
/// instanceId: ${testAwsInstance.id}
/// testCache:
/// type: aws:storagegateway:Cache
/// name: test
/// properties:
/// diskId: ${test.diskId}
/// gatewayArn: ${testAwsStoragegatewayGateway.arn}
/// variables:
/// test:
/// fn::invoke:
/// function: aws:storagegateway:getLocalDisk
/// arguments:
/// diskNode: ${testAwsVolumeAttachment.deviceName}
/// gatewayArn: ${testAwsStoragegatewayGateway.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### FSx File Gateway
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.Gateway("example", {
/// gatewayIpAddress: "1.2.3.4",
/// gatewayName: "example",
/// gatewayTimezone: "GMT",
/// gatewayType: "FILE_FSX_SMB",
/// smbActiveDirectorySettings: {
/// domainName: "corp.example.com",
/// password: "avoid-plaintext-passwords",
/// username: "Admin",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.Gateway("example",
/// gateway_ip_address="1.2.3.4",
/// gateway_name="example",
/// gateway_timezone="GMT",
/// gateway_type="FILE_FSX_SMB",
/// smb_active_directory_settings={
/// "domain_name": "corp.example.com",
/// "password": "avoid-plaintext-passwords",
/// "username": "Admin",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.StorageGateway.Gateway("example", new()
/// {
/// GatewayIpAddress = "1.2.3.4",
/// GatewayName = "example",
/// GatewayTimezone = "GMT",
/// GatewayType = "FILE_FSX_SMB",
/// SmbActiveDirectorySettings = new Aws.StorageGateway.Inputs.GatewaySmbActiveDirectorySettingsArgs
/// {
/// DomainName = "corp.example.com",
/// Password = "avoid-plaintext-passwords",
/// Username = "Admin",
/// },
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
/// _, err := storagegateway.NewGateway(ctx, "example", &storagegateway.GatewayArgs{
/// GatewayIpAddress: pulumi.String("1.2.3.4"),
/// GatewayName:      pulumi.String("example"),
/// GatewayTimezone:  pulumi.String("GMT"),
/// GatewayType:      pulumi.String("FILE_FSX_SMB"),
/// SmbActiveDirectorySettings: &storagegateway.GatewaySmbActiveDirectorySettingsArgs{
/// DomainName: pulumi.String("corp.example.com"),
/// Password:   pulumi.String("avoid-plaintext-passwords"),
/// Username:   pulumi.String("Admin"),
/// },
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
/// import com.pulumi.aws.storagegateway.Gateway;
/// import com.pulumi.aws.storagegateway.GatewayArgs;
/// import com.pulumi.aws.storagegateway.inputs.GatewaySmbActiveDirectorySettingsArgs;
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
/// var example = new Gateway("example", GatewayArgs.builder()
/// .gatewayIpAddress("1.2.3.4")
/// .gatewayName("example")
/// .gatewayTimezone("GMT")
/// .gatewayType("FILE_FSX_SMB")
/// .smbActiveDirectorySettings(GatewaySmbActiveDirectorySettingsArgs.builder()
/// .domainName("corp.example.com")
/// .password("avoid-plaintext-passwords")
/// .username("Admin")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:storagegateway:Gateway
/// properties:
/// gatewayIpAddress: 1.2.3.4
/// gatewayName: example
/// gatewayTimezone: GMT
/// gatewayType: FILE_FSX_SMB
/// smbActiveDirectorySettings:
/// domainName: corp.example.com
/// password: avoid-plaintext-passwords
/// username: Admin
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### S3 File Gateway
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.Gateway("example", {
/// gatewayIpAddress: "1.2.3.4",
/// gatewayName: "example",
/// gatewayTimezone: "GMT",
/// gatewayType: "FILE_S3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.Gateway("example",
/// gateway_ip_address="1.2.3.4",
/// gateway_name="example",
/// gateway_timezone="GMT",
/// gateway_type="FILE_S3")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.StorageGateway.Gateway("example", new()
/// {
/// GatewayIpAddress = "1.2.3.4",
/// GatewayName = "example",
/// GatewayTimezone = "GMT",
/// GatewayType = "FILE_S3",
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
/// _, err := storagegateway.NewGateway(ctx, "example", &storagegateway.GatewayArgs{
/// GatewayIpAddress: pulumi.String("1.2.3.4"),
/// GatewayName:      pulumi.String("example"),
/// GatewayTimezone:  pulumi.String("GMT"),
/// GatewayType:      pulumi.String("FILE_S3"),
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
/// import com.pulumi.aws.storagegateway.Gateway;
/// import com.pulumi.aws.storagegateway.GatewayArgs;
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
/// var example = new Gateway("example", GatewayArgs.builder()
/// .gatewayIpAddress("1.2.3.4")
/// .gatewayName("example")
/// .gatewayTimezone("GMT")
/// .gatewayType("FILE_S3")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:storagegateway:Gateway
/// properties:
/// gatewayIpAddress: 1.2.3.4
/// gatewayName: example
/// gatewayTimezone: GMT
/// gatewayType: FILE_S3
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Tape Gateway
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.Gateway("example", {
/// gatewayIpAddress: "1.2.3.4",
/// gatewayName: "example",
/// gatewayTimezone: "GMT",
/// gatewayType: "VTL",
/// mediumChangerType: "AWS-Gateway-VTL",
/// tapeDriveType: "IBM-ULT3580-TD5",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.Gateway("example",
/// gateway_ip_address="1.2.3.4",
/// gateway_name="example",
/// gateway_timezone="GMT",
/// gateway_type="VTL",
/// medium_changer_type="AWS-Gateway-VTL",
/// tape_drive_type="IBM-ULT3580-TD5")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.StorageGateway.Gateway("example", new()
/// {
/// GatewayIpAddress = "1.2.3.4",
/// GatewayName = "example",
/// GatewayTimezone = "GMT",
/// GatewayType = "VTL",
/// MediumChangerType = "AWS-Gateway-VTL",
/// TapeDriveType = "IBM-ULT3580-TD5",
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
/// _, err := storagegateway.NewGateway(ctx, "example", &storagegateway.GatewayArgs{
/// GatewayIpAddress:  pulumi.String("1.2.3.4"),
/// GatewayName:       pulumi.String("example"),
/// GatewayTimezone:   pulumi.String("GMT"),
/// GatewayType:       pulumi.String("VTL"),
/// MediumChangerType: pulumi.String("AWS-Gateway-VTL"),
/// TapeDriveType:     pulumi.String("IBM-ULT3580-TD5"),
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
/// import com.pulumi.aws.storagegateway.Gateway;
/// import com.pulumi.aws.storagegateway.GatewayArgs;
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
/// var example = new Gateway("example", GatewayArgs.builder()
/// .gatewayIpAddress("1.2.3.4")
/// .gatewayName("example")
/// .gatewayTimezone("GMT")
/// .gatewayType("VTL")
/// .mediumChangerType("AWS-Gateway-VTL")
/// .tapeDriveType("IBM-ULT3580-TD5")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:storagegateway:Gateway
/// properties:
/// gatewayIpAddress: 1.2.3.4
/// gatewayName: example
/// gatewayTimezone: GMT
/// gatewayType: VTL
/// mediumChangerType: AWS-Gateway-VTL
/// tapeDriveType: IBM-ULT3580-TD5
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Volume Gateway (Cached)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.Gateway("example", {
/// gatewayIpAddress: "1.2.3.4",
/// gatewayName: "example",
/// gatewayTimezone: "GMT",
/// gatewayType: "CACHED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.Gateway("example",
/// gateway_ip_address="1.2.3.4",
/// gateway_name="example",
/// gateway_timezone="GMT",
/// gateway_type="CACHED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.StorageGateway.Gateway("example", new()
/// {
/// GatewayIpAddress = "1.2.3.4",
/// GatewayName = "example",
/// GatewayTimezone = "GMT",
/// GatewayType = "CACHED",
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
/// _, err := storagegateway.NewGateway(ctx, "example", &storagegateway.GatewayArgs{
/// GatewayIpAddress: pulumi.String("1.2.3.4"),
/// GatewayName:      pulumi.String("example"),
/// GatewayTimezone:  pulumi.String("GMT"),
/// GatewayType:      pulumi.String("CACHED"),
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
/// import com.pulumi.aws.storagegateway.Gateway;
/// import com.pulumi.aws.storagegateway.GatewayArgs;
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
/// var example = new Gateway("example", GatewayArgs.builder()
/// .gatewayIpAddress("1.2.3.4")
/// .gatewayName("example")
/// .gatewayTimezone("GMT")
/// .gatewayType("CACHED")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:storagegateway:Gateway
/// properties:
/// gatewayIpAddress: 1.2.3.4
/// gatewayName: example
/// gatewayTimezone: GMT
/// gatewayType: CACHED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Volume Gateway (Stored)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.Gateway("example", {
/// gatewayIpAddress: "1.2.3.4",
/// gatewayName: "example",
/// gatewayTimezone: "GMT",
/// gatewayType: "STORED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.Gateway("example",
/// gateway_ip_address="1.2.3.4",
/// gateway_name="example",
/// gateway_timezone="GMT",
/// gateway_type="STORED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.StorageGateway.Gateway("example", new()
/// {
/// GatewayIpAddress = "1.2.3.4",
/// GatewayName = "example",
/// GatewayTimezone = "GMT",
/// GatewayType = "STORED",
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
/// _, err := storagegateway.NewGateway(ctx, "example", &storagegateway.GatewayArgs{
/// GatewayIpAddress: pulumi.String("1.2.3.4"),
/// GatewayName:      pulumi.String("example"),
/// GatewayTimezone:  pulumi.String("GMT"),
/// GatewayType:      pulumi.String("STORED"),
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
/// import com.pulumi.aws.storagegateway.Gateway;
/// import com.pulumi.aws.storagegateway.GatewayArgs;
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
/// var example = new Gateway("example", GatewayArgs.builder()
/// .gatewayIpAddress("1.2.3.4")
/// .gatewayName("example")
/// .gatewayTimezone("GMT")
/// .gatewayType("STORED")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:storagegateway:Gateway
/// properties:
/// gatewayIpAddress: 1.2.3.4
/// gatewayName: example
/// gatewayTimezone: GMT
/// gatewayType: STORED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.storagegateway.Gateway`" pulumi-lang-dotnet="`aws.storagegateway.Gateway`" pulumi-lang-go="`storagegateway.Gateway`" pulumi-lang-python="`storagegateway.Gateway`" pulumi-lang-yaml="`aws.storagegateway.Gateway`" pulumi-lang-java="`aws.storagegateway.Gateway`">`aws.storagegateway.Gateway`</span> using the gateway Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/gateway:Gateway example arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678
/// ```
///
/// Certain resource arguments, like <span pulumi-lang-nodejs="`gatewayIpAddress`" pulumi-lang-dotnet="`GatewayIpAddress`" pulumi-lang-go="`gatewayIpAddress`" pulumi-lang-python="`gateway_ip_address`" pulumi-lang-yaml="`gatewayIpAddress`" pulumi-lang-java="`gatewayIpAddress`">`gateway_ip_address`</span> do not have a Storage Gateway API method for reading the information after creation, either omit the argument from the Pulumi program or use <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> to hide the difference. For example:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.Gateway("example", {gatewayIpAddress: sgw.privateIp});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.Gateway("example", gateway_ip_address=sgw["privateIp"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.StorageGateway.Gateway("example", new()
/// {
/// GatewayIpAddress = sgw.PrivateIp,
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
/// _, err := storagegateway.NewGateway(ctx, "example", &storagegateway.GatewayArgs{
/// GatewayIpAddress: pulumi.Any(sgw.PrivateIp),
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
/// import com.pulumi.aws.storagegateway.Gateway;
/// import com.pulumi.aws.storagegateway.GatewayArgs;
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
/// var example = new Gateway("example", GatewayArgs.builder()
/// .gatewayIpAddress(sgw.privateIp())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:storagegateway:Gateway
/// properties:
/// gatewayIpAddress: ${sgw.privateIp}
/// ```
/// <!--End PulumiCodeChooser -->
class Gateway2 extends CustomResource {
  /// Gateway activation key during resource creation. Conflicts with <span pulumi-lang-nodejs="`gatewayIpAddress`" pulumi-lang-dotnet="`GatewayIpAddress`" pulumi-lang-go="`gatewayIpAddress`" pulumi-lang-python="`gateway_ip_address`" pulumi-lang-yaml="`gatewayIpAddress`" pulumi-lang-java="`gatewayIpAddress`">`gateway_ip_address`</span>. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
  late final Output<String> activationKey;

  /// Amazon Resource Name (ARN) of the gateway.
  late final Output<String> arn;

  /// The average download bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  late final Output<int?> averageDownloadRateLimitInBitsPerSec;

  /// The average upload bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  late final Output<int?> averageUploadRateLimitInBitsPerSec;

  /// The Amazon Resource Name (ARN) of the Amazon CloudWatch log group to use to monitor and log events in the gateway.
  late final Output<String?> cloudwatchLogGroupArn;

  /// The ID of the Amazon EC2 instance that was used to launch the gateway.
  late final Output<String> ec2InstanceId;

  /// The type of endpoint for your gateway.
  late final Output<String> endpointType;

  /// Identifier of the gateway.
  late final Output<String> gatewayId;

  /// Gateway IP address to retrieve activation key during resource creation. Conflicts with <span pulumi-lang-nodejs="`activationKey`" pulumi-lang-dotnet="`ActivationKey`" pulumi-lang-go="`activationKey`" pulumi-lang-python="`activation_key`" pulumi-lang-yaml="`activationKey`" pulumi-lang-java="`activationKey`">`activation_key`</span>. Gateway must be accessible on port 80 from where this provider is running. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
  late final Output<String> gatewayIpAddress;

  /// Name of the gateway.
  late final Output<String> gatewayName;

  /// An array that contains descriptions of the gateway network interfaces. See Gateway Network Interface.
  late final Output<List<GatewayGatewayNetworkInterface>>
      gatewayNetworkInterfaces;

  /// Time zone for the gateway. The time zone is of the format "GMT", "GMT-hr:mm", or "GMT+hr:mm". For example, `GMT-4:00` indicates the time is 4 hours behind GMT. The time zone is used, for example, for scheduling snapshots and your gateway's maintenance schedule.
  late final Output<String> gatewayTimezone;

  /// Type of the gateway. The default value is `STORED`. Valid values: `CACHED`, `FILE_FSX_SMB`, `FILE_S3`, `STORED`, `VTL`.
  late final Output<String?> gatewayType;

  /// VPC endpoint address to be used when activating your gateway. This should be used when your instance is in a private subnet. Requires HTTP access from client computer running this provider. More info on what ports are required by your VPC Endpoint Security group in [Activating a Gateway in a Virtual Private Cloud](https://docs.aws.amazon.com/storagegateway/latest/userguide/gateway-private-link.html).
  late final Output<String?> gatewayVpcEndpoint;

  /// The type of hypervisor environment used by the host.
  late final Output<String> hostEnvironment;

  /// The gateway's weekly maintenance start time information, including day and time of the week. The maintenance time is the time in your gateway's time zone. More details below.
  late final Output<GatewayMaintenanceStartTime> maintenanceStartTime;

  /// Type of medium changer to use for tape gateway. This provider cannot detect drift of this argument. Valid values: `STK-L700`, `AWS-Gateway-VTL`, `IBM-03584L32-0402`.
  late final Output<String?> mediumChangerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Nested argument with Active Directory domain join information for Server Message Block (SMB) file shares. Only valid for `FILE_S3` and `FILE_FSX_SMB` gateway types. Must be set before creating `ActiveDirectory` authentication SMB file shares. More details below.
  late final Output<GatewaySmbActiveDirectorySettings?>
      smbActiveDirectorySettings;

  /// Specifies whether the shares on this gateway appear when listing shares.
  late final Output<bool?> smbFileShareVisibility;

  /// Guest password for Server Message Block (SMB) file shares. Only valid for `FILE_S3` and `FILE_FSX_SMB` gateway types. Must be set before creating `GuestAccess` authentication SMB file shares. This provider can only detect drift of the existence of a guest password, not its actual value from the gateway. This provider can however update the password with changing the argument.
  late final Output<String?> smbGuestPassword;

  /// Specifies the type of security strategy. Valid values are: `ClientSpecified`, `MandatorySigning`, and `MandatoryEncryption`. See [Setting a Security Level for Your Gateway](https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-gateway-file.html#security-strategy) for more information.
  late final Output<String> smbSecurityStrategy;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** One of <span pulumi-lang-nodejs="`activationKey`" pulumi-lang-dotnet="`ActivationKey`" pulumi-lang-go="`activationKey`" pulumi-lang-python="`activation_key`" pulumi-lang-yaml="`activationKey`" pulumi-lang-java="`activationKey`">`activation_key`</span> or <span pulumi-lang-nodejs="`gatewayIpAddress`" pulumi-lang-dotnet="`GatewayIpAddress`" pulumi-lang-go="`gatewayIpAddress`" pulumi-lang-python="`gateway_ip_address`" pulumi-lang-yaml="`gatewayIpAddress`" pulumi-lang-java="`gatewayIpAddress`">`gateway_ip_address`</span> must be provided for resource creation (gateway activation). Neither is required for resource import. If using <span pulumi-lang-nodejs="`gatewayIpAddress`" pulumi-lang-dotnet="`GatewayIpAddress`" pulumi-lang-go="`gatewayIpAddress`" pulumi-lang-python="`gateway_ip_address`" pulumi-lang-yaml="`gatewayIpAddress`" pulumi-lang-java="`gatewayIpAddress`">`gateway_ip_address`</span>, this provider must be able to make an HTTP (port 80) GET request to the specified IP address from where it is running.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Type of tape drive to use for tape gateway. This provider cannot detect drift of this argument. Valid values: `IBM-ULT3580-TD5`.
  late final Output<String?> tapeDriveType;

  Gateway2(
    String name, {
    GatewayArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/gateway:Gateway',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activationKey = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.averageDownloadRateLimitInBitsPerSec = Output.createUnknown<int?>();
    this.averageUploadRateLimitInBitsPerSec = Output.createUnknown<int?>();
    this.cloudwatchLogGroupArn = Output.createUnknown<String?>();
    this.ec2InstanceId = Output.createUnknown<String>();
    this.endpointType = Output.createUnknown<String>();
    this.gatewayId = Output.createUnknown<String>();
    this.gatewayIpAddress = Output.createUnknown<String>();
    this.gatewayName = Output.createUnknown<String>();
    this.gatewayNetworkInterfaces =
        Output.createUnknown<List<GatewayGatewayNetworkInterface>>();
    this.gatewayTimezone = Output.createUnknown<String>();
    this.gatewayType = Output.createUnknown<String?>();
    this.gatewayVpcEndpoint = Output.createUnknown<String?>();
    this.hostEnvironment = Output.createUnknown<String>();
    this.maintenanceStartTime =
        Output.createUnknown<GatewayMaintenanceStartTime>();
    this.mediumChangerType = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.smbActiveDirectorySettings =
        Output.createUnknown<GatewaySmbActiveDirectorySettings?>();
    this.smbFileShareVisibility = Output.createUnknown<bool?>();
    this.smbGuestPassword = Output.createUnknown<String?>();
    this.smbSecurityStrategy = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.tapeDriveType = Output.createUnknown<String?>();
  }
}
