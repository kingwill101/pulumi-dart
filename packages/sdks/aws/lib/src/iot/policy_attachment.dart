import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_attachment_args.dart';
import 'policy_attachment_state.dart';

/// Provides an IoT policy attachment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const pubsub = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: ["iot:*"],
///         resources: ["*"],
///     }],
/// });
/// const pubsubPolicy = new aws.iot.Policy("pubsub", {
///     name: "PubSubToAnyTopic",
///     policy: pubsub.then(pubsub => pubsub.json),
/// });
/// const cert = new aws.iot.Certificate("cert", {
///     csr: std.file({
///         input: "csr.pem",
///     }).then(invoke => invoke.result),
///     active: true,
/// });
/// const att = new aws.iot.PolicyAttachment("att", {
///     policy: pubsubPolicy.name,
///     target: cert.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// pubsub = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": ["iot:*"],
///     "resources": ["*"],
/// }])
/// pubsub_policy = aws.iot.Policy("pubsub",
///     name="PubSubToAnyTopic",
///     policy=pubsub.json)
/// cert = aws.iot.Certificate("cert",
///     csr=std.file(input="csr.pem").result,
///     active=True)
/// att = aws.iot.PolicyAttachment("att",
///     policy=pubsub_policy.name,
///     target=cert.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pubsub = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "iot:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var pubsubPolicy = new Aws.Iot.Policy("pubsub", new()
///     {
///         Name = "PubSubToAnyTopic",
///         PolicyDocument = pubsub.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var cert = new Aws.Iot.Certificate("cert", new()
///     {
///         Csr = Std.File.Invoke(new()
///         {
///             Input = "csr.pem",
///         }).Apply(invoke => invoke.Result),
///         Active = true,
///     });
///
///     var att = new Aws.Iot.PolicyAttachment("att", new()
///     {
///         Policy = pubsubPolicy.Name,
///         Target = cert.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		pubsub, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"iot:*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pubsubPolicy, err := iot.NewPolicy(ctx, "pubsub", &iot.PolicyArgs{
/// 			Name:   pulumi.String("PubSubToAnyTopic"),
/// 			Policy: pulumi.String(pubsub.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "csr.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cert, err := iot.NewCertificate(ctx, "cert", &iot.CertificateArgs{
/// 			Csr:    pulumi.String(invokeFile.Result),
/// 			Active: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iot.NewPolicyAttachment(ctx, "att", &iot.PolicyAttachmentArgs{
/// 			Policy: pubsubPolicy.Name,
/// 			Target: cert.Arn,
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iot.Policy;
/// import com.pulumi.aws.iot.PolicyArgs;
/// import com.pulumi.aws.iot.Certificate;
/// import com.pulumi.aws.iot.CertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.aws.iot.PolicyAttachment;
/// import com.pulumi.aws.iot.PolicyAttachmentArgs;
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
///         final var pubsub = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions("iot:*")
///                 .resources("*")
///                 .build())
///             .build());
///
///         var pubsubPolicy = new Policy("pubsubPolicy", PolicyArgs.builder()
///             .name("PubSubToAnyTopic")
///             .policy(pubsub.json())
///             .build());
///
///         var cert = new Certificate("cert", CertificateArgs.builder()
///             .csr(StdFunctions.file(FileArgs.builder()
///                 .input("csr.pem")
///                 .build()).result())
///             .active(true)
///             .build());
///
///         var att = new PolicyAttachment("att", PolicyAttachmentArgs.builder()
///             .policy(pubsubPolicy.name())
///             .target(cert.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pubsubPolicy:
///     type: aws:iot:Policy
///     name: pubsub
///     properties:
///       name: PubSubToAnyTopic
///       policy: ${pubsub.json}
///   cert:
///     type: aws:iot:Certificate
///     properties:
///       csr:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: csr.pem
///           return: result
///       active: true
///   att:
///     type: aws:iot:PolicyAttachment
///     properties:
///       policy: ${pubsubPolicy.name}
///       target: ${cert.arn}
/// variables:
///   pubsub:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - iot:*
///             resources:
///               - '*'
/// ```
class PolicyAttachment extends pulumi.CustomResource {
  /// The name of the policy to attach.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The identity to which the policy is attached.
  late final pulumi.Output<String> target;

  /// Creates a new [PolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyAttachment]. {@macro pulumi_iot_policy_attachment_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyAttachment(
    String name, {
    PolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:iot/policyAttachment:PolicyAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    target = registerOutput<String>('target');
  }

  /// Gets an existing [PolicyAttachment] resource's state with the given [name] and [id].
  static PolicyAttachment get(
    String name,
    pulumi.Input<String> id, {
    PolicyAttachmentState? state,
  }) {
    return PolicyAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PolicyAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:iot/policyAttachment:PolicyAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    target = registerOutput<String>('target');
  }
}
