import 'package:pulumi/pulumi.dart' as pulumi;
import 'malicious_file_whitelist_config_args.dart';
import 'malicious_file_whitelist_config_state.dart';

/// Provides a Threat Detection Malicious File Whitelist Config resource. malicious file add whitelist config.
///
/// For information about Threat Detection Malicious File Whitelist Config and how to use it, see [What is Malicious File Whitelist Config](https://www.alibabacloud.com/help/zh/security-center/developer-reference/api-sas-2018-12-03-createmaliciousfilewhitelistconfig/).
///
/// > **NOTE:** Available since v1.214.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.threatdetection.MaliciousFileWhitelistConfig("default", {
///     operator: "strEquals",
///     field: "fileMd6",
///     targetValue: "123",
///     targetType: "SELECTION_KEY",
///     eventName: "123",
///     source: "agentless",
///     fieldValue: "sadfas",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.threatdetection.MaliciousFileWhitelistConfig("default",
///     operator="strEquals",
///     field="fileMd6",
///     target_value="123",
///     target_type="SELECTION_KEY",
///     event_name="123",
///     source="agentless",
///     field_value="sadfas")
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.ThreatDetection.MaliciousFileWhitelistConfig("default", new()
///     {
///         Operator = "strEquals",
///         Field = "fileMd6",
///         TargetValue = "123",
///         TargetType = "SELECTION_KEY",
///         EventName = "123",
///         Source = "agentless",
///         FieldValue = "sadfas",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := threatdetection.NewMaliciousFileWhitelistConfig(ctx, "default", &threatdetection.MaliciousFileWhitelistConfigArgs{
/// 			Operator:    pulumi.String("strEquals"),
/// 			Field:       pulumi.String("fileMd6"),
/// 			TargetValue: pulumi.String("123"),
/// 			TargetType:  pulumi.String("SELECTION_KEY"),
/// 			EventName:   pulumi.String("123"),
/// 			Source:      pulumi.String("agentless"),
/// 			FieldValue:  pulumi.String("sadfas"),
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
/// import com.pulumi.alicloud.threatdetection.MaliciousFileWhitelistConfig;
/// import com.pulumi.alicloud.threatdetection.MaliciousFileWhitelistConfigArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new MaliciousFileWhitelistConfig("default", MaliciousFileWhitelistConfigArgs.builder()
///             .operator("strEquals")
///             .field("fileMd6")
///             .targetValue("123")
///             .targetType("SELECTION_KEY")
///             .eventName("123")
///             .source("agentless")
///             .fieldValue("sadfas")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:threatdetection:MaliciousFileWhitelistConfig
///     properties:
///       operator: strEquals
///       field: fileMd6
///       targetValue: '123'
///       targetType: SELECTION_KEY
///       eventName: '123'
///       source: agentless
///       fieldValue: sadfas
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Threat Detection Malicious File Whitelist Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/maliciousFileWhitelistConfig:MaliciousFileWhitelistConfig example <id>
/// ```
class MaliciousFileWhitelistConfig extends pulumi.CustomResource {
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;
  /// The name of the security alert associated with the representative rule.
  late final pulumi.Output<String?> eventName;
  /// Represents the alarm associated with the resource and the white field.
  late final pulumi.Output<String?> field;
  /// Represents the whiteout target value in effect for the resource.
  late final pulumi.Output<String?> fieldValue;
  /// The decision operator in effect on behalf of the resource.
  late final pulumi.Output<String?> operator;
  /// Business Source:
  /// - agentless: agentless detection.
  late final pulumi.Output<String?> source;
  /// The type of target in effect on behalf of the resource.
  late final pulumi.Output<String?> targetType;
  /// Represents the specific value of the target type in effect for the resource.
  late final pulumi.Output<String?> targetValue;

  /// Creates a new [MaliciousFileWhitelistConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MaliciousFileWhitelistConfig]. {@macro pulumi_threatdetection_malicious_file_whitelist_config_malicious_file_whitelist_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MaliciousFileWhitelistConfig(
    String name, {
    MaliciousFileWhitelistConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/maliciousFileWhitelistConfig:MaliciousFileWhitelistConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.eventName = registerOutput<String?>('eventName');
    this.field = registerOutput<String?>('field');
    this.fieldValue = registerOutput<String?>('fieldValue');
    this.operator = registerOutput<String?>('operator');
    this.source = registerOutput<String?>('source');
    this.targetType = registerOutput<String?>('targetType');
    this.targetValue = registerOutput<String?>('targetValue');
  }

  /// Gets an existing [MaliciousFileWhitelistConfig] resource's state with the given [name] and [id].
  static MaliciousFileWhitelistConfig get(
    String name,
    pulumi.Input<String> id, {
    MaliciousFileWhitelistConfigState? state,
  }) {
    return MaliciousFileWhitelistConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MaliciousFileWhitelistConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/maliciousFileWhitelistConfig:MaliciousFileWhitelistConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.eventName = registerOutput<String?>('eventName');
    this.field = registerOutput<String?>('field');
    this.fieldValue = registerOutput<String?>('fieldValue');
    this.operator = registerOutput<String?>('operator');
    this.source = registerOutput<String?>('source');
    this.targetType = registerOutput<String?>('targetType');
    this.targetValue = registerOutput<String?>('targetValue');
  }
}
