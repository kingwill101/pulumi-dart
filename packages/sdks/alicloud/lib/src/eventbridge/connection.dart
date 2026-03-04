import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_auth_parameters.dart';
import 'connection_network_parameters.dart';
import 'connection_state.dart';

/// Provides a Event Bridge Connection resource.
///
/// For information about Event Bridge Connection and how to use it, see [What is Connection](https://www.alibabacloud.com/help/en/eventbridge/latest/api-eventbridge-2020-04-01-createconnection).
///
/// &gt; **NOTE:** Available since v1.210.0.
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
/// const region = config.get("region") || "cn-chengdu";
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultSwitch.vpcId,
/// });
/// const defaultConnection = new alicloud.eventbridge.Connection("default", {
///     connectionName: name,
///     description: "test-connection-basic-pre",
///     networkParameters: {
///         networkType: "PublicNetwork",
///         vpcId: defaultNetwork.id,
///         vswitcheId: defaultSwitch.id,
///         securityGroupId: defaultSecurityGroup.id,
///     },
///     authParameters: {
///         authorizationType: "BASIC_AUTH",
///         apiKeyAuthParameters: {
///             apiKeyName: "Token",
///             apiKeyValue: "Token-value",
///         },
///         basicAuthParameters: {
///             username: "admin",
///             password: "admin",
///         },
///         oauthParameters: {
///             authorizationEndpoint: "http://127.0.0.1:8080",
///             httpMethod: "POST",
///             clientParameters: {
///                 clientId: "ClientId",
///                 clientSecret: "ClientSecret",
///             },
///             oauthHttpParameters: {
///                 headerParameters: [{
///                     key: "name",
///                     value: "name",
///                     isValueSecret: "true",
///                 }],
///                 bodyParameters: [{
///                     key: "name",
///                     value: "name",
///                     isValueSecret: "true",
///                 }],
///                 queryStringParameters: [{
///                     key: "name",
///                     value: "name",
///                     isValueSecret: "true",
///                 }],
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// region = config.get("region")
/// if region is None:
///     region = "cn-chengdu"
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_zones()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_switch.vpc_id)
/// default_connection = alicloud.eventbridge.Connection("default",
///     connection_name=name,
///     description="test-connection-basic-pre",
///     network_parameters={
///         "network_type": "PublicNetwork",
///         "vpc_id": default_network.id,
///         "vswitche_id": default_switch.id,
///         "security_group_id": default_security_group.id,
///     },
///     auth_parameters={
///         "authorization_type": "BASIC_AUTH",
///         "api_key_auth_parameters": {
///             "api_key_name": "Token",
///             "api_key_value": "Token-value",
///         },
///         "basic_auth_parameters": {
///             "username": "admin",
///             "password": "admin",
///         },
///         "oauth_parameters": {
///             "authorization_endpoint": "http://127.0.0.1:8080",
///             "http_method": "POST",
///             "client_parameters": {
///                 "client_id": "ClientId",
///                 "client_secret": "ClientSecret",
///             },
///             "oauth_http_parameters": {
///                 "header_parameters": [{
///                     "key": "name",
///                     "value": "name",
///                     "is_value_secret": "true",
///                 }],
///                 "body_parameters": [{
///                     "key": "name",
///                     "value": "name",
///                     "is_value_secret": "true",
///                 }],
///                 "query_string_parameters": [{
///                     "key": "name",
///                     "value": "name",
///                     "is_value_secret": "true",
///                 }],
///             },
///         },
///     })
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
///     var region = config.Get("region") ?? "cn-chengdu";
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.GetZones.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultSwitch.VpcId,
///     });
///
///     var defaultConnection = new AliCloud.EventBridge.Connection("default", new()
///     {
///         ConnectionName = name,
///         Description = "test-connection-basic-pre",
///         NetworkParameters = new AliCloud.EventBridge.Inputs.ConnectionNetworkParametersArgs
///         {
///             NetworkType = "PublicNetwork",
///             VpcId = defaultNetwork.Id,
///             VswitcheId = defaultSwitch.Id,
///             SecurityGroupId = defaultSecurityGroup.Id,
///         },
///         AuthParameters = new AliCloud.EventBridge.Inputs.ConnectionAuthParametersArgs
///         {
///             AuthorizationType = "BASIC_AUTH",
///             ApiKeyAuthParameters = new AliCloud.EventBridge.Inputs.ConnectionAuthParametersApiKeyAuthParametersArgs
///             {
///                 ApiKeyName = "Token",
///                 ApiKeyValue = "Token-value",
///             },
///             BasicAuthParameters = new AliCloud.EventBridge.Inputs.ConnectionAuthParametersBasicAuthParametersArgs
///             {
///                 Username = "admin",
///                 Password = "admin",
///             },
///             OauthParameters = new AliCloud.EventBridge.Inputs.ConnectionAuthParametersOauthParametersArgs
///             {
///                 AuthorizationEndpoint = "http://127.0.0.1:8080",
///                 HttpMethod = "POST",
///                 ClientParameters = new AliCloud.EventBridge.Inputs.ConnectionAuthParametersOauthParametersClientParametersArgs
///                 {
///                     ClientId = "ClientId",
///                     ClientSecret = "ClientSecret",
///                 },
///                 OauthHttpParameters = new AliCloud.EventBridge.Inputs.ConnectionAuthParametersOauthParametersOauthHttpParametersArgs
///                 {
///                     HeaderParameters = new[]
///                     {
///                         new AliCloud.EventBridge.Inputs.ConnectionAuthParametersOauthParametersOauthHttpParametersHeaderParameterArgs
///                         {
///                             Key = "name",
///                             Value = "name",
///                             IsValueSecret = "true",
///                         },
///                     },
///                     BodyParameters = new[]
///                     {
///                         new AliCloud.EventBridge.Inputs.ConnectionAuthParametersOauthParametersOauthHttpParametersBodyParameterArgs
///                         {
///                             Key = "name",
///                             Value = "name",
///                             IsValueSecret = "true",
///                         },
///                     },
///                     QueryStringParameters = new[]
///                     {
///                         new AliCloud.EventBridge.Inputs.ConnectionAuthParametersOauthParametersOauthHttpParametersQueryStringParameterArgs
///                         {
///                             Key = "name",
///                             Value = "name",
///                             IsValueSecret = "true",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eventbridge"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		region := "cn-chengdu"
/// 		if param := cfg.Get("region"); param != "" {
/// 			region = param
/// 		}
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: defaultSwitch.VpcId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventbridge.NewConnection(ctx, "default", &eventbridge.ConnectionArgs{
/// 			ConnectionName: pulumi.String(name),
/// 			Description:    pulumi.String("test-connection-basic-pre"),
/// 			NetworkParameters: &eventbridge.ConnectionNetworkParametersArgs{
/// 				NetworkType:     pulumi.String("PublicNetwork"),
/// 				VpcId:           defaultNetwork.ID(),
/// 				VswitcheId:      defaultSwitch.ID(),
/// 				SecurityGroupId: defaultSecurityGroup.ID(),
/// 			},
/// 			AuthParameters: &eventbridge.ConnectionAuthParametersArgs{
/// 				AuthorizationType: pulumi.String("BASIC_AUTH"),
/// 				ApiKeyAuthParameters: &eventbridge.ConnectionAuthParametersApiKeyAuthParametersArgs{
/// 					ApiKeyName:  pulumi.String("Token"),
/// 					ApiKeyValue: pulumi.String("Token-value"),
/// 				},
/// 				BasicAuthParameters: &eventbridge.ConnectionAuthParametersBasicAuthParametersArgs{
/// 					Username: pulumi.String("admin"),
/// 					Password: pulumi.String("admin"),
/// 				},
/// 				OauthParameters: &eventbridge.ConnectionAuthParametersOauthParametersArgs{
/// 					AuthorizationEndpoint: pulumi.String("http://127.0.0.1:8080"),
/// 					HttpMethod:            pulumi.String("POST"),
/// 					ClientParameters: &eventbridge.ConnectionAuthParametersOauthParametersClientParametersArgs{
/// 						ClientId:     pulumi.String("ClientId"),
/// 						ClientSecret: pulumi.String("ClientSecret"),
/// 					},
/// 					OauthHttpParameters: &eventbridge.ConnectionAuthParametersOauthParametersOauthHttpParametersArgs{
/// 						HeaderParameters: eventbridge.ConnectionAuthParametersOauthParametersOauthHttpParametersHeaderParameterArray{
/// 							&eventbridge.ConnectionAuthParametersOauthParametersOauthHttpParametersHeaderParameterArgs{
/// 								Key:           pulumi.String("name"),
/// 								Value:         pulumi.String("name"),
/// 								IsValueSecret: pulumi.String("true"),
/// 							},
/// 						},
/// 						BodyParameters: eventbridge.ConnectionAuthParametersOauthParametersOauthHttpParametersBodyParameterArray{
/// 							&eventbridge.ConnectionAuthParametersOauthParametersOauthHttpParametersBodyParameterArgs{
/// 								Key:           pulumi.String("name"),
/// 								Value:         pulumi.String("name"),
/// 								IsValueSecret: pulumi.String("true"),
/// 							},
/// 						},
/// 						QueryStringParameters: eventbridge.ConnectionAuthParametersOauthParametersOauthHttpParametersQueryStringParameterArray{
/// 							&eventbridge.ConnectionAuthParametersOauthParametersOauthHttpParametersQueryStringParameterArgs{
/// 								Key:           pulumi.String("name"),
/// 								Value:         pulumi.String("name"),
/// 								IsValueSecret: pulumi.String("true"),
/// 							},
/// 						},
/// 					},
/// 				},
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.eventbridge.Connection;
/// import com.pulumi.alicloud.eventbridge.ConnectionArgs;
/// import com.pulumi.alicloud.eventbridge.inputs.ConnectionNetworkParametersArgs;
/// import com.pulumi.alicloud.eventbridge.inputs.ConnectionAuthParametersArgs;
/// import com.pulumi.alicloud.eventbridge.inputs.ConnectionAuthParametersApiKeyAuthParametersArgs;
/// import com.pulumi.alicloud.eventbridge.inputs.ConnectionAuthParametersBasicAuthParametersArgs;
/// import com.pulumi.alicloud.eventbridge.inputs.ConnectionAuthParametersOauthParametersArgs;
/// import com.pulumi.alicloud.eventbridge.inputs.ConnectionAuthParametersOauthParametersClientParametersArgs;
/// import com.pulumi.alicloud.eventbridge.inputs.ConnectionAuthParametersOauthParametersOauthHttpParametersArgs;
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
///         final var region = config.get("region").orElse("cn-chengdu");
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultSwitch.vpcId())
///             .build());
///
///         var defaultConnection = new Connection("defaultConnection", ConnectionArgs.builder()
///             .connectionName(name)
///             .description("test-connection-basic-pre")
///             .networkParameters(ConnectionNetworkParametersArgs.builder()
///                 .networkType("PublicNetwork")
///                 .vpcId(defaultNetwork.id())
///                 .vswitcheId(defaultSwitch.id())
///                 .securityGroupId(defaultSecurityGroup.id())
///                 .build())
///             .authParameters(ConnectionAuthParametersArgs.builder()
///                 .authorizationType("BASIC_AUTH")
///                 .apiKeyAuthParameters(ConnectionAuthParametersApiKeyAuthParametersArgs.builder()
///                     .apiKeyName("Token")
///                     .apiKeyValue("Token-value")
///                     .build())
///                 .basicAuthParameters(ConnectionAuthParametersBasicAuthParametersArgs.builder()
///                     .username("admin")
///                     .password("admin")
///                     .build())
///                 .oauthParameters(ConnectionAuthParametersOauthParametersArgs.builder()
///                     .authorizationEndpoint("http://127.0.0.1:8080")
///                     .httpMethod("POST")
///                     .clientParameters(ConnectionAuthParametersOauthParametersClientParametersArgs.builder()
///                         .clientId("ClientId")
///                         .clientSecret("ClientSecret")
///                         .build())
///                     .oauthHttpParameters(ConnectionAuthParametersOauthParametersOauthHttpParametersArgs.builder()
///                         .headerParameters(ConnectionAuthParametersOauthParametersOauthHttpParametersHeaderParameterArgs.builder()
///                             .key("name")
///                             .value("name")
///                             .isValueSecret("true")
///                             .build())
///                         .bodyParameters(ConnectionAuthParametersOauthParametersOauthHttpParametersBodyParameterArgs.builder()
///                             .key("name")
///                             .value("name")
///                             .isValueSecret("true")
///                             .build())
///                         .queryStringParameters(ConnectionAuthParametersOauthParametersOauthHttpParametersQueryStringParameterArgs.builder()
///                             .key("name")
///                             .value("name")
///                             .isValueSecret("true")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   region:
///     type: string
///     default: cn-chengdu
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       vpcId: ${defaultSwitch.vpcId}
///   defaultConnection:
///     type: alicloud:eventbridge:Connection
///     name: default
///     properties:
///       connectionName: ${name}
///       description: test-connection-basic-pre
///       networkParameters:
///         networkType: PublicNetwork
///         vpcId: ${defaultNetwork.id}
///         vswitcheId: ${defaultSwitch.id}
///         securityGroupId: ${defaultSecurityGroup.id}
///       authParameters:
///         authorizationType: BASIC_AUTH
///         apiKeyAuthParameters:
///           apiKeyName: Token
///           apiKeyValue: Token-value
///         basicAuthParameters:
///           username: admin
///           password: admin
///         oauthParameters:
///           authorizationEndpoint: http://127.0.0.1:8080
///           httpMethod: POST
///           clientParameters:
///             clientId: ClientId
///             clientSecret: ClientSecret
///           oauthHttpParameters:
///             headerParameters:
///               - key: name
///                 value: name
///                 isValueSecret: 'true'
///             bodyParameters:
///               - key: name
///                 value: name
///                 isValueSecret: 'true'
///             queryStringParameters:
///               - key: name
///                 value: name
///                 isValueSecret: 'true'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Event Bridge Connection can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eventbridge/connection:Connection example <id>
/// ```
class Connection extends pulumi.CustomResource {
  /// The parameters that are configured for authentication. See `auth_parameters` below.
  late final pulumi.Output<ConnectionAuthParameters?> authParameters;

  /// The name of the connection.
  late final pulumi.Output<String> connectionName;

  /// The creation time of the Connection.
  late final pulumi.Output<String> createTime;

  /// The description of the connection.
  late final pulumi.Output<String?> description;

  /// The parameters that are configured for the network. See `network_parameters` below.
  late final pulumi.Output<ConnectionNetworkParameters> networkParameters;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_eventbridge_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eventbridge/connection:Connection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authParameters = registerOutput<ConnectionAuthParameters?>(
      'authParameters',
    );
    connectionName = registerOutput<String>('connectionName');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    networkParameters = registerOutput<ConnectionNetworkParameters>(
      'networkParameters',
    );
  }

  /// Gets an existing [Connection] resource's state with the given [name] and [id].
  static Connection get(
    String name,
    pulumi.Input<String> id, {
    ConnectionState? state,
  }) {
    return Connection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Connection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eventbridge/connection:Connection',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authParameters = registerOutput<ConnectionAuthParameters?>(
      'authParameters',
    );
    connectionName = registerOutput<String>('connectionName');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    networkParameters = registerOutput<ConnectionNetworkParameters>(
      'networkParameters',
    );
  }
}
