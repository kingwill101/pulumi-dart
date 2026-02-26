import 'package:pulumi/pulumi.dart';
import '../endpoint_authentication_option/endpoint_authentication_option.dart';
import '../endpoint_client_connect_options/endpoint_client_connect_options.dart';
import '../endpoint_client_login_banner_options/endpoint_client_login_banner_options.dart';
import '../endpoint_client_route_enforcement_options/endpoint_client_route_enforcement_options.dart';
import '../endpoint_connection_log_options/endpoint_connection_log_options.dart';
import 'endpoint_args2.dart';

/// Provides an AWS Client VPN endpoint for OpenVPN clients. For more information on usage, please see the
/// [AWS Client VPN Administrator's Guide](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/what-is.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2clientvpn.Endpoint("example", {
/// description: "clientvpn-example",
/// serverCertificateArn: cert.arn,
/// clientCidrBlock: "10.0.0.0/16",
/// authenticationOptions: [{
/// type: "certificate-authentication",
/// rootCertificateChainArn: rootCert.arn,
/// }],
/// connectionLogOptions: {
/// enabled: true,
/// cloudwatchLogGroup: lg.name,
/// cloudwatchLogStream: ls.name,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2clientvpn.Endpoint("example",
/// description="clientvpn-example",
/// server_certificate_arn=cert["arn"],
/// client_cidr_block="10.0.0.0/16",
/// authentication_options=[{
/// "type": "certificate-authentication",
/// "root_certificate_chain_arn": root_cert["arn"],
/// }],
/// connection_log_options={
/// "enabled": True,
/// "cloudwatch_log_group": lg["name"],
/// "cloudwatch_log_stream": ls["name"],
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
/// var example = new Aws.Ec2ClientVpn.Endpoint("example", new()
/// {
/// Description = "clientvpn-example",
/// ServerCertificateArn = cert.Arn,
/// ClientCidrBlock = "10.0.0.0/16",
/// AuthenticationOptions = new[]
/// {
/// new Aws.Ec2ClientVpn.Inputs.EndpointAuthenticationOptionArgs
/// {
/// Type = "certificate-authentication",
/// RootCertificateChainArn = rootCert.Arn,
/// },
/// },
/// ConnectionLogOptions = new Aws.Ec2ClientVpn.Inputs.EndpointConnectionLogOptionsArgs
/// {
/// Enabled = true,
/// CloudwatchLogGroup = lg.Name,
/// CloudwatchLogStream = ls.Name,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2clientvpn"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2clientvpn.NewEndpoint(ctx, "example", &ec2clientvpn.EndpointArgs{
/// Description:          pulumi.String("clientvpn-example"),
/// ServerCertificateArn: pulumi.Any(cert.Arn),
/// ClientCidrBlock:      pulumi.String("10.0.0.0/16"),
/// AuthenticationOptions: ec2clientvpn.EndpointAuthenticationOptionArray{
/// &ec2clientvpn.EndpointAuthenticationOptionArgs{
/// Type:                    pulumi.String("certificate-authentication"),
/// RootCertificateChainArn: pulumi.Any(rootCert.Arn),
/// },
/// },
/// ConnectionLogOptions: &ec2clientvpn.EndpointConnectionLogOptionsArgs{
/// Enabled:             pulumi.Bool(true),
/// CloudwatchLogGroup:  pulumi.Any(lg.Name),
/// CloudwatchLogStream: pulumi.Any(ls.Name),
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
/// import com.pulumi.aws.ec2clientvpn.Endpoint;
/// import com.pulumi.aws.ec2clientvpn.EndpointArgs;
/// import com.pulumi.aws.ec2clientvpn.inputs.EndpointAuthenticationOptionArgs;
/// import com.pulumi.aws.ec2clientvpn.inputs.EndpointConnectionLogOptionsArgs;
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
/// var example = new Endpoint("example", EndpointArgs.builder()
/// .description("clientvpn-example")
/// .serverCertificateArn(cert.arn())
/// .clientCidrBlock("10.0.0.0/16")
/// .authenticationOptions(EndpointAuthenticationOptionArgs.builder()
/// .type("certificate-authentication")
/// .rootCertificateChainArn(rootCert.arn())
/// .build())
/// .connectionLogOptions(EndpointConnectionLogOptionsArgs.builder()
/// .enabled(true)
/// .cloudwatchLogGroup(lg.name())
/// .cloudwatchLogStream(ls.name())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2clientvpn:Endpoint
/// properties:
/// description: clientvpn-example
/// serverCertificateArn: ${cert.arn}
/// clientCidrBlock: 10.0.0.0/16
/// authenticationOptions:
/// - type: certificate-authentication
/// rootCertificateChainArn: ${rootCert.arn}
/// connectionLogOptions:
/// enabled: true
/// cloudwatchLogGroup: ${lg.name}
/// cloudwatchLogStream: ${ls.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AWS Client VPN endpoints using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> value found via `aws ec2 describe-client-vpn-endpoints`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2clientvpn/endpoint:Endpoint example cvpn-endpoint-0ac3a1abbccddd666
/// ```
class Endpoint2 extends CustomResource {
  /// The ARN of the Client VPN endpoint.
  late final Output<String> arn;

