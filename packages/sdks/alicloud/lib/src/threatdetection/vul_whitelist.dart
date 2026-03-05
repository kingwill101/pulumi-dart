import 'package:pulumi/pulumi.dart' as pulumi;
import 'vul_whitelist_args.dart';
import 'vul_whitelist_state.dart';

/// Provides a Threat Detection Vul Whitelist resource.
///
/// For information about Threat Detection Vul Whitelist and how to use it, see [What is Vul Whitelist](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-modifycreatevulwhitelist).
///
/// &gt; **NOTE:** Available since v1.195.0.
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
/// const _default = new alicloud.threatdetection.VulWhitelist("default", {
///     whitelist: "[{\"aliasName\":\"RHSA-2021:2260: libwebp 安全更新\",\"name\":\"RHSA-2021:2260: libwebp 安全更新\",\"type\":\"cve\"}]",
///     targetInfo: "{\"type\":\"GroupId\",\"uuids\":[],\"groupIds\":[10782678]}",
///     reason: "tf-example-reason",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.threatdetection.VulWhitelist("default",
///     whitelist="[{\"aliasName\":\"RHSA-2021:2260: libwebp 安全更新\",\"name\":\"RHSA-2021:2260: libwebp 安全更新\",\"type\":\"cve\"}]",
///     target_info="{\"type\":\"GroupId\",\"uuids\":[],\"groupIds\":[10782678]}",
///     reason="tf-example-reason")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.ThreatDetection.VulWhitelist("default", new()
///     {
///         Whitelist = "[{\"aliasName\":\"RHSA-2021:2260: libwebp 安全更新\",\"name\":\"RHSA-2021:2260: libwebp 安全更新\",\"type\":\"cve\"}]",
///         TargetInfo = "{\"type\":\"GroupId\",\"uuids\":[],\"groupIds\":[10782678]}",
///         Reason = "tf-example-reason",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := threatdetection.NewVulWhitelist(ctx, "default", &threatdetection.VulWhitelistArgs{
/// 			Whitelist:  pulumi.String("[{\"aliasName\":\"RHSA-2021:2260: libwebp 安全更新\",\"name\":\"RHSA-2021:2260: libwebp 安全更新\",\"type\":\"cve\"}]"),
/// 			TargetInfo: pulumi.String("{\"type\":\"GroupId\",\"uuids\":[],\"groupIds\":[10782678]}"),
/// 			Reason:     pulumi.String("tf-example-reason"),
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
/// import com.pulumi.alicloud.threatdetection.VulWhitelist;
/// import com.pulumi.alicloud.threatdetection.VulWhitelistArgs;
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
///         var default_ = new VulWhitelist("default", VulWhitelistArgs.builder()
///             .whitelist("[{\"aliasName\":\"RHSA-2021:2260: libwebp 安全更新\",\"name\":\"RHSA-2021:2260: libwebp 安全更新\",\"type\":\"cve\"}]")
///             .targetInfo("{\"type\":\"GroupId\",\"uuids\":[],\"groupIds\":[10782678]}")
///             .reason("tf-example-reason")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:threatdetection:VulWhitelist
///     properties:
///       whitelist: '[{"aliasName":"RHSA-2021:2260: libwebp 安全更新","name":"RHSA-2021:2260: libwebp 安全更新","type":"cve"}]'
///       targetInfo: '{"type":"GroupId","uuids":[],"groupIds":[10782678]}'
///       reason: tf-example-reason
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Threat Detection Vul Whitelist can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/vulWhitelist:VulWhitelist example <id>
/// ```
class VulWhitelist extends pulumi.CustomResource {
  /// Reason for adding whitelist.
  late final pulumi.Output<String?> reason;
  /// Set the effective range of the whitelist. see [how to use it](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-modifycreatevulwhitelist).
  late final pulumi.Output<String?> targetInfo;
  /// Information about the vulnerability to be added to the whitelist. see [how to use it](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-modifycreatevulwhitelist).
  late final pulumi.Output<String> whitelist;

  /// Creates a new [VulWhitelist].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VulWhitelist]. {@macro pulumi_threatdetection_vul_whitelist_vul_whitelist_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VulWhitelist(
    String name, {
    VulWhitelistArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/vulWhitelist:VulWhitelist',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    reason = registerOutput<String?>('reason');
    targetInfo = registerOutput<String?>('targetInfo');
    whitelist = registerOutput<String>('whitelist');
  }

  /// Gets an existing [VulWhitelist] resource's state with the given [name] and [id].
  static VulWhitelist get(
    String name,
    pulumi.Input<String> id, {
    VulWhitelistState? state,
  }) {
    return VulWhitelist._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VulWhitelist._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/vulWhitelist:VulWhitelist',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    reason = registerOutput<String?>('reason');
    targetInfo = registerOutput<String?>('targetInfo');
    whitelist = registerOutput<String>('whitelist');
  }
}
