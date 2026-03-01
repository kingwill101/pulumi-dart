import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_protection_policy_args.dart';
import 'data_protection_policy_state.dart';

/// Provides an SNS data protection topic policy resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sns.Topic("example", {name: "example"});
/// const exampleDataProtectionPolicy = new aws.sns.DataProtectionPolicy("example", {
///     arn: example.arn,
///     policy: JSON.stringify({
///         Description: "Example data protection policy",
///         Name: "__example_data_protection_policy",
///         Statement: [{
///             DataDirection: "Inbound",
///             DataIdentifier: ["arn:aws:dataprotection::aws:data-identifier/EmailAddress"],
///             Operation: {
///                 Deny: {},
///             },
///             Principal: ["*"],
///             Sid: "__deny_statement_11ba9d96",
///         }],
///         Version: "2021-06-01",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.sns.Topic("example", name="example")
/// example_data_protection_policy = aws.sns.DataProtectionPolicy("example",
///     arn=example.arn,
///     policy=json.dumps({
///         "Description": "Example data protection policy",
///         "Name": "__example_data_protection_policy",
///         "Statement": [{
///             "DataDirection": "Inbound",
///             "DataIdentifier": ["arn:aws:dataprotection::aws:data-identifier/EmailAddress"],
///             "Operation": {
///                 "Deny": {},
///             },
///             "Principal": ["*"],
///             "Sid": "__deny_statement_11ba9d96",
///         }],
///         "Version": "2021-06-01",
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
///     var example = new Aws.Sns.Topic("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleDataProtectionPolicy = new Aws.Sns.DataProtectionPolicy("example", new()
///     {
///         Arn = example.Arn,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Description"] = "Example data protection policy",
///             ["Name"] = "__example_data_protection_policy",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["DataDirection"] = "Inbound",
///                     ["DataIdentifier"] = new[]
///                     {
///                         "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
///                     },
///                     ["Operation"] = new Dictionary<string, object?>
///                     {
///                         ["Deny"] = new Dictionary<string, object?>
///                         {
///                         },
///                     },
///                     ["Principal"] = new[]
///                     {
///                         "*",
///                     },
///                     ["Sid"] = "__deny_statement_11ba9d96",
///                 },
///             },
///             ["Version"] = "2021-06-01",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sns.NewTopic(ctx, "example", &sns.TopicArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Description": "Example data protection policy",
/// 			"Name":        "__example_data_protection_policy",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"DataDirection": "Inbound",
/// 					"DataIdentifier": []string{
/// 						"arn:aws:dataprotection::aws:data-identifier/EmailAddress",
/// 					},
/// 					"Operation": map[string]interface{}{
/// 						"Deny": map[string]interface{}{},
/// 					},
/// 					"Principal": []string{
/// 						"*",
/// 					},
/// 					"Sid": "__deny_statement_11ba9d96",
/// 				},
/// 			},
/// 			"Version": "2021-06-01",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = sns.NewDataProtectionPolicy(ctx, "example", &sns.DataProtectionPolicyArgs{
/// 			Arn:    example.Arn,
/// 			Policy: pulumi.String(json0),
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
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.sns.DataProtectionPolicy;
/// import com.pulumi.aws.sns.DataProtectionPolicyArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleDataProtectionPolicy = new DataProtectionPolicy("exampleDataProtectionPolicy", DataProtectionPolicyArgs.builder()
///             .arn(example.arn())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Description", "Example data protection policy"),
///                     jsonProperty("Name", "__example_data_protection_policy"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("DataDirection", "Inbound"),
///                         jsonProperty("DataIdentifier", jsonArray("arn:aws:dataprotection::aws:data-identifier/EmailAddress")),
///                         jsonProperty("Operation", jsonObject(
///                             jsonProperty("Deny", jsonObject(
///
///                             ))
///                         )),
///                         jsonProperty("Principal", jsonArray("*")),
///                         jsonProperty("Sid", "__deny_statement_11ba9d96")
///                     ))),
///                     jsonProperty("Version", "2021-06-01")
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sns:Topic
///     properties:
///       name: example
///   exampleDataProtectionPolicy:
///     type: aws:sns:DataProtectionPolicy
///     name: example
///     properties:
///       arn: ${example.arn}
///       policy:
///         fn::toJSON:
///           Description: Example data protection policy
///           Name: __example_data_protection_policy
///           Statement:
///             - DataDirection: Inbound
///               DataIdentifier:
///                 - arn:aws:dataprotection::aws:data-identifier/EmailAddress
///               Operation:
///                 Deny: {}
///               Principal:
///                 - '*'
///               Sid: __deny_statement_11ba9d96
///           Version: 2021-06-01
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the SNS topic.
///
///
/// Using `pulumi import`, import SNS Data Protection Topic Policy using the topic ARN. For example:
///
/// ```sh
/// $ pulumi import aws:sns/dataProtectionPolicy:DataProtectionPolicy example arn:aws:sns:us-west-2:123456789012:example
/// ```
class DataProtectionPolicy extends pulumi.CustomResource {
  /// The ARN of the SNS topic
  late final pulumi.Output<String> arn;
  /// The fully-formed AWS policy as JSON. For more information about building AWS IAM policy documents with this provider, see the AWS IAM Policy Document Guide.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [DataProtectionPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataProtectionPolicy]. {@macro pulumi_sns_data_protection_policy_data_protection_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataProtectionPolicy(
    String name, {
    DataProtectionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sns/dataProtectionPolicy:DataProtectionPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [DataProtectionPolicy] resource's state with the given [name] and [id].
  static DataProtectionPolicy get(
    String name,
    pulumi.Input<String> id, {
    DataProtectionPolicyState? state,
  }) {
    return DataProtectionPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataProtectionPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sns/dataProtectionPolicy:DataProtectionPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
