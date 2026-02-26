import 'package:pulumi/pulumi.dart';
import '../device_aws_location/device_aws_location.dart';
import '../device_location/device_location.dart';
import 'device_args.dart';

/// Manages a Network Manager Device.
///
/// Use this resource to create a device in a global network. If you specify both a site ID and a location, the location of the site is used for visualization in the Network Manager console.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.Device("example", {
/// globalNetworkId: exampleAwsNetworkmanagerGlobalNetwork.id,
/// siteId: exampleAwsNetworkmanagerSite.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.Device("example",
/// global_network_id=example_aws_networkmanager_global_network["id"],
/// site_id=example_aws_networkmanager_site["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkManager.Device("example", new()
/// {
/// GlobalNetworkId = exampleAwsNetworkmanagerGlobalNetwork.Id,
/// SiteId = exampleAwsNetworkmanagerSite.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkmanager.NewDevice(ctx, "example", &networkmanager.DeviceArgs{
/// GlobalNetworkId: pulumi.Any(exampleAwsNetworkmanagerGlobalNetwork.Id),
/// SiteId:          pulumi.Any(exampleAwsNetworkmanagerSite.Id),
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
/// import com.pulumi.aws.networkmanager.Device;
/// import com.pulumi.aws.networkmanager.DeviceArgs;
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
/// var example = new Device("example", DeviceArgs.builder()
/// .globalNetworkId(exampleAwsNetworkmanagerGlobalNetwork.id())
/// .siteId(exampleAwsNetworkmanagerSite.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmanager:Device
/// properties:
/// globalNetworkId: ${exampleAwsNetworkmanagerGlobalNetwork.id}
/// siteId: ${exampleAwsNetworkmanagerSite.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.networkmanager.Device`" pulumi-lang-dotnet="`aws.networkmanager.Device`" pulumi-lang-go="`networkmanager.Device`" pulumi-lang-python="`networkmanager.Device`" pulumi-lang-yaml="`aws.networkmanager.Device`" pulumi-lang-java="`aws.networkmanager.Device`">`aws.networkmanager.Device`</span> using the device ARN. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/device:Device example arn:aws:networkmanager::123456789012:device/global-network-0d47f6t230mz46dy4/device-07f6fd08867abc123
/// ```
class Device extends CustomResource {
  /// ARN of the device.
  late final Output<String> arn;

  /// AWS location of the device. Documented below.
  late final Output<DeviceAwsLocation?> awsLocation;

  /// Description of the device.
  late final Output<String?> description;

  /// ID of the global network.
  ///
  /// The following arguments are optional:
  late final Output<String> globalNetworkId;

  /// Location of the device. Documented below.
  late final Output<DeviceLocation?> location;

  /// Model of device.
  late final Output<String?> model;

  /// Serial number of the device.
  late final Output<String?> serialNumber;

  /// ID of the site.
  late final Output<String?> siteId;

  /// Key-value tags for the device. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Type of device.
  late final Output<String?> type;

  /// Vendor of the device.
  late final Output<String?> vendor;

  Device(
    String name, {
    DeviceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/device:Device',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsLocation = registerOutput<DeviceAwsLocation?>('awsLocation');
    this.description = registerOutput<String?>('description');
    this.globalNetworkId = registerOutput<String>('globalNetworkId');
    this.location = registerOutput<DeviceLocation?>('location');
    this.model = registerOutput<String?>('model');
    this.serialNumber = registerOutput<String?>('serialNumber');
    this.siteId = registerOutput<String?>('siteId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
    this.vendor = registerOutput<String?>('vendor');
  }
}
