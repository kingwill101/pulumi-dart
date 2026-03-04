import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_line_args.dart';
import 'custom_line_state.dart';

/// Provides a Alidns Custom Line resource.
///
/// For information about Alidns Custom Line and how to use it, see [What is Custom Line](https://www.alibabacloud.com/help/en/doc-detail/145059.html).
///
/// &gt; **NOTE:** Available since v1.151.0.
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
/// const _default = new alicloud.dns.CustomLine("default", {
///     customLineName: "tf-example",
///     domainName: "alicloud-provider.com",
///     ipSegmentLists: [{
///         startIp: "192.0.2.123",
///         endIp: "192.0.2.125",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.dns.CustomLine("default",
///     custom_line_name="tf-example",
///     domain_name="alicloud-provider.com",
///     ip_segment_lists=[{
///         "start_ip": "192.0.2.123",
///         "end_ip": "192.0.2.125",
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
///     var @default = new AliCloud.Dns.CustomLine("default", new()
///     {
///         CustomLineName = "tf-example",
///         DomainName = "alicloud-provider.com",
///         IpSegmentLists = new[]
///         {
///             new AliCloud.Dns.Inputs.CustomLineIpSegmentListArgs
///             {
///                 StartIp = "192.0.2.123",
///                 EndIp = "192.0.2.125",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewCustomLine(ctx, "default", &dns.CustomLineArgs{
/// 			CustomLineName: pulumi.String("tf-example"),
/// 			DomainName:     pulumi.String("alicloud-provider.com"),
/// 			IpSegmentLists: dns.CustomLineIpSegmentListArray{
/// 				&dns.CustomLineIpSegmentListArgs{
/// 					StartIp: pulumi.String("192.0.2.123"),
/// 					EndIp:   pulumi.String("192.0.2.125"),
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
/// import com.pulumi.alicloud.dns.CustomLine;
/// import com.pulumi.alicloud.dns.CustomLineArgs;
/// import com.pulumi.alicloud.dns.inputs.CustomLineIpSegmentListArgs;
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
///         var default_ = new CustomLine("default", CustomLineArgs.builder()
///             .customLineName("tf-example")
///             .domainName("alicloud-provider.com")
///             .ipSegmentLists(CustomLineIpSegmentListArgs.builder()
///                 .startIp("192.0.2.123")
///                 .endIp("192.0.2.125")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:dns:CustomLine
///     properties:
///       customLineName: tf-example
///       domainName: alicloud-provider.com
///       ipSegmentLists:
///         - startIp: 192.0.2.123
///           endIp: 192.0.2.125
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Alidns Custom Line can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dns/customLine:CustomLine example <id>
/// ```
class CustomLine extends pulumi.CustomResource {
  /// The name of the Custom Line.
  late final pulumi.Output<String> customLineName;

  /// The Domain name.
  late final pulumi.Output<String> domainName;

  /// The IP segment list. See `ip_segment_list` below for details.
  late final pulumi.Output<List<Map<String, dynamic>>> ipSegmentLists;

  /// The lang.
  late final pulumi.Output<String?> lang;

  /// Creates a new [CustomLine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomLine]. {@macro pulumi_dns_custom_line_custom_line_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomLine(
    String name, {
    CustomLineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:dns/customLine:CustomLine',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customLineName = registerOutput<String>('customLineName');
    domainName = registerOutput<String>('domainName');
    ipSegmentLists = registerOutput<List<Map<String, dynamic>>>(
      'ipSegmentLists',
    );
    lang = registerOutput<String?>('lang');
  }

  /// Gets an existing [CustomLine] resource's state with the given [name] and [id].
  static CustomLine get(
    String name,
    pulumi.Input<String> id, {
    CustomLineState? state,
  }) {
    return CustomLine._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomLine._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:dns/customLine:CustomLine',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customLineName = registerOutput<String>('customLineName');
    domainName = registerOutput<String>('domainName');
    ipSegmentLists = registerOutput<List<Map<String, dynamic>>>(
      'ipSegmentLists',
    );
    lang = registerOutput<String?>('lang');
  }
}
