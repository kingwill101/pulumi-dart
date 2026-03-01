import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_service_user_args.dart';
import 'vpc_endpoint_service_user_state.dart';

/// Provides a Private Link Vpc Endpoint Service User resource.
///
/// Endpoint service user whitelist.
///
/// For information about Private Link Vpc Endpoint Service User and how to use it, see [What is Vpc Endpoint Service User](https://www.alibabacloud.com/help/en/privatelink/latest/api-privatelink-2020-04-15-addusertovpcendpointservice).
///
/// > **NOTE:** Available since v1.110.0.
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
/// const name = config.get("name") || "tfexampleuser";
/// const example = new alicloud.privatelink.VpcEndpointService("example", {
///     serviceDescription: name,
///     connectBandwidth: 103,
///     autoAcceptConnection: false,
/// });
/// const exampleUser = new alicloud.ram.User("example", {
///     name: name,
///     displayName: "user_display_name",
///     mobile: "86-18688888888",
///     email: "hello.uuu@aaa.com",
///     comments: "yoyoyo",
/// });
/// const exampleVpcEndpointServiceUser = new alicloud.privatelink.VpcEndpointServiceUser("example", {
///     serviceId: example.id,
///     userId: exampleUser.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfexampleuser"
/// example = alicloud.privatelink.VpcEndpointService("example",
///     service_description=name,
///     connect_bandwidth=103,
///     auto_accept_connection=False)
/// example_user = alicloud.ram.User("example",
///     name=name,
///     display_name="user_display_name",
///     mobile="86-18688888888",
///     email="hello.uuu@aaa.com",
///     comments="yoyoyo")
/// example_vpc_endpoint_service_user = alicloud.privatelink.VpcEndpointServiceUser("example",
///     service_id=example.id,
///     user_id=example_user.id)
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
///     var name = config.Get("name") ?? "tfexampleuser";
///     var example = new AliCloud.PrivateLink.VpcEndpointService("example", new()
///     {
///         ServiceDescription = name,
///         ConnectBandwidth = 103,
///         AutoAcceptConnection = false,
///     });
///
///     var exampleUser = new AliCloud.Ram.User("example", new()
///     {
///         Name = name,
///         DisplayName = "user_display_name",
///         Mobile = "86-18688888888",
///         Email = "hello.uuu@aaa.com",
///         Comments = "yoyoyo",
///     });
///
///     var exampleVpcEndpointServiceUser = new AliCloud.PrivateLink.VpcEndpointServiceUser("example", new()
///     {
///         ServiceId = example.Id,
///         UserId = exampleUser.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/privatelink"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tfexampleuser"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		example, err := privatelink.NewVpcEndpointService(ctx, "example", &privatelink.VpcEndpointServiceArgs{
/// 			ServiceDescription:   pulumi.String(name),
/// 			ConnectBandwidth:     pulumi.Int(103),
/// 			AutoAcceptConnection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUser, err := ram.NewUser(ctx, "example", &ram.UserArgs{
/// 			Name:        pulumi.String(name),
/// 			DisplayName: pulumi.String("user_display_name"),
/// 			Mobile:      pulumi.String("86-18688888888"),
/// 			Email:       pulumi.String("hello.uuu@aaa.com"),
/// 			Comments:    pulumi.String("yoyoyo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = privatelink.NewVpcEndpointServiceUser(ctx, "example", &privatelink.VpcEndpointServiceUserArgs{
/// 			ServiceId: example.ID(),
/// 			UserId:    exampleUser.ID(),
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
/// import com.pulumi.alicloud.ram.User;
/// import com.pulumi.alicloud.ram.UserArgs;
/// import com.pulumi.alicloud.privatelink.VpcEndpointServiceUser;
/// import com.pulumi.alicloud.privatelink.VpcEndpointServiceUserArgs;
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
///         final var name = config.get("name").orElse("tfexampleuser");
///         var example = new VpcEndpointService("example", VpcEndpointServiceArgs.builder()
///             .serviceDescription(name)
///             .connectBandwidth(103)
///             .autoAcceptConnection(false)
///             .build());
///
///         var exampleUser = new User("exampleUser", UserArgs.builder()
///             .name(name)
///             .displayName("user_display_name")
///             .mobile("86-18688888888")
///             .email("hello.uuu@aaa.com")
///             .comments("yoyoyo")
///             .build());
///
///         var exampleVpcEndpointServiceUser = new VpcEndpointServiceUser("exampleVpcEndpointServiceUser", VpcEndpointServiceUserArgs.builder()
///             .serviceId(example.id())
///             .userId(exampleUser.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfexampleuser
/// resources:
///   example:
///     type: alicloud:privatelink:VpcEndpointService
///     properties:
///       serviceDescription: ${name}
///       connectBandwidth: 103
///       autoAcceptConnection: false
///   exampleUser:
///     type: alicloud:ram:User
///     name: example
///     properties:
///       name: ${name}
///       displayName: user_display_name
///       mobile: 86-18688888888
///       email: hello.uuu@aaa.com
///       comments: yoyoyo
///   exampleVpcEndpointServiceUser:
///     type: alicloud:privatelink:VpcEndpointServiceUser
///     name: example
///     properties:
///       serviceId: ${example.id}
///       userId: ${exampleUser.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Private Link Vpc Endpoint Service User can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:privatelink/vpcEndpointServiceUser:VpcEndpointServiceUser example <service_id>:<user_id>
/// ```
class VpcEndpointServiceUser extends pulumi.CustomResource {
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  late final pulumi.Output<bool?> dryRun;
  /// The endpoint service ID.
  late final pulumi.Output<String> serviceId;
  /// The whitelist in the format of ARN.
  late final pulumi.Output<String?> userArn;
  /// The ID of the Alibaba Cloud account in the whitelist of the endpoint service.
  late final pulumi.Output<String> userId;

  /// Creates a new [VpcEndpointServiceUser].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcEndpointServiceUser]. {@macro pulumi_privatelink_vpc_endpoint_service_user_vpc_endpoint_service_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcEndpointServiceUser(
    String name, {
    VpcEndpointServiceUserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:privatelink/vpcEndpointServiceUser:VpcEndpointServiceUser',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dryRun = registerOutput<bool?>('dryRun');
    this.serviceId = registerOutput<String>('serviceId');
    this.userArn = registerOutput<String?>('userArn');
    this.userId = registerOutput<String>('userId');
  }

  /// Gets an existing [VpcEndpointServiceUser] resource's state with the given [name] and [id].
  static VpcEndpointServiceUser get(
    String name,
    pulumi.Input<String> id, {
    VpcEndpointServiceUserState? state,
  }) {
    return VpcEndpointServiceUser._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcEndpointServiceUser._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:privatelink/vpcEndpointServiceUser:VpcEndpointServiceUser',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dryRun = registerOutput<bool?>('dryRun');
    this.serviceId = registerOutput<String>('serviceId');
    this.userArn = registerOutput<String?>('userArn');
    this.userId = registerOutput<String>('userId');
  }
}
