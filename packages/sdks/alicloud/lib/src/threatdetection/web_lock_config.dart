import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_lock_config_args.dart';
import 'web_lock_config_state.dart';

/// Provides a Threat Detection Web Lock Config resource.
///
/// For information about Threat Detection Web Lock Config and how to use it, see [What is Web Lock Config](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-modifyweblockstart).
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
/// const _default = alicloud.threatdetection.getAssets({
///     machineTypes: "ecs",
/// });
/// const defaultWebLockConfig = new alicloud.threatdetection.WebLockConfig("default", {
///     inclusiveFileType: "php;jsp;asp;aspx;js;cgi;html;htm;xml;shtml;shtm;jpg",
///     uuid: _default.then(_default => _default.ids?.[0]),
///     mode: "whitelist",
///     localBackupDir: "/usr/local/aegis/bak",
///     dir: "/tmp/",
///     defenceMode: "audit",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.threatdetection.get_assets(machine_types="ecs")
/// default_web_lock_config = alicloud.threatdetection.WebLockConfig("default",
///     inclusive_file_type="php;jsp;asp;aspx;js;cgi;html;htm;xml;shtml;shtm;jpg",
///     uuid=default.ids[0],
///     mode="whitelist",
///     local_backup_dir="/usr/local/aegis/bak",
///     dir="/tmp/",
///     defence_mode="audit")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ThreatDetection.GetAssets.Invoke(new()
///     {
///         MachineTypes = "ecs",
///     });
///
///     var defaultWebLockConfig = new AliCloud.ThreatDetection.WebLockConfig("default", new()
///     {
///         InclusiveFileType = "php;jsp;asp;aspx;js;cgi;html;htm;xml;shtml;shtm;jpg",
///         Uuid = @default.Apply(@default => @default.Apply(getAssetsResult => getAssetsResult.Ids[0])),
///         Mode = "whitelist",
///         LocalBackupDir = "/usr/local/aegis/bak",
///         Dir = "/tmp/",
///         DefenceMode = "audit",
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
/// 		_default, err := threatdetection.GetAssets(ctx, &threatdetection.GetAssetsArgs{
/// 			MachineTypes: pulumi.StringRef("ecs"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = threatdetection.NewWebLockConfig(ctx, "default", &threatdetection.WebLockConfigArgs{
/// 			InclusiveFileType: pulumi.String("php;jsp;asp;aspx;js;cgi;html;htm;xml;shtml;shtm;jpg"),
/// 			Uuid:              pulumi.String(_default.Ids[0]),
/// 			Mode:              pulumi.String("whitelist"),
/// 			LocalBackupDir:    pulumi.String("/usr/local/aegis/bak"),
/// 			Dir:               pulumi.String("/tmp/"),
/// 			DefenceMode:       pulumi.String("audit"),
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
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetAssetsArgs;
/// import com.pulumi.alicloud.threatdetection.WebLockConfig;
/// import com.pulumi.alicloud.threatdetection.WebLockConfigArgs;
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
///         final var default = ThreatdetectionFunctions.getAssets(GetAssetsArgs.builder()
///             .machineTypes("ecs")
///             .build());
///
///         var defaultWebLockConfig = new WebLockConfig("defaultWebLockConfig", WebLockConfigArgs.builder()
///             .inclusiveFileType("php;jsp;asp;aspx;js;cgi;html;htm;xml;shtml;shtm;jpg")
///             .uuid(default_.ids()[0])
///             .mode("whitelist")
///             .localBackupDir("/usr/local/aegis/bak")
///             .dir("/tmp/")
///             .defenceMode("audit")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultWebLockConfig:
///     type: alicloud:threatdetection:WebLockConfig
///     name: default
///     properties:
///       inclusiveFileType: php;jsp;asp;aspx;js;cgi;html;htm;xml;shtml;shtm;jpg
///       uuid: ${default.ids[0]}
///       mode: whitelist
///       localBackupDir: /usr/local/aegis/bak
///       dir: /tmp/
///       defenceMode: audit
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:threatdetection:getAssets
///       arguments:
///         machineTypes: ecs
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Threat Detection Web Lock Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/webLockConfig:WebLockConfig example <id>
/// ```
class WebLockConfig extends pulumi.CustomResource {
  /// Protection mode. Value:-**block**: Intercept-**audit**: Alarm
  late final pulumi.Output<String> defenceMode;
  /// Specify the protection directory.
  late final pulumi.Output<String> dir;
  /// Specify a directory address that does not require Web tamper protection (I. E. Excluded directories).&gt; The protection Mode **Mode** is set to **blacklist**, you need to configure this parameter.
  late final pulumi.Output<String?> exclusiveDir;
  /// Specify files that do not need to enable tamper protection for web pages (that is, exclude files).&gt; The protection Mode **Mode** is set to **blacklist**, you need to configure this parameter.
  late final pulumi.Output<String?> exclusiveFile;
  /// Specify the type of file that does not require Web tamper protection (that is, the type of excluded file). When there are multiple file types, use semicolons (;) separation. Value:-php-jsp-asp-aspx-js-cgi-html-htm-xml-shtml-shtm-jpg-gif-png &gt; The protection Mode **Mode** is set to **blacklist**, you need to configure this parameter.
  late final pulumi.Output<String?> exclusiveFileType;
  /// Specify the type of file that requires tamper protection. When there are multiple file types, use semicolons (;) separation. Value:-php-jsp-asp-aspx-js-cgi-html-htm-xml-shtml-shtm-jpg-gif-png&gt; The protection Mode **Mode** is set to **whitelist**, you need to configure this parameter.
  late final pulumi.Output<String?> inclusiveFileType;
  /// The local backup path is used to protect the safe backup of the Directory.
  late final pulumi.Output<String> localBackupDir;
  /// Specify the protected directory mode. Value:-**whitelist**: whitelist mode, which protects the added protected directories and file types.-**blacklist**: blacklist mode, which protects all unexcluded subdirectories, file types, and specified files under the added protection directory.
  late final pulumi.Output<String> mode;
  /// Specify the UUID of the server to which you want to add a protection directory.&gt; You can call the DescribeCloudCenterInstances interface to obtain the UUID of the server.
  late final pulumi.Output<String> uuid;

