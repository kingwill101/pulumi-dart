import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_attachment_args.dart';

/// Provides bind the domain name to the DNS instance resource.
///
/// > **NOTE:** Available in v1.80.0+.
///
/// > **DEPRECATED:**  This resource has been deprecated from version `1.99.0`. Please use new resource alicloud_alidns_domain_attachment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const dns = new alicloud.dns.DomainAttachment("dns", {
///     instanceId: "dns-cn-mp91lyq9xxxx",
///     domainNames: [
///         "test111.abc",
///         "test222.abc",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// dns = alicloud.dns.DomainAttachment("dns",
///     instance_id="dns-cn-mp91lyq9xxxx",
///     domain_names=[
///         "test111.abc",
///         "test222.abc",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dns = new AliCloud.Dns.DomainAttachment("dns", new()
///     {
///         InstanceId = "dns-cn-mp91lyq9xxxx",
///         DomainNames = new[]
///         {
///             "test111.abc",
///             "test222.abc",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewDomainAttachment(ctx, "dns", &dns.DomainAttachmentArgs{
/// 			InstanceId: pulumi.String("dns-cn-mp91lyq9xxxx"),
/// 			DomainNames: pulumi.StringArray{
/// 				pulumi.String("test111.abc"),
/// 				pulumi.String("test222.abc"),
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
/// import com.pulumi.alicloud.dns.DomainAttachment;
/// import com.pulumi.alicloud.dns.DomainAttachmentArgs;
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
///         var dns = new DomainAttachment("dns", DomainAttachmentArgs.builder()
///             .instanceId("dns-cn-mp91lyq9xxxx")
///             .domainNames(
///                 "test111.abc",
///                 "test222.abc")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dns:
///     type: alicloud:dns:DomainAttachment
///     properties:
///       instanceId: dns-cn-mp91lyq9xxxx
///       domainNames:
///         - test111.abc
///         - test222.abc
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DNS domain attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dns/domainAttachment:DomainAttachment example dns-cn-v0h1ldjhxxx
/// ```
class DomainAttachment extends pulumi.CustomResource {
  /// The domain names bound to the DNS instance.
  late final pulumi.Output<List<String>> domainNames;
  /// The id of the DNS instance.
  late final pulumi.Output<String> instanceId;

  /// Creates a new [DomainAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainAttachment]. {@macro pulumi_dns_domain_attachment_domain_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainAttachment(
    String name, {
    DomainAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dns/domainAttachment:DomainAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainNames = registerOutput<List<String>>('domainNames');
    this.instanceId = registerOutput<String>('instanceId');
  }
}
