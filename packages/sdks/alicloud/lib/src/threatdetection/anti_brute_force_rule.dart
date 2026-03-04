import 'package:pulumi/pulumi.dart' as pulumi;
import 'anti_brute_force_rule_args.dart';
import 'anti_brute_force_rule_protocol_type.dart';
import 'anti_brute_force_rule_state.dart';

/// Provides a Threat Detection Anti Brute Force Rule resource.
///
/// Anti-brute force cracking rules.
///
/// For information about Threat Detection Anti Brute Force Rule and how to use it, see [What is Anti Brute Force Rule](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-createantibruteforcerule).
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
/// const _default = new alicloud.threatdetection.AntiBruteForceRule("default", {
///     antiBruteForceRuleName: "apispec_example",
///     forbiddenTime: 360,
///     uuidLists: ["032b618f-b220-4a0d-bd37-fbdc6ef58b6a"],
///     failCount: 80,
///     span: 10,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.threatdetection.AntiBruteForceRule("default",
///     anti_brute_force_rule_name="apispec_example",
///     forbidden_time=360,
///     uuid_lists=["032b618f-b220-4a0d-bd37-fbdc6ef58b6a"],
///     fail_count=80,
///     span=10)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.ThreatDetection.AntiBruteForceRule("default", new()
///     {
///         AntiBruteForceRuleName = "apispec_example",
///         ForbiddenTime = 360,
///         UuidLists = new[]
///         {
///             "032b618f-b220-4a0d-bd37-fbdc6ef58b6a",
///         },
///         FailCount = 80,
///         Span = 10,
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
/// 		_, err := threatdetection.NewAntiBruteForceRule(ctx, "default", &threatdetection.AntiBruteForceRuleArgs{
/// 			AntiBruteForceRuleName: pulumi.String("apispec_example"),
/// 			ForbiddenTime:          pulumi.Int(360),
/// 			UuidLists: pulumi.StringArray{
/// 				pulumi.String("032b618f-b220-4a0d-bd37-fbdc6ef58b6a"),
/// 			},
/// 			FailCount: pulumi.Int(80),
/// 			Span:      pulumi.Int(10),
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
/// import com.pulumi.alicloud.threatdetection.AntiBruteForceRule;
/// import com.pulumi.alicloud.threatdetection.AntiBruteForceRuleArgs;
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
///         var default_ = new AntiBruteForceRule("default", AntiBruteForceRuleArgs.builder()
///             .antiBruteForceRuleName("apispec_example")
///             .forbiddenTime(360)
///             .uuidLists("032b618f-b220-4a0d-bd37-fbdc6ef58b6a")
///             .failCount(80)
///             .span(10)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:threatdetection:AntiBruteForceRule
///     properties:
///       antiBruteForceRuleName: apispec_example
///       forbiddenTime: 360
///       uuidLists:
///         - 032b618f-b220-4a0d-bd37-fbdc6ef58b6a
///       failCount: 80
///       span: 10
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Threat Detection Anti Brute Force Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/antiBruteForceRule:AntiBruteForceRule example <id>
/// ```
class AntiBruteForceRule extends pulumi.CustomResource {
  /// The name of the defense rule.
  late final pulumi.Output<String> antiBruteForceRuleName;

  /// Specifies whether to set the defense rule as the default rule. Valid values:
  late final pulumi.Output<bool?> defaultRule;

  /// FailCount
  late final pulumi.Output<int> failCount;

  /// The period of time during which logons from an account are not allowed. Unit: minutes. Valid values:
  late final pulumi.Output<int> forbiddenTime;

  /// The types of protocols supported for interception by the brute force attack rule creation. See `protocol_type` below.
  late final pulumi.Output<AntiBruteForceRuleProtocolType> protocolType;

  /// The maximum period of time during which failed logon attempts from an account can occur. Unit: minutes. Valid values:
  late final pulumi.Output<int> span;

  /// The UUIDs of the servers to which you want to apply the defense rule.
  late final pulumi.Output<List<String>> uuidLists;

  /// Creates a new [AntiBruteForceRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AntiBruteForceRule]. {@macro pulumi_threatdetection_anti_brute_force_rule_anti_brute_force_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AntiBruteForceRule(
    String name, {
    AntiBruteForceRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:threatdetection/antiBruteForceRule:AntiBruteForceRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    antiBruteForceRuleName = registerOutput<String>('antiBruteForceRuleName');
    defaultRule = registerOutput<bool?>('defaultRule');
    failCount = registerOutput<int>('failCount');
    forbiddenTime = registerOutput<int>('forbiddenTime');
    protocolType = registerOutput<AntiBruteForceRuleProtocolType>(
      'protocolType',
    );
    span = registerOutput<int>('span');
    uuidLists = registerOutput<List<String>>('uuidLists');
  }

  /// Gets an existing [AntiBruteForceRule] resource's state with the given [name] and [id].
  static AntiBruteForceRule get(
    String name,
    pulumi.Input<String> id, {
    AntiBruteForceRuleState? state,
  }) {
    return AntiBruteForceRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AntiBruteForceRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:threatdetection/antiBruteForceRule:AntiBruteForceRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    antiBruteForceRuleName = registerOutput<String>('antiBruteForceRuleName');
    defaultRule = registerOutput<bool?>('defaultRule');
    failCount = registerOutput<int>('failCount');
    forbiddenTime = registerOutput<int>('forbiddenTime');
    protocolType = registerOutput<AntiBruteForceRuleProtocolType>(
      'protocolType',
    );
    span = registerOutput<int>('span');
    uuidLists = registerOutput<List<String>>('uuidLists');
  }
}