  /// Creates a new [WebLockConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebLockConfig]. {@macro pulumi_threatdetection_web_lock_config_web_lock_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebLockConfig(
    String name, {
    WebLockConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/webLockConfig:WebLockConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defenceMode = registerOutput<String>('defenceMode');
    dir = registerOutput<String>('dir');
    exclusiveDir = registerOutput<String?>('exclusiveDir');
    exclusiveFile = registerOutput<String?>('exclusiveFile');
    exclusiveFileType = registerOutput<String?>('exclusiveFileType');
    inclusiveFileType = registerOutput<String?>('inclusiveFileType');
    localBackupDir = registerOutput<String>('localBackupDir');
    mode = registerOutput<String>('mode');
    uuid = registerOutput<String>('uuid');
  }

  /// Gets an existing [WebLockConfig] resource's state with the given [name] and [id].
  static WebLockConfig get(
    String name,
    pulumi.Input<String> id, {
    WebLockConfigState? state,
  }) {
    return WebLockConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WebLockConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/webLockConfig:WebLockConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defenceMode = registerOutput<String>('defenceMode');
    dir = registerOutput<String>('dir');
    exclusiveDir = registerOutput<String?>('exclusiveDir');
    exclusiveFile = registerOutput<String?>('exclusiveFile');
    exclusiveFileType = registerOutput<String?>('exclusiveFileType');
    inclusiveFileType = registerOutput<String?>('inclusiveFileType');
    localBackupDir = registerOutput<String>('localBackupDir');
    mode = registerOutput<String>('mode');
    uuid = registerOutput<String>('uuid');
  }
}
