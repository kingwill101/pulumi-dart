import 'package:pulumi/pulumi.dart';
import 'transit_gateway_connect_peer_association_args.dart';

/// Manages a Network Manager transit gateway Connect peer association. Associates a transit gateway Connect peer with a device, and optionally, with a link. If you specify a link, it must be associated with the specified device.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.TransitGatewayConnectPeerAssociation("example", {
/// globalNetworkId: exampleAwsNetworkmanagerGlobalNetwork.id,
/// deviceId: exampleAwsNetworkmanagerDevice.id,
/// transitGatewayConnectPeerArn: exampleAwsEc2TransitGatewayConnectPeer.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.TransitGatewayConnectPeerAssociation("example",
/// global_network_id=example_aws_networkmanager_global_network["id"],
/// device_id=example_aws_networkmanager_device["id"],
/// transit_gateway_connect_peer_arn=example_aws_ec2_transit_gateway_connect_peer["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkManager.TransitGatewayConnectPeerAssociation("example", new()
/// {
/// GlobalNetworkId = exampleAwsNetworkmanagerGlobalNetwork.Id,
/// DeviceId = exampleAwsNetworkmanagerDevice.Id,
/// TransitGatewayConnectPeerArn = exampleAwsEc2TransitGatewayConnectPeer.Arn,
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
/// _, err := networkmanager.NewTransitGatewayConnectPeerAssociation(ctx, "example", &networkmanager.TransitGatewayConnectPeerAssociationArgs{
/// GlobalNetworkId:              pulumi.Any(exampleAwsNetworkmanagerGlobalNetwork.Id),
/// DeviceId:                     pulumi.Any(exampleAwsNetworkmanagerDevice.Id),
/// TransitGatewayConnectPeerArn: pulumi.Any(exampleAwsEc2TransitGatewayConnectPeer.Arn),
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
/// import com.pulumi.aws.networkmanager.TransitGatewayConnectPeerAssociation;
/// import com.pulumi.aws.networkmanager.TransitGatewayConnectPeerAssociationArgs;
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
/// var example = new TransitGatewayConnectPeerAssociation("example", TransitGatewayConnectPeerAssociationArgs.builder()
/// .globalNetworkId(exampleAwsNetworkmanagerGlobalNetwork.id())
/// .deviceId(exampleAwsNetworkmanagerDevice.id())
/// .transitGatewayConnectPeerArn(exampleAwsEc2TransitGatewayConnectPeer.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmanager:TransitGatewayConnectPeerAssociation
/// properties:
/// globalNetworkId: ${exampleAwsNetworkmanagerGlobalNetwork.id}
/// deviceId: ${exampleAwsNetworkmanagerDevice.id}
/// transitGatewayConnectPeerArn: ${exampleAwsEc2TransitGatewayConnectPeer.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.networkmanager.TransitGatewayConnectPeerAssociation`" pulumi-lang-dotnet="`aws.networkmanager.TransitGatewayConnectPeerAssociation`" pulumi-lang-go="`networkmanager.TransitGatewayConnectPeerAssociation`" pulumi-lang-python="`networkmanager.TransitGatewayConnectPeerAssociation`" pulumi-lang-yaml="`aws.networkmanager.TransitGatewayConnectPeerAssociation`" pulumi-lang-java="`aws.networkmanager.TransitGatewayConnectPeerAssociation`">`aws.networkmanager.TransitGatewayConnectPeerAssociation`</span> using the global network ID and Connect peer ARN. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/transitGatewayConnectPeerAssociation:TransitGatewayConnectPeerAssociation example global-network-0d47f6t230mz46dy4,arn:aws:ec2:us-west-2:123456789012:transit-gateway-connect-peer/tgw-connect-peer-12345678
/// ```
class TransitGatewayConnectPeerAssociation extends CustomResource {
  /// ID of the device.
  late final Output<String> deviceId;

  /// ID of the global network.
  late final Output<String> globalNetworkId;

  /// ID of the link.
  late final Output<String?> linkId;

  /// ARN of the Connect peer.
  ///
  /// The following arguments are optional:
  late final Output<String> transitGatewayConnectPeerArn;

  TransitGatewayConnectPeerAssociation(
    String name, {
    TransitGatewayConnectPeerAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/transitGatewayConnectPeerAssociation:TransitGatewayConnectPeerAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.deviceId = Output.createUnknown<String>();
    this.globalNetworkId = Output.createUnknown<String>();
    this.linkId = Output.createUnknown<String?>();
    this.transitGatewayConnectPeerArn = Output.createUnknown<String>();
  }
}
