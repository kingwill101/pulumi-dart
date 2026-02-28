import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_account_policy_args.dart';

/// Provides a CloudWatch Log Account Policy resource.
///
/// ## Example Usage
///
/// ### Account Data Protection Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const dataProtection = new aws.cloudwatch.LogAccountPolicy("data_protection", {
///     policyName: "data-protection",
///     policyType: "DATA_PROTECTION_POLICY",
///     policyDocument: JSON.stringify({
///         Name: "DataProtection",
///         Version: "2021-06-01",
///         Statement: [
///             {
///                 Sid: "Audit",
///                 DataIdentifier: ["arn:aws:dataprotection::aws:data-identifier/EmailAddress"],
///                 Operation: {
///                     Audit: {
///                         FindingsDestination: {},
///                     },
///                 },
///             },
///             {
///                 Sid: "Redact",
///                 DataIdentifier: ["arn:aws:dataprotection::aws:data-identifier/EmailAddress"],
///                 Operation: {
///                     Deidentify: {
///                         MaskConfig: {},
///                     },
///                 },
///             },
///         ],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// data_protection = aws.cloudwatch.LogAccountPolicy("data_protection",
///     policy_name="data-protection",
///     policy_type="DATA_PROTECTION_POLICY",
///     policy_document=json.dumps({
///         "Name": "DataProtection",
///         "Version": "2021-06-01",
///         "Statement": [
///             {
///                 "Sid": "Audit",
///                 "DataIdentifier": ["arn:aws:dataprotection::aws:data-identifier/EmailAddress"],
///                 "Operation": {
///                     "Audit": {
///                         "FindingsDestination": {},
///                     },
///                 },
///             },
///             {
///                 "Sid": "Redact",
///                 "DataIdentifier": ["arn:aws:dataprotection::aws:data-identifier/EmailAddress"],
///                 "Operation": {
///                     "Deidentify": {
///                         "MaskConfig": {},
///                     },
///                 },
///             },
///         ],
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataProtection = new Aws.CloudWatch.LogAccountPolicy("data_protection", new()
///     {
///         PolicyName = "data-protection",
///         PolicyType = "DATA_PROTECTION_POLICY",
///         PolicyDocument = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Name"] = "DataProtection",
///             ["Version"] = "2021-06-01",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "Audit",
///                     ["DataIdentifier"] = new[]
///                     {
///                         "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
///                     },
///                     ["Operation"] = new Dictionary<string, object?>
///                     {
///                         ["Audit"] = new Dictionary<string, object?>
///                         {
///                             ["FindingsDestination"] = new Dictionary<string, object?>
///                             {
///                             },
///                         },
///                     },
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "Redact",
///                     ["DataIdentifier"] = new[]
///                     {
///                         "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
///                     },
///                     ["Operation"] = new Dictionary<string, object?>
///                     {
///                         ["Deidentify"] = new Dictionary<string, object?>
///                         {
///                             ["MaskConfig"] = new Dictionary<string, object?>
///                             {
///                             },
///                         },
///                     },
///                 },
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Name":    "DataProtection",
/// 			"Version": "2021-06-01",
/// 			"Statement": []interface{}{
/// 				map[string]interface{}{
/// 					"Sid": "Audit",
/// 					"DataIdentifier": []string{
/// 						"arn:aws:dataprotection::aws:data-identifier/EmailAddress",
/// 					},
/// 					"Operation": map[string]interface{}{
/// 						"Audit": map[string]interface{}{
/// 							"FindingsDestination": map[string]interface{}{},
/// 						},
/// 					},
/// 				},
/// 				map[string]interface{}{
/// 					"Sid": "Redact",
/// 					"DataIdentifier": []string{
/// 						"arn:aws:dataprotection::aws:data-identifier/EmailAddress",
/// 					},
/// 					"Operation": map[string]interface{}{
/// 						"Deidentify": map[string]interface{}{
/// 							"MaskConfig": map[string]interface{}{},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = cloudwatch.NewLogAccountPolicy(ctx, "data_protection", &cloudwatch.LogAccountPolicyArgs{
/// 			PolicyName:     pulumi.String("data-protection"),
/// 			PolicyType:     pulumi.String("DATA_PROTECTION_POLICY"),
/// 			PolicyDocument: pulumi.String(json0),
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
/// import com.pulumi.aws.cloudwatch.LogAccountPolicy;
/// import com.pulumi.aws.cloudwatch.LogAccountPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var dataProtection = new LogAccountPolicy("dataProtection", LogAccountPolicyArgs.builder()
///             .policyName("data-protection")
///             .policyType("DATA_PROTECTION_POLICY")
///             .policyDocument(serializeJson(
///                 jsonObject(
///                     jsonProperty("Name", "DataProtection"),
///                     jsonProperty("Version", "2021-06-01"),
///                     jsonProperty("Statement", jsonArray(
///                         jsonObject(
///                             jsonProperty("Sid", "Audit"),
///                             jsonProperty("DataIdentifier", jsonArray("arn:aws:dataprotection::aws:data-identifier/EmailAddress")),
///                             jsonProperty("Operation", jsonObject(
///                                 jsonProperty("Audit", jsonObject(
///                                     jsonProperty("FindingsDestination", jsonObject(
///
///                                     ))
///                                 ))
///                             ))
///                         ),
///                         jsonObject(
///                             jsonProperty("Sid", "Redact"),
///                             jsonProperty("DataIdentifier", jsonArray("arn:aws:dataprotection::aws:data-identifier/EmailAddress")),
///                             jsonProperty("Operation", jsonObject(
///                                 jsonProperty("Deidentify", jsonObject(
///                                     jsonProperty("MaskConfig", jsonObject(
///
///                                     ))
///                                 ))
///                             ))
///                         )
///                     ))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataProtection:
///     type: aws:cloudwatch:LogAccountPolicy
///     name: data_protection
///     properties:
///       policyName: data-protection
///       policyType: DATA_PROTECTION_POLICY
///       policyDocument:
///         fn::toJSON:
///           Name: DataProtection
///           Version: 2021-06-01
///           Statement:
///             - Sid: Audit
///               DataIdentifier:
///                 - arn:aws:dataprotection::aws:data-identifier/EmailAddress
///               Operation:
///                 Audit:
///                   FindingsDestination: {}
///             - Sid: Redact
///               DataIdentifier:
///                 - arn:aws:dataprotection::aws:data-identifier/EmailAddress
///               Operation:
///                 Deidentify:
///                   MaskConfig: {}
/// ```
///
///
/// ### Subscription Filter Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const subscriptionFilter = new aws.cloudwatch.LogAccountPolicy("subscription_filter", {
///     policyName: "subscription-filter",
///     policyType: "SUBSCRIPTION_FILTER_POLICY",
///     policyDocument: JSON.stringify({
///         DestinationArn: test.arn,
///         FilterPattern: "test",
///     }),
///     selectionCriteria: "LogGroupName NOT IN [\"excluded_log_group_name\"]",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// subscription_filter = aws.cloudwatch.LogAccountPolicy("subscription_filter",
///     policy_name="subscription-filter",
///     policy_type="SUBSCRIPTION_FILTER_POLICY",
///     policy_document=json.dumps({
///         "DestinationArn": test["arn"],
///         "FilterPattern": "test",
///     }),
///     selection_criteria="LogGroupName NOT IN [\"excluded_log_group_name\"]")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subscriptionFilter = new Aws.CloudWatch.LogAccountPolicy("subscription_filter", new()
///     {
///         PolicyName = "subscription-filter",
///         PolicyType = "SUBSCRIPTION_FILTER_POLICY",
///         PolicyDocument = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["DestinationArn"] = test.Arn,
///             ["FilterPattern"] = "test",
///         }),
///         SelectionCriteria = "LogGroupName NOT IN [\"excluded_log_group_name\"]",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"DestinationArn": test.Arn,
/// 			"FilterPattern":  "test",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = cloudwatch.NewLogAccountPolicy(ctx, "subscription_filter", &cloudwatch.LogAccountPolicyArgs{
/// 			PolicyName:        pulumi.String("subscription-filter"),
/// 			PolicyType:        pulumi.String("SUBSCRIPTION_FILTER_POLICY"),
/// 			PolicyDocument:    pulumi.String(json0),
/// 			SelectionCriteria: pulumi.String("LogGroupName NOT IN [\"excluded_log_group_name\"]"),
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
/// import com.pulumi.aws.cloudwatch.LogAccountPolicy;
/// import com.pulumi.aws.cloudwatch.LogAccountPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var subscriptionFilter = new LogAccountPolicy("subscriptionFilter", LogAccountPolicyArgs.builder()
///             .policyName("subscription-filter")
///             .policyType("SUBSCRIPTION_FILTER_POLICY")
///             .policyDocument(serializeJson(
///                 jsonObject(
///                     jsonProperty("DestinationArn", test.arn()),
///                     jsonProperty("FilterPattern", "test")
///                 )))
///             .selectionCriteria("LogGroupName NOT IN [\"excluded_log_group_name\"]")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subscriptionFilter:
///     type: aws:cloudwatch:LogAccountPolicy
///     name: subscription_filter
///     properties:
///       policyName: subscription-filter
///       policyType: SUBSCRIPTION_FILTER_POLICY
///       policyDocument:
///         fn::toJSON:
///           DestinationArn: ${test.arn}
///           FilterPattern: test
///       selectionCriteria: LogGroupName NOT IN ["excluded_log_group_name"]
/// ```
///
///
/// ### Field Index Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const fieldIndex = new aws.cloudwatch.LogAccountPolicy("field_index", {
///     policyName: "field-index",
///     policyType: "FIELD_INDEX_POLICY",
///     policyDocument: JSON.stringify({
///         Fields: [
///             "field1",
///             "field2",
///         ],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// field_index = aws.cloudwatch.LogAccountPolicy("field_index",
///     policy_name="field-index",
///     policy_type="FIELD_INDEX_POLICY",
///     policy_document=json.dumps({
///         "Fields": [
///             "field1",
///             "field2",
///         ],
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fieldIndex = new Aws.CloudWatch.LogAccountPolicy("field_index", new()
///     {
///         PolicyName = "field-index",
///         PolicyType = "FIELD_INDEX_POLICY",
///         PolicyDocument = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Fields"] = new[]
///             {
///                 "field1",
///                 "field2",
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Fields": []string{
/// 				"field1",
/// 				"field2",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = cloudwatch.NewLogAccountPolicy(ctx, "field_index", &cloudwatch.LogAccountPolicyArgs{
/// 			PolicyName:     pulumi.String("field-index"),
/// 			PolicyType:     pulumi.String("FIELD_INDEX_POLICY"),
/// 			PolicyDocument: pulumi.String(json0),
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
/// import com.pulumi.aws.cloudwatch.LogAccountPolicy;
/// import com.pulumi.aws.cloudwatch.LogAccountPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var fieldIndex = new LogAccountPolicy("fieldIndex", LogAccountPolicyArgs.builder()
///             .policyName("field-index")
///             .policyType("FIELD_INDEX_POLICY")
///             .policyDocument(serializeJson(
///                 jsonObject(
///                     jsonProperty("Fields", jsonArray(
///                         "field1",
///                         "field2"
///                     ))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fieldIndex:
///     type: aws:cloudwatch:LogAccountPolicy
///     name: field_index
///     properties:
///       policyName: field-index
///       policyType: FIELD_INDEX_POLICY
///       policyDocument:
///         fn::toJSON:
///           Fields:
///             - field1
///             - field2
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import this resource using the `policy_name` and `policy_type` separated by `:`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logAccountPolicy:LogAccountPolicy example "my-account-policy:SUBSCRIPTION_FILTER_POLICY"
/// ```
class LogAccountPolicy extends pulumi.CustomResource {
  /// Text of the account policy. Refer to the [AWS docs](https://docs.aws.amazon.com/cli/latest/reference/logs/put-account-policy.html) for more information.
  late final pulumi.Output<String> policyDocument;
  /// Name of the account policy.
  late final pulumi.Output<String> policyName;
  /// Type of account policy. One of `DATA_PROTECTION_POLICY`, `SUBSCRIPTION_FILTER_POLICY`, `FIELD_INDEX_POLICY` or `TRANSFORMER_POLICY`. You can have one account policy per type in an account.
  late final pulumi.Output<String> policyType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Currently defaults to and only accepts the value: `ALL`.
  late final pulumi.Output<String?> scope;
  /// Criteria for applying a subscription filter policy to a selection of log groups. The only allowable criteria selector is `LogGroupName NOT IN []`.
  late final pulumi.Output<String?> selectionCriteria;

  /// Creates a new [LogAccountPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogAccountPolicy]. {@macro pulumi_cloudwatch_log_account_policy_log_account_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogAccountPolicy(
    String name, {
    LogAccountPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logAccountPolicy:LogAccountPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policyDocument = registerOutput<String>('policyDocument');
    this.policyName = registerOutput<String>('policyName');
    this.policyType = registerOutput<String>('policyType');
    this.region = registerOutput<String>('region');
    this.scope = registerOutput<String?>('scope');
    this.selectionCriteria = registerOutput<String?>('selectionCriteria');
  }
}
