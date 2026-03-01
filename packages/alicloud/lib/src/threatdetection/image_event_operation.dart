import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_event_operation_args.dart';

/// Provides a Threat Detection Image Event Operation resource.
///
/// Image Event Operation.
///
/// For information about Threat Detection Image Event Operation and how to use it, see [What is Image Event Operation](https://www.alibabacloud.com/help/zh/security-center/developer-reference/api-sas-2018-12-03-addimageeventoperation).
///
/// > **NOTE:** Available since v1.212.0.
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
/// const _default = new alicloud.threatdetection.ImageEventOperation("default", {
///     eventType: "maliciousFile",
///     operationCode: "whitelist",
///     eventKey: "alibabacloud_ak",
///     scenarios: `{
///   \\"type\\":\\"default\\",
///   \\"value\\":\\"\\"
/// }
/// `,
///     eventName: "阿里云AK",
///     conditions: `[
///   {
///       \\"condition\\":\\"MD5\\",
///       \\"type\\":\\"equals\\",
///       \\"value\\":\\"0083a31cc0083a31ccf7c10367a6e783e\\"
///   }
/// ]
/// `,
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
/// default = alicloud.threatdetection.ImageEventOperation("default",
///     event_type="maliciousFile",
///     operation_code="whitelist",
///     event_key="alibabacloud_ak",
///     scenarios="""{
///   \"type\":\"default\",
///   \"value\":\"\"
/// }
/// """,
///     event_name="阿里云AK",
///     conditions="""[
///   {
///       \"condition\":\"MD5\",
///       \"type\":\"equals\",
///       \"value\":\"0083a31cc0083a31ccf7c10367a6e783e\"
///   }
/// ]
/// """)
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
///     var @default = new AliCloud.ThreatDetection.ImageEventOperation("default", new()
///     {
///         EventType = "maliciousFile",
///         OperationCode = "whitelist",
///         EventKey = "alibabacloud_ak",
///         Scenarios = @"{
///   \""type\"":\""default\"",
///   \""value\"":\""\""
/// }
/// ",
///         EventName = "阿里云AK",
///         Conditions = @"[
///   {
///       \""condition\"":\""MD5\"",
///       \""type\"":\""equals\"",
///       \""value\"":\""0083a31cc0083a31ccf7c10367a6e783e\""
///   }
/// ]
/// ",
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
/// 		_, err := threatdetection.NewImageEventOperation(ctx, "default", &threatdetection.ImageEventOperationArgs{
/// 			EventType:     pulumi.String("maliciousFile"),
/// 			OperationCode: pulumi.String("whitelist"),
/// 			EventKey:      pulumi.String("alibabacloud_ak"),
/// 			Scenarios:     pulumi.String("{\n  \\\"type\\\":\\\"default\\\",\n  \\\"value\\\":\\\"\\\"\n}\n"),
/// 			EventName:     pulumi.String("阿里云AK"),
/// 			Conditions: pulumi.String(`[
///   {
///       \"condition\":\"MD5\",
///       \"type\":\"equals\",
///       \"value\":\"0083a31cc0083a31ccf7c10367a6e783e\"
///   }
/// ]
/// `),
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
/// import com.pulumi.alicloud.threatdetection.ImageEventOperation;
/// import com.pulumi.alicloud.threatdetection.ImageEventOperationArgs;
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
///         var default_ = new ImageEventOperation("default", ImageEventOperationArgs.builder()
///             .eventType("maliciousFile")
///             .operationCode("whitelist")
///             .eventKey("alibabacloud_ak")
///             .scenarios("""
/// {
///   \"type\":\"default\",
///   \"value\":\"\"
/// }
///             """)
///             .eventName("阿里云AK")
///             .conditions("""
/// [
///   {
///       \"condition\":\"MD5\",
///       \"type\":\"equals\",
///       \"value\":\"0083a31cc0083a31ccf7c10367a6e783e\"
///   }
/// ]
///             """)
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
///     type: alicloud:threatdetection:ImageEventOperation
///     properties:
///       eventType: maliciousFile
///       operationCode: whitelist
///       eventKey: alibabacloud_ak
///       scenarios: |
///         {
///           \"type\":\"default\",
///           \"value\":\"\"
///         }
///       eventName: 阿里云AK
///       conditions: |
///         [
///           {
///               \"condition\":\"MD5\",
///               \"type\":\"equals\",
///               \"value\":\"0083a31cc0083a31ccf7c10367a6e783e\"
///           }
///         ]
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Threat Detection Image Event Operation can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/imageEventOperation:ImageEventOperation example <id>
/// ```
class ImageEventOperation extends pulumi.CustomResource {
  /// The rule conditions. The value is in the JSON format. For more information, see [How to use it](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-addimageeventoperation). **NOTE:** From version 1.255.0, `conditions` can be modified.
  late final pulumi.Output<String> conditions;
  /// The keyword of the alert item.
  late final pulumi.Output<String?> eventKey;
  /// The name of the alert item.
  late final pulumi.Output<String?> eventName;
  /// The alert type.
  late final pulumi.Output<String> eventType;
  /// The remarks.
  late final pulumi.Output<String?> note;
  /// The operation code.
  late final pulumi.Output<String> operationCode;
  /// The application scope of the rule.
  late final pulumi.Output<String> scenarios;
  /// The source of the whitelist. Valid values:
  late final pulumi.Output<String> source;

  /// Creates a new [ImageEventOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImageEventOperation]. {@macro pulumi_threatdetection_image_event_operation_image_event_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImageEventOperation(
    String name, {
    ImageEventOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/imageEventOperation:ImageEventOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.conditions = registerOutput<String>('conditions');
    this.eventKey = registerOutput<String?>('eventKey');
    this.eventName = registerOutput<String?>('eventName');
    this.eventType = registerOutput<String>('eventType');
    this.note = registerOutput<String?>('note');
    this.operationCode = registerOutput<String>('operationCode');
    this.scenarios = registerOutput<String>('scenarios');
    this.source = registerOutput<String>('source');
  }
}
