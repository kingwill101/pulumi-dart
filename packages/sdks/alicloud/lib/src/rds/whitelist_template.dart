import 'package:pulumi/pulumi.dart' as pulumi;
import 'whitelist_template_args.dart';
import 'whitelist_template_state.dart';

/// Provide a whitelist template resource.
///
///
/// For information about Resource AliCloudWhitelistTemplate and how to use it, see [What is Whitelist Template](https://www.alibabacloud.com/help/en/rds/developer-reference/api-rds-2014-08-15-modifywhitelisttemplate?).
///
/// &gt; **NOTE:** Available since v1.254.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = new alicloud.rds.WhitelistTemplate("example", {
///     ipWhiteList: "172.16.0.0",
///     templateName: "example-whitelist",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.rds.WhitelistTemplate("example",
///     ip_white_list="172.16.0.0",
///     template_name="example-whitelist")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Rds.WhitelistTemplate("example", new()
///     {
///         IpWhiteList = "172.16.0.0",
///         TemplateName = "example-whitelist",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.NewWhitelistTemplate(ctx, "example", &rds.WhitelistTemplateArgs{
/// 			IpWhiteList:  pulumi.String("172.16.0.0"),
/// 			TemplateName: pulumi.String("example-whitelist"),
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
/// import com.pulumi.alicloud.rds.WhitelistTemplate;
/// import com.pulumi.alicloud.rds.WhitelistTemplateArgs;
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
///         var example = new WhitelistTemplate("example", WhitelistTemplateArgs.builder()
///             .ipWhiteList("172.16.0.0")
///             .templateName("example-whitelist")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:rds:WhitelistTemplate
///     properties:
///       ipWhiteList: 172.16.0.0
///       templateName: example-whitelist
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// You can use the whitelist template ID to import whitelist templates, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/whitelistTemplate:WhitelistTemplate example <id>
/// ```
class WhitelistTemplate extends pulumi.CustomResource {
  /// IP whitelist, multiple IP addresses should be separated by commas (,) and cannot be duplicated.Supports the following two formats:
  /// - IP address format, for example: 10.23.XX.XX.
  /// - CIDR format, for example: 10.23.XX.XX/24 (no inter domain routing, 24 represents the length of the prefix in the address, ranging from 1 to 32).
  late final pulumi.Output<String> ipWhiteList;

  /// Whitelist template name. Passed in when creating a template, and cannot have the same name under the same account, starting with a letter.
  late final pulumi.Output<String> templateName;

  /// Creates a new [WhitelistTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WhitelistTemplate]. {@macro pulumi_rds_whitelist_template_whitelist_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WhitelistTemplate(
    String name, {
    WhitelistTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rds/whitelistTemplate:WhitelistTemplate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    ipWhiteList = registerOutput<String>('ipWhiteList');
    templateName = registerOutput<String>('templateName');
  }

  /// Gets an existing [WhitelistTemplate] resource's state with the given [name] and [id].
  static WhitelistTemplate get(
    String name,
    pulumi.Input<String> id, {
    WhitelistTemplateState? state,
  }) {
    return WhitelistTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WhitelistTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rds/whitelistTemplate:WhitelistTemplate',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    ipWhiteList = registerOutput<String>('ipWhiteList');
    templateName = registerOutput<String>('templateName');
  }
}