  /// Information about the authentication method to be used to authenticate clients.
  late final Output<List<EndpointAuthenticationOption>> authenticationOptions;

  /// The IPv4 address range, in CIDR notation, from which to assign client IP addresses. The address range cannot overlap with the local CIDR of the VPC in which the associated subnet is located, or the routes that you add manually. The address range cannot be changed after the Client VPN endpoint has been created. The CIDR block should be /22 or greater. When <span pulumi-lang-nodejs="`trafficIpAddressType`" pulumi-lang-dotnet="`TrafficIpAddressType`" pulumi-lang-go="`trafficIpAddressType`" pulumi-lang-python="`traffic_ip_address_type`" pulumi-lang-yaml="`trafficIpAddressType`" pulumi-lang-java="`trafficIpAddressType`">`traffic_ip_address_type`</span> is set to <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>, it must not be specified. Otherwise, it is required.
  late final Output<String?> clientCidrBlock;

  /// The options for managing connection authorization for new client connections.
  late final Output<EndpointClientConnectOptions> clientConnectOptions;

  /// Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established.
  late final Output<EndpointClientLoginBannerOptions> clientLoginBannerOptions;

  /// Options for enforce administrator defined routes on devices connected through the VPN.
  late final Output<EndpointClientRouteEnforcementOptions>
      clientRouteEnforcementOptions;

  /// Information about the client connection logging options.
  late final Output<EndpointConnectionLogOptions> connectionLogOptions;

  /// A brief description of the Client VPN endpoint.
  late final Output<String?> description;

  /// Indicates whether the client VPN session is disconnected after the maximum <span pulumi-lang-nodejs="`sessionTimeoutHours`" pulumi-lang-dotnet="`SessionTimeoutHours`" pulumi-lang-go="`sessionTimeoutHours`" pulumi-lang-python="`session_timeout_hours`" pulumi-lang-yaml="`sessionTimeoutHours`" pulumi-lang-java="`sessionTimeoutHours`">`session_timeout_hours`</span> is reached. If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, users are prompted to reconnect client VPN. If <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, client VPN attempts to reconnect automatically. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> disconnectOnSessionTimeout;

  /// The DNS name to be used by clients when establishing their VPN session.
  late final Output<String> dnsName;

  /// Information about the DNS servers to be used for DNS resolution. A Client VPN endpoint can have up to two DNS servers. If no DNS server is specified, the DNS address of the connecting device is used.
  late final Output<List<String>?> dnsServers;

  /// IP address type for the Client VPN endpoint. Valid values are <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>, <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>, or `dual-stack`. Defaults to <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>.
  late final Output<String> endpointIpAddressType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The IDs of one or more security groups to apply to the target network. You must also specify the ID of the VPC that contains the security groups.
  late final Output<List<String>> securityGroupIds;

  /// Specify whether to enable the self-service portal for the Client VPN endpoint. Values can be <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span> or <span pulumi-lang-nodejs="`disabled`" pulumi-lang-dotnet="`Disabled`" pulumi-lang-go="`disabled`" pulumi-lang-python="`disabled`" pulumi-lang-yaml="`disabled`" pulumi-lang-java="`disabled`">`disabled`</span>. Default value is <span pulumi-lang-nodejs="`disabled`" pulumi-lang-dotnet="`Disabled`" pulumi-lang-go="`disabled`" pulumi-lang-python="`disabled`" pulumi-lang-yaml="`disabled`" pulumi-lang-java="`disabled`">`disabled`</span>.
  late final Output<String?> selfServicePortal;

