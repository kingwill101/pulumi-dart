import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_args.dart';

/// Provides a Data Security Center Config resource.
///
/// For information about Data Security Center Config and how to use it, see [What is Config](https://www.alibabacloud.com/help/en/data-security-center/latest/api-sddp-2019-01-03-createconfig).
///
/// > **NOTE:** Available since v1.133.0.
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
/// const _default = new alicloud.sddp.Config("default", {
///     code: "access_failed_cnt",
///     value: "10",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.sddp.Config("default",
///     code="access_failed_cnt",
///     value="10")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Sddp.Config("default", new()
///     {
///         Code = "access_failed_cnt",
///         Value = "10",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sddp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sddp.NewConfig(ctx, "default", &sddp.ConfigArgs{
/// 			Code:  pulumi.String("access_failed_cnt"),
/// 			Value: pulumi.String("10"),
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
/// import com.pulumi.alicloud.sddp.Config;
/// import com.pulumi.alicloud.sddp.ConfigArgs;
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
///         var default_ = new Config("default", ConfigArgs.builder()
///             .code("access_failed_cnt")
///             .value("10")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:sddp:Config
///     properties:
///       code: access_failed_cnt
///       value: 10
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Data Security Center Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sddp/config:Config example <code>
/// ```
class Config extends pulumi.CustomResource {
  /// Abnormal Alarm General Configuration Module by Using the Encoding. Valid values: `access_failed_cnt`, `access_permission_exprie_max_days`, `log_datasize_avg_days`.
  late final pulumi.Output<String?> code;
  /// Abnormal Alarm General Description of the Configuration Item.
  late final pulumi.Output<String> description;
  /// The language of the request and response. Valid values: `zh`,`en`.
  late final pulumi.Output<String?> lang;
  /// The Specified Exception Alarm Generic by Using the Value. Code Different Values for This Parameter the Specific Meaning of Different:
  late final pulumi.Output<String?> value;

  /// Creates a new [Config].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Config]. {@macro pulumi_sddp_config_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Config(
    String name, {
    ConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sddp/config:Config',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.code = registerOutput<String?>('code');
    this.description = registerOutput<String>('description');
    this.lang = registerOutput<String?>('lang');
    this.value = registerOutput<String?>('value');
  }
}
