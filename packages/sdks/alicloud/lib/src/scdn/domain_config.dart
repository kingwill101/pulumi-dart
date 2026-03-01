import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_config_args.dart';
import 'domain_config_function_arg.dart';
import 'domain_config_state.dart';

/// Provides a SCDN Accelerated Domain resource.
///
/// For information about domain config and how to use it, see [Batch set config](https://help.aliyun.com/document_detail/92912.html)
///
/// > **NOTE:** Available in v1.131.0+.
///
/// > **NOTE:** Alibaba Cloud SCDN has stopped new customer purchases from January 26, 2023, and you can choose to buy Alibaba Cloud DCDN products with more comprehensive acceleration and protection capabilities. If you are already a SCDN customer, you can submit a work order at any time to apply for a smooth migration to Alibaba Cloud DCDN products. In the future, we will provide better acceleration and security protection services in Alibaba Cloud DCDN, thank you for your understanding and cooperation.
///
/// > **DEPRECATED:**  This resource has been [deprecated](https://www.aliyun.com/product/scdn) from version `1.219.0`.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Create a new Domain config.
/// const domain = new alicloud.scdn.Domain("domain", {
///     domainName: "mydomain.alicloud-provider.cn",
///     cdnType: "web",
///     scope: "overseas",
///     sources: [{
///         content: "1.1.1.1",
///         type: "ipaddr",
///         priority: "20",
///         port: 80,
///     }],
/// });
/// const config = new alicloud.scdn.DomainConfig("config", {
///     domainName: domain.domainName,
///     functionName: "ip_allow_list_set",
///     functionArgs: [{
///         argName: "ip_list",
///         argValue: "110.110.110.110",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Create a new Domain config.
/// domain = alicloud.scdn.Domain("domain",
///     domain_name="mydomain.alicloud-provider.cn",
///     cdn_type="web",
///     scope="overseas",
///     sources=[{
///         "content": "1.1.1.1",
///         "type": "ipaddr",
///         "priority": "20",
///         "port": 80,
///     }])
/// config = alicloud.scdn.DomainConfig("config",
///     domain_name=domain.domain_name,
///     function_name="ip_allow_list_set",
///     function_args=[{
///         "arg_name": "ip_list",
///         "arg_value": "110.110.110.110",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new Domain config.
///     var domain = new AliCloud.Scdn.Domain("domain", new()
///     {
///         DomainName = "mydomain.alicloud-provider.cn",
///         CdnType = "web",
///         Scope = "overseas",
///         Sources = new[]
///         {
///             new AliCloud.Scdn.Inputs.DomainSourceArgs
///             {
///                 Content = "1.1.1.1",
///                 Type = "ipaddr",
///                 Priority = "20",
///                 Port = 80,
///             },
///         },
///     });
///
///     var config = new AliCloud.Scdn.DomainConfig("config", new()
///     {
///         DomainName = domain.DomainName,
///         FunctionName = "ip_allow_list_set",
///         FunctionArgs = new[]
///         {
///             new AliCloud.Scdn.Inputs.DomainConfigFunctionArgArgs
///             {
///                 ArgName = "ip_list",
///                 ArgValue = "110.110.110.110",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/scdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a new Domain config.
/// 		domain, err := scdn.NewDomain(ctx, "domain", &scdn.DomainArgs{
/// 			DomainName: pulumi.String("mydomain.alicloud-provider.cn"),
/// 			CdnType:    "web",
/// 			Scope:      "overseas",
/// 			Sources: scdn.DomainSourceArray{
/// 				&scdn.DomainSourceArgs{
/// 					Content:  pulumi.String("1.1.1.1"),
/// 					Type:     pulumi.String("ipaddr"),
/// 					Priority: pulumi.String("20"),
/// 					Port:     pulumi.Int(80),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = scdn.NewDomainConfig(ctx, "config", &scdn.DomainConfigArgs{
/// 			DomainName:   domain.DomainName,
/// 			FunctionName: pulumi.String("ip_allow_list_set"),
/// 			FunctionArgs: scdn.DomainConfigFunctionArgArray{
/// 				&scdn.DomainConfigFunctionArgArgs{
/// 					ArgName:  pulumi.String("ip_list"),
/// 					ArgValue: pulumi.String("110.110.110.110"),
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
/// import com.pulumi.alicloud.scdn.Domain;
/// import com.pulumi.alicloud.scdn.DomainArgs;
/// import com.pulumi.alicloud.scdn.inputs.DomainSourceArgs;
/// import com.pulumi.alicloud.scdn.DomainConfig;
/// import com.pulumi.alicloud.scdn.DomainConfigArgs;
/// import com.pulumi.alicloud.scdn.inputs.DomainConfigFunctionArgArgs;
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
///         // Create a new Domain config.
///         var domain = new Domain("domain", DomainArgs.builder()
///             .domainName("mydomain.alicloud-provider.cn")
///             .cdnType("web")
///             .scope("overseas")
///             .sources(DomainSourceArgs.builder()
///                 .content("1.1.1.1")
///                 .type("ipaddr")
///                 .priority("20")
///                 .port(80)
///                 .build())
///             .build());
///
///         var config = new DomainConfig("config", DomainConfigArgs.builder()
///             .domainName(domain.domainName())
///             .functionName("ip_allow_list_set")
///             .functionArgs(DomainConfigFunctionArgArgs.builder()
///                 .argName("ip_list")
///                 .argValue("110.110.110.110")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new Domain config.
///   domain:
///     type: alicloud:scdn:Domain
///     properties:
///       domainName: mydomain.alicloud-provider.cn
///       cdnType: web
///       scope: overseas
///       sources:
///         - content: 1.1.1.1
///           type: ipaddr
///           priority: '20'
///           port: 80
///   config:
///     type: alicloud:scdn:DomainConfig
///     properties:
///       domainName: ${domain.domainName}
///       functionName: ip_allow_list_set
///       functionArgs:
///         - argName: ip_list
///           argValue: 110.110.110.110
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// SCDN domain config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:scdn/domainConfig:DomainConfig example <domain_name>:<function_name>:<config_id>
/// ```
class DomainConfig extends pulumi.CustomResource {
  /// The SCDN domain config id.
  late final pulumi.Output<String> configId;
  /// Name of the accelerated domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  late final pulumi.Output<String> domainName;
  /// The args of the domain config.
  late final pulumi.Output<List<DomainConfigFunctionArg>> functionArgs;
  /// The name of the domain config.
  late final pulumi.Output<String> functionName;
  /// The status of this resource.
  late final pulumi.Output<String> status;

  /// Creates a new [DomainConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainConfig]. {@macro pulumi_scdn_domain_config_domain_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainConfig(
    String name, {
    DomainConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:scdn/domainConfig:DomainConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configId = registerOutput<String>('configId');
    this.domainName = registerOutput<String>('domainName');
    this.functionArgs = registerOutput<List<DomainConfigFunctionArg>>('functionArgs');
    this.functionName = registerOutput<String>('functionName');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [DomainConfig] resource's state with the given [name] and [id].
  static DomainConfig get(
    String name,
    pulumi.Input<String> id, {
    DomainConfigState? state,
  }) {
    return DomainConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DomainConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:scdn/domainConfig:DomainConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configId = registerOutput<String>('configId');
    this.domainName = registerOutput<String>('domainName');
    this.functionArgs = registerOutput<List<DomainConfigFunctionArg>>('functionArgs');
    this.functionName = registerOutput<String>('functionName');
    this.status = registerOutput<String>('status');
  }
}