  /// The URL of the self-service portal.
  late final Output<String> selfServicePortalUrl;

  /// The ARN of the ACM server certificate.
  late final Output<String> serverCertificateArn;

  /// The maximum session duration is a trigger by which end-users are required to re-authenticate prior to establishing a VPN session. Default value is <span pulumi-lang-nodejs="`24`" pulumi-lang-dotnet="`24`" pulumi-lang-go="`24`" pulumi-lang-python="`24`" pulumi-lang-yaml="`24`" pulumi-lang-java="`24`">`24`</span> - Valid values: `8 | 10 | 12 | 24`
  late final Output<int?> sessionTimeoutHours;

  /// Indicates whether split-tunnel is enabled on VPN endpoint. Default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> splitTunnel;

  /// A mapping of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// IP address type for traffic within the Client VPN tunnel. Valid values are <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>, <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>, or `dual-stack`. Defaults to <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>. When it is set to <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>, <span pulumi-lang-nodejs="`clientCidrBlock`" pulumi-lang-dotnet="`ClientCidrBlock`" pulumi-lang-go="`clientCidrBlock`" pulumi-lang-python="`client_cidr_block`" pulumi-lang-yaml="`clientCidrBlock`" pulumi-lang-java="`clientCidrBlock`">`client_cidr_block`</span> must not be specified.
  late final Output<String> trafficIpAddressType;

  /// The transport protocol to be used by the VPN session. Default value is <span pulumi-lang-nodejs="`udp`" pulumi-lang-dotnet="`Udp`" pulumi-lang-go="`udp`" pulumi-lang-python="`udp`" pulumi-lang-yaml="`udp`" pulumi-lang-java="`udp`">`udp`</span>.
  late final Output<String?> transportProtocol;

  /// The ID of the VPC to associate with the Client VPN endpoint. If no security group IDs are specified in the request, the default security group for the VPC is applied.
  late final Output<String> vpcId;

  /// The port number for the Client VPN endpoint. Valid values are <span pulumi-lang-nodejs="`443`" pulumi-lang-dotnet="`443`" pulumi-lang-go="`443`" pulumi-lang-python="`443`" pulumi-lang-yaml="`443`" pulumi-lang-java="`443`">`443`</span> and <span pulumi-lang-nodejs="`1194`" pulumi-lang-dotnet="`1194`" pulumi-lang-go="`1194`" pulumi-lang-python="`1194`" pulumi-lang-yaml="`1194`" pulumi-lang-java="`1194`">`1194`</span>. Default value is <span pulumi-lang-nodejs="`443`" pulumi-lang-dotnet="`443`" pulumi-lang-go="`443`" pulumi-lang-python="`443`" pulumi-lang-yaml="`443`" pulumi-lang-java="`443`">`443`</span>.
  late final Output<int?> vpnPort;

  Endpoint2(
    String name, {
    EndpointArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2clientvpn/endpoint:Endpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.authenticationOptions =
        Output.createUnknown<List<EndpointAuthenticationOption>>();
    this.clientCidrBlock = Output.createUnknown<String?>();
    this.clientConnectOptions =
        Output.createUnknown<EndpointClientConnectOptions>();
    this.clientLoginBannerOptions =
        Output.createUnknown<EndpointClientLoginBannerOptions>();
    this.clientRouteEnforcementOptions =
        Output.createUnknown<EndpointClientRouteEnforcementOptions>();
    this.connectionLogOptions =
        Output.createUnknown<EndpointConnectionLogOptions>();
    this.description = Output.createUnknown<String?>();
    this.disconnectOnSessionTimeout = Output.createUnknown<bool>();
    this.dnsName = Output.createUnknown<String>();
    this.dnsServers = Output.createUnknown<List<String>?>();
    this.endpointIpAddressType = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.securityGroupIds = Output.createUnknown<List<String>>();
    this.selfServicePortal = Output.createUnknown<String?>();
    this.selfServicePortalUrl = Output.createUnknown<String>();
    this.serverCertificateArn = Output.createUnknown<String>();
    this.sessionTimeoutHours = Output.createUnknown<int?>();
    this.splitTunnel = Output.createUnknown<bool?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.trafficIpAddressType = Output.createUnknown<String>();
    this.transportProtocol = Output.createUnknown<String?>();
    this.vpcId = Output.createUnknown<String>();
    this.vpnPort = Output.createUnknown<int?>();
  }
}
