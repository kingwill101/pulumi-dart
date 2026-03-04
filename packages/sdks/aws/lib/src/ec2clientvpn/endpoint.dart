import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_args.dart';
import 'endpoint_client_connect_options.dart';
import 'endpoint_client_login_banner_options.dart';
import 'endpoint_client_route_enforcement_options.dart';
import 'endpoint_connection_log_options.dart';
import 'endpoint_state.dart';

/// Provides an AWS Client VPN endpoint for OpenVPN clients. For more information on usage, please see the
/// [AWS Client VPN Administrator's Guide](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/what-is.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2clientvpn.Endpoint("example", {
///     description: "clientvpn-example",
///     serverCertificateArn: cert.arn,
///     clientCidrBlock: "10.0.0.0/16",
///     authenticationOptions: [{
///         type: "certificate-authentication",
///         rootCertificateChainArn: rootCert.arn,
///     }],
///     connectionLogOptions: {
///         enabled: true,
///         cloudwatchLogGroup: lg.name,
///         cloudwatchLogStream: ls.name,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2clientvpn.Endpoint("example",
///     description="clientvpn-example",
///     server_certificate_arn=cert["arn"],
///     client_cidr_block="10.0.0.0/16",
///     authentication_options=[{
///         "type": "certificate-authentication",
///         "root_certificate_chain_arn": root_cert["arn"],
///     }],
///     connection_log_options={
///         "enabled": True,
///         "cloudwatch_log_group": lg["name"],
///         "cloudwatch_log_stream": ls["name"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2ClientVpn.Endpoint("example", new()
///     {
///         Description = "clientvpn-example",
///         ServerCertificateArn = cert.Arn,
///         ClientCidrBlock = "10.0.0.0/16",
///         AuthenticationOptions = new[]
///         {
///             new Aws.Ec2ClientVpn.Inputs.EndpointAuthenticationOptionArgs
///             {
///                 Type = "certificate-authentication",
///                 RootCertificateChainArn = rootCert.Arn,
///             },
///         },
///         ConnectionLogOptions = new Aws.Ec2ClientVpn.Inputs.EndpointConnectionLogOptionsArgs
///         {
///             Enabled = true,
///             CloudwatchLogGroup = lg.Name,
///             CloudwatchLogStream = ls.Name,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2clientvpn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2clientvpn.NewEndpoint(ctx, "example", &ec2clientvpn.EndpointArgs{
/// 			Description:          pulumi.String("clientvpn-example"),
/// 			ServerCertificateArn: pulumi.Any(cert.Arn),
/// 			ClientCidrBlock:      pulumi.String("10.0.0.0/16"),
/// 			AuthenticationOptions: ec2clientvpn.EndpointAuthenticationOptionArray{
/// 				&ec2clientvpn.EndpointAuthenticationOptionArgs{
/// 					Type:                    pulumi.String("certificate-authentication"),
/// 					RootCertificateChainArn: pulumi.Any(rootCert.Arn),
/// 				},
/// 			},
/// 			ConnectionLogOptions: &ec2clientvpn.EndpointConnectionLogOptionsArgs{
/// 				Enabled:             pulumi.Bool(true),
/// 				CloudwatchLogGroup:  pulumi.Any(lg.Name),
/// 				CloudwatchLogStream: pulumi.Any(ls.Name),
/// 			},
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Endpoint("example", EndpointArgs.builder()
///             .description("clientvpn-example")
///             .serverCertificateArn(cert.arn())
///             .clientCidrBlock("10.0.0.0/16")
///             .authenticationOptions(EndpointAuthenticationOptionArgs.builder()
///                 .type("certificate-authentication")
///                 .rootCertificateChainArn(rootCert.arn())
///                 .build())
///             .connectionLogOptions(EndpointConnectionLogOptionsArgs.builder()
///                 .enabled(true)
///                 .cloudwatchLogGroup(lg.name())
///                 .cloudwatchLogStream(ls.name())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2clientvpn:Endpoint
///     properties:
///       description: clientvpn-example
///       serverCertificateArn: ${cert.arn}
///       clientCidrBlock: 10.0.0.0/16
///       authenticationOptions:
///         - type: certificate-authentication
///           rootCertificateChainArn: ${rootCert.arn}
///       connectionLogOptions:
///         enabled: true
///         cloudwatchLogGroup: ${lg.name}
///         cloudwatchLogStream: ${ls.name}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS Client VPN endpoints using the `id` value found via `aws ec2 describe-client-vpn-endpoints`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2clientvpn/endpoint:Endpoint example cvpn-endpoint-0ac3a1abbccddd666
/// ```
class Endpoint extends pulumi.CustomResource {
  /// The ARN of the Client VPN endpoint.
  late final pulumi.Output<String> arn;

  /// Information about the authentication method to be used to authenticate clients.
  late final pulumi.Output<List<Map<String, dynamic>>> authenticationOptions;

  /// The IPv4 address range, in CIDR notation, from which to assign client IP addresses. The address range cannot overlap with the local CIDR of the VPC in which the associated subnet is located, or the routes that you add manually. The address range cannot be changed after the Client VPN endpoint has been created. The CIDR block should be /22 or greater. When `traffic_ip_address_type` is set to `ipv6`, it must not be specified. Otherwise, it is required.
  late final pulumi.Output<String?> clientCidrBlock;

  /// The options for managing connection authorization for new client connections.
  late final pulumi.Output<EndpointClientConnectOptions> clientConnectOptions;

  /// Options for enabling a customizable text banner that will be displayed on AWS provided clients when a VPN session is established.
  late final pulumi.Output<EndpointClientLoginBannerOptions>
  clientLoginBannerOptions;

  /// Options for enforce administrator defined routes on devices connected through the VPN.
  late final pulumi.Output<EndpointClientRouteEnforcementOptions>
  clientRouteEnforcementOptions;

  /// Information about the client connection logging options.
  late final pulumi.Output<EndpointConnectionLogOptions> connectionLogOptions;

  /// A brief description of the Client VPN endpoint.
  late final pulumi.Output<String?> description;

  /// Indicates whether the client VPN session is disconnected after the maximum `session_timeout_hours` is reached. If `true`, users are prompted to reconnect client VPN. If `false`, client VPN attempts to reconnect automatically. The default value is `false`.
  late final pulumi.Output<bool> disconnectOnSessionTimeout;

  /// The DNS name to be used by clients when establishing their VPN session.
  late final pulumi.Output<String> dnsName;

  /// Information about the DNS servers to be used for DNS resolution. A Client VPN endpoint can have up to two DNS servers. If no DNS server is specified, the DNS address of the connecting device is used.
  late final pulumi.Output<List<String>?> dnsServers;

  /// IP address type for the Client VPN endpoint. Valid values are `ipv4`, `ipv6`, or `dual-stack`. Defaults to `ipv4`.
  late final pulumi.Output<String> endpointIpAddressType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The IDs of one or more security groups to apply to the target network. You must also specify the ID of the VPC that contains the security groups.
  late final pulumi.Output<List<String>> securityGroupIds;

  /// Specify whether to enable the self-service portal for the Client VPN endpoint. Values can be `enabled` or `disabled`. Default value is `disabled`.
  late final pulumi.Output<String?> selfServicePortal;

  /// The URL of the self-service portal.
  late final pulumi.Output<String> selfServicePortalUrl;

  /// The ARN of the ACM server certificate.
  late final pulumi.Output<String> serverCertificateArn;

  /// The maximum session duration is a trigger by which end-users are required to re-authenticate prior to establishing a VPN session. Default value is `24` - Valid values: `8 | 10 | 12 | 24`
  late final pulumi.Output<int?> sessionTimeoutHours;

  /// Indicates whether split-tunnel is enabled on VPN endpoint. Default value is `false`.
  late final pulumi.Output<bool?> splitTunnel;

  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// IP address type for traffic within the Client VPN tunnel. Valid values are `ipv4`, `ipv6`, or `dual-stack`. Defaults to `ipv4`. When it is set to `ipv6`, `client_cidr_block` must not be specified.
  late final pulumi.Output<String> trafficIpAddressType;

  /// The transport protocol to be used by the VPN session. Default value is `udp`.
  late final pulumi.Output<String?> transportProtocol;

  /// The ID of the VPC to associate with the Client VPN endpoint. If no security group IDs are specified in the request, the default security group for the VPC is applied.
  late final pulumi.Output<String> vpcId;

  /// The port number for the Client VPN endpoint. Valid values are `443` and `1194`. Default value is `443`.
  late final pulumi.Output<int?> vpnPort;

  /// Creates a new [Endpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Endpoint]. {@macro pulumi_ec2clientvpn_endpoint_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Endpoint(
    String name, {
    EndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2clientvpn/endpoint:Endpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    authenticationOptions = registerOutput<List<Map<String, dynamic>>>(
      'authenticationOptions',
    );
    clientCidrBlock = registerOutput<String?>('clientCidrBlock');
    clientConnectOptions = registerOutput<EndpointClientConnectOptions>(
      'clientConnectOptions',
    );
    clientLoginBannerOptions = registerOutput<EndpointClientLoginBannerOptions>(
      'clientLoginBannerOptions',
    );
    clientRouteEnforcementOptions =
        registerOutput<EndpointClientRouteEnforcementOptions>(
          'clientRouteEnforcementOptions',
        );
    connectionLogOptions = registerOutput<EndpointConnectionLogOptions>(
      'connectionLogOptions',
    );
    description = registerOutput<String?>('description');
    disconnectOnSessionTimeout = registerOutput<bool>(
      'disconnectOnSessionTimeout',
    );
    dnsName = registerOutput<String>('dnsName');
    dnsServers = registerOutput<List<String>?>('dnsServers');
    endpointIpAddressType = registerOutput<String>('endpointIpAddressType');
    region = registerOutput<String>('region');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    selfServicePortal = registerOutput<String?>('selfServicePortal');
    selfServicePortalUrl = registerOutput<String>('selfServicePortalUrl');
    serverCertificateArn = registerOutput<String>('serverCertificateArn');
    sessionTimeoutHours = registerOutput<int?>('sessionTimeoutHours');
    splitTunnel = registerOutput<bool?>('splitTunnel');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    trafficIpAddressType = registerOutput<String>('trafficIpAddressType');
    transportProtocol = registerOutput<String?>('transportProtocol');
    vpcId = registerOutput<String>('vpcId');
    vpnPort = registerOutput<int?>('vpnPort');
  }

  /// Gets an existing [Endpoint] resource's state with the given [name] and [id].
  static Endpoint get(
    String name,
    pulumi.Input<String> id, {
    EndpointState? state,
  }) {
    return Endpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Endpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2clientvpn/endpoint:Endpoint',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    authenticationOptions = registerOutput<List<Map<String, dynamic>>>(
      'authenticationOptions',
    );
    clientCidrBlock = registerOutput<String?>('clientCidrBlock');
    clientConnectOptions = registerOutput<EndpointClientConnectOptions>(
      'clientConnectOptions',
    );
    clientLoginBannerOptions = registerOutput<EndpointClientLoginBannerOptions>(
      'clientLoginBannerOptions',
    );
    clientRouteEnforcementOptions =
        registerOutput<EndpointClientRouteEnforcementOptions>(
          'clientRouteEnforcementOptions',
        );
    connectionLogOptions = registerOutput<EndpointConnectionLogOptions>(
      'connectionLogOptions',
    );
    description = registerOutput<String?>('description');
    disconnectOnSessionTimeout = registerOutput<bool>(
      'disconnectOnSessionTimeout',
    );
    dnsName = registerOutput<String>('dnsName');
    dnsServers = registerOutput<List<String>?>('dnsServers');
    endpointIpAddressType = registerOutput<String>('endpointIpAddressType');
    region = registerOutput<String>('region');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    selfServicePortal = registerOutput<String?>('selfServicePortal');
    selfServicePortalUrl = registerOutput<String>('selfServicePortalUrl');
    serverCertificateArn = registerOutput<String>('serverCertificateArn');
    sessionTimeoutHours = registerOutput<int?>('sessionTimeoutHours');
    splitTunnel = registerOutput<bool?>('splitTunnel');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    trafficIpAddressType = registerOutput<String>('trafficIpAddressType');
    transportProtocol = registerOutput<String?>('transportProtocol');
    vpcId = registerOutput<String>('vpcId');
    vpnPort = registerOutput<int?>('vpnPort');
  }
}
