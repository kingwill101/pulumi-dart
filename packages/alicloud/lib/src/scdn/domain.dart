import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_cert_info.dart';
import 'domain_source.dart';

/// Provides a SCDN Domain resource.
///
/// For information about SCDN Domain and how to use it, see [What is Domain](https://help.aliyun.com/document_detail/63672.html).
///
/// > **NOTE:** Available since v1.131.0.
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
/// const example = new alicloud.scdn.Domain("example", {
///     domainName: "my-Domain",
///     sources: [{
///         content: "xxx.aliyuncs.com",
///         enabled: "online",
///         port: 80,
///         priority: "20",
///         type: "oss",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.scdn.Domain("example",
///     domain_name="my-Domain",
///     sources=[{
///         "content": "xxx.aliyuncs.com",
///         "enabled": "online",
///         "port": 80,
///         "priority": "20",
///         "type": "oss",
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
///     var example = new AliCloud.Scdn.Domain("example", new()
///     {
///         DomainName = "my-Domain",
///         Sources = new[]
///         {
///             new AliCloud.Scdn.Inputs.DomainSourceArgs
///             {
///                 Content = "xxx.aliyuncs.com",
///                 Enabled = "online",
///                 Port = 80,
///                 Priority = "20",
///                 Type = "oss",
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
/// 		_, err := scdn.NewDomain(ctx, "example", &scdn.DomainArgs{
/// 			DomainName: pulumi.String("my-Domain"),
/// 			Sources: scdn.DomainSourceArray{
/// 				&scdn.DomainSourceArgs{
/// 					Content:  pulumi.String("xxx.aliyuncs.com"),
/// 					Enabled:  pulumi.String("online"),
/// 					Port:     pulumi.Int(80),
/// 					Priority: pulumi.String("20"),
/// 					Type:     pulumi.String("oss"),
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
///         var example = new Domain("example", DomainArgs.builder()
///             .domainName("my-Domain")
///             .sources(DomainSourceArgs.builder()
///                 .content("xxx.aliyuncs.com")
///                 .enabled("online")
///                 .port(80)
///                 .priority("20")
///                 .type("oss")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:scdn:Domain
///     properties:
///       domainName: my-Domain
///       sources:
///         - content: xxx.aliyuncs.com
///           enabled: online
///           port: 80
///           priority: '20'
///           type: oss
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// SCDN Domain can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:scdn/domain:Domain example <domain_name>
/// ```
class Domain extends pulumi.CustomResource {
  /// Attribute perm has been deprecated and suggest removing it from your template.
  late final pulumi.Output<String?> bizName;
  /// Certificate Information. See the following `Block cert_infos`.
  late final pulumi.Output<List<DomainCertInfo>?> certInfos;
  /// The health check url.
  late final pulumi.Output<String?> checkUrl;
  /// The name of domain.
  late final pulumi.Output<String> domainName;
  /// Whether to set certificate forcibly.
  late final pulumi.Output<String?> forceSet;
  /// The resource group id.
  late final pulumi.Output<String> resourceGroupId;
  /// the Origin Server Information. See the following `Block sources`.
  late final pulumi.Output<List<DomainSource>> sources;
  /// The status of the resource. Valid values: `offline`, `online`.
  late final pulumi.Output<String> status;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_scdn_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:scdn/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bizName = registerOutput<String?>('bizName');
    this.certInfos = registerOutput<List<DomainCertInfo>?>('certInfos');
    this.checkUrl = registerOutput<String?>('checkUrl');
    this.domainName = registerOutput<String>('domainName');
    this.forceSet = registerOutput<String?>('forceSet');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.sources = registerOutput<List<DomainSource>>('sources');
    this.status = registerOutput<String>('status');
  }
}
