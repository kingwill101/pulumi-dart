import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_service_args.dart';
import 'vpc_endpoint_service_state.dart';

/// Provides a Private Link Vpc Endpoint Service resource.
///
///
///
/// For information about Private Link Vpc Endpoint Service and how to use it, see [What is Vpc Endpoint Service](https://www.alibabacloud.com/help/en/privatelink/latest/api-privatelink-2020-04-15-createvpcendpointservice).
///
/// > **NOTE:** Available since v1.109.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const example = new alicloud.privatelink.VpcEndpointService("example", {
///     serviceDescription: name,
///     connectBandwidth: 103,
///     autoAcceptConnection: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// example = alicloud.privatelink.VpcEndpointService("example",
///     service_description=name,
///     connect_bandwidth=103,
///     auto_accept_connection=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example";
///     var example = new AliCloud.PrivateLink.VpcEndpointService("example", new()
///     {
///         ServiceDescription = name,
///         ConnectBandwidth = 103,
///         AutoAcceptConnection = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/privatelink"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := privatelink.NewVpcEndpointService(ctx, "example", &privatelink.VpcEndpointServiceArgs{
/// 			ServiceDescription:   pulumi.String(name),
/// 			ConnectBandwidth:     pulumi.Int(103),
/// 			AutoAcceptConnection: pulumi.Bool(false),
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
/// import com.pulumi.alicloud.privatelink.VpcEndpointService;
/// import com.pulumi.alicloud.privatelink.VpcEndpointServiceArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf_example");
///         var example = new VpcEndpointService("example", VpcEndpointServiceArgs.builder()
///             .serviceDescription(name)
///             .connectBandwidth(103)
///             .autoAcceptConnection(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   example:
///     type: alicloud:privatelink:VpcEndpointService
///     properties:
///       serviceDescription: ${name}
///       connectBandwidth: 103
///       autoAcceptConnection: false
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Private Link Vpc Endpoint Service can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:privatelink/vpcEndpointService:VpcEndpointService example <id>
/// ```
class VpcEndpointService extends pulumi.CustomResource {
  /// The IP address version.
  late final pulumi.Output<String> addressIpVersion;
  /// Indicates whether the endpoint service automatically accepts endpoint connection requests. Valid values:
  late final pulumi.Output<bool?> autoAcceptConnection;
  /// The default bandwidth of the endpoint connection. Valid values: 100 to 10240. Unit: Mbit/s.
  late final pulumi.Output<int> connectBandwidth;
  /// The time when the endpoint service was created.
  late final pulumi.Output<String> createTime;
  /// Specifies whether to perform only a dry run, without performing the actual request.
  late final pulumi.Output<bool?> dryRun;
  /// The payer of the endpoint service. Valid values:
  /// - `Endpoint`: the service consumer.
  /// - `EndpointService`: the service provider.
  late final pulumi.Output<String> payer;
  /// The ID of the region to which the endpoint service belongs.
  late final pulumi.Output<String> regionId;
  /// The resource group ID.
  late final pulumi.Output<String> resourceGroupId;
  /// The service state of the endpoint service.
  late final pulumi.Output<String> serviceBusinessStatus;
  /// The description of the endpoint service.
  late final pulumi.Output<String?> serviceDescription;
  /// The domain name of the endpoint service.
  late final pulumi.Output<String> serviceDomain;
  /// The service resource type. Value:
  late final pulumi.Output<String> serviceResourceType;
  /// Specifies whether to enable IPv6 for the endpoint service. Valid values:
  late final pulumi.Output<bool> serviceSupportIpv6;
  /// The state of the endpoint service.
  late final pulumi.Output<String> status;
  /// The list of tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The name of the endpoint service.
  late final pulumi.Output<String> vpcEndpointServiceName;
  /// Specifies whether to first resolve the domain name of the nearest endpoint that is associated with the endpoint service. Valid values:
  late final pulumi.Output<bool> zoneAffinityEnabled;

  /// Creates a new [VpcEndpointService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcEndpointService]. {@macro pulumi_privatelink_vpc_endpoint_service_vpc_endpoint_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcEndpointService(
    String name, {
    VpcEndpointServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:privatelink/vpcEndpointService:VpcEndpointService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressIpVersion = registerOutput<String>('addressIpVersion');
    this.autoAcceptConnection = registerOutput<bool?>('autoAcceptConnection');
    this.connectBandwidth = registerOutput<int>('connectBandwidth');
    this.createTime = registerOutput<String>('createTime');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.payer = registerOutput<String>('payer');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.serviceBusinessStatus = registerOutput<String>('serviceBusinessStatus');
    this.serviceDescription = registerOutput<String?>('serviceDescription');
    this.serviceDomain = registerOutput<String>('serviceDomain');
    this.serviceResourceType = registerOutput<String>('serviceResourceType');
    this.serviceSupportIpv6 = registerOutput<bool>('serviceSupportIpv6');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcEndpointServiceName = registerOutput<String>('vpcEndpointServiceName');
    this.zoneAffinityEnabled = registerOutput<bool>('zoneAffinityEnabled');
  }

  /// Gets an existing [VpcEndpointService] resource's state with the given [name] and [id].
  static VpcEndpointService get(
    String name,
    pulumi.Input<String> id, {
    VpcEndpointServiceState? state,
  }) {
    return VpcEndpointService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcEndpointService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:privatelink/vpcEndpointService:VpcEndpointService',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressIpVersion = registerOutput<String>('addressIpVersion');
    this.autoAcceptConnection = registerOutput<bool?>('autoAcceptConnection');
    this.connectBandwidth = registerOutput<int>('connectBandwidth');
    this.createTime = registerOutput<String>('createTime');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.payer = registerOutput<String>('payer');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.serviceBusinessStatus = registerOutput<String>('serviceBusinessStatus');
    this.serviceDescription = registerOutput<String?>('serviceDescription');
    this.serviceDomain = registerOutput<String>('serviceDomain');
    this.serviceResourceType = registerOutput<String>('serviceResourceType');
    this.serviceSupportIpv6 = registerOutput<bool>('serviceSupportIpv6');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcEndpointServiceName = registerOutput<String>('vpcEndpointServiceName');
    this.zoneAffinityEnabled = registerOutput<bool>('zoneAffinityEnabled');
  }
}
