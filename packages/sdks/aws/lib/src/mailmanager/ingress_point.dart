import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_point_args.dart';
import 'ingress_point_ingress_point_configuration.dart';
import 'ingress_point_network_configuration.dart';
import 'ingress_point_state.dart';
import 'ingress_point_timeouts.dart';

/// Manages an AWS SES Mail Manager Ingress Point.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.mailmanager.IngressPoint("example", {
///     name: "example",
///     type: "OPEN",
///     ruleSetId: exampleAwsMailmanagerRuleSet.id,
///     trafficPolicyId: exampleAwsMailmanagerTrafficPolicy.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mailmanager.IngressPoint("example",
///     name="example",
///     type="OPEN",
///     rule_set_id=example_aws_mailmanager_rule_set["id"],
///     traffic_policy_id=example_aws_mailmanager_traffic_policy["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.MailManager.IngressPoint("example", new()
///     {
///         Name = "example",
///         Type = "OPEN",
///         RuleSetId = exampleAwsMailmanagerRuleSet.Id,
///         TrafficPolicyId = exampleAwsMailmanagerTrafficPolicy.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mailmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mailmanager.NewIngressPoint(ctx, "example", &mailmanager.IngressPointArgs{
/// 			Name:            pulumi.String("example"),
/// 			Type:            pulumi.String("OPEN"),
/// 			RuleSetId:       pulumi.Any(exampleAwsMailmanagerRuleSet.Id),
/// 			TrafficPolicyId: pulumi.Any(exampleAwsMailmanagerTrafficPolicy.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_mailmanager_ingresspoint" "example" {
///   name              = "example"
///   type              = "OPEN"
///   rule_set_id       = exampleAwsMailmanagerRuleSet.id
///   traffic_policy_id = exampleAwsMailmanagerTrafficPolicy.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.mailmanager.IngressPoint;
/// import com.pulumi.aws.mailmanager.IngressPointArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new IngressPoint("example", IngressPointArgs.builder()
///             .name("example")
///             .type("OPEN")
///             .ruleSetId(exampleAwsMailmanagerRuleSet.id())
///             .trafficPolicyId(exampleAwsMailmanagerTrafficPolicy.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:mailmanager:IngressPoint
///     properties:
///       name: example
///       type: OPEN
///       ruleSetId: ${exampleAwsMailmanagerRuleSet.id}
///       trafficPolicyId: ${exampleAwsMailmanagerTrafficPolicy.id}
/// ```
///
///
/// ### Authenticated Ingress Point with SMTP Password
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.mailmanager.IngressPoint("example", {
///     name: "example",
///     type: "AUTH",
///     ruleSetId: exampleAwsMailmanagerRuleSet.id,
///     trafficPolicyId: exampleAwsMailmanagerTrafficPolicy.id,
///     ingressPointConfiguration: {
///         smtpPasswordWo: smtpPassword,
///         smtpPasswordWoVersion: 1,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mailmanager.IngressPoint("example",
///     name="example",
///     type="AUTH",
///     rule_set_id=example_aws_mailmanager_rule_set["id"],
///     traffic_policy_id=example_aws_mailmanager_traffic_policy["id"],
///     ingress_point_configuration={
///         "smtp_password_wo": smtp_password,
///         "smtp_password_wo_version": 1,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.MailManager.IngressPoint("example", new()
///     {
///         Name = "example",
///         Type = "AUTH",
///         RuleSetId = exampleAwsMailmanagerRuleSet.Id,
///         TrafficPolicyId = exampleAwsMailmanagerTrafficPolicy.Id,
///         IngressPointConfiguration = new Aws.MailManager.Inputs.IngressPointIngressPointConfigurationArgs
///         {
///             SmtpPasswordWo = smtpPassword,
///             SmtpPasswordWoVersion = 1,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mailmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mailmanager.NewIngressPoint(ctx, "example", &mailmanager.IngressPointArgs{
/// 			Name:            pulumi.String("example"),
/// 			Type:            pulumi.String("AUTH"),
/// 			RuleSetId:       pulumi.Any(exampleAwsMailmanagerRuleSet.Id),
/// 			TrafficPolicyId: pulumi.Any(exampleAwsMailmanagerTrafficPolicy.Id),
/// 			IngressPointConfiguration: &mailmanager.IngressPointIngressPointConfigurationArgs{
/// 				SmtpPasswordWo:        pulumi.Any(smtpPassword),
/// 				SmtpPasswordWoVersion: pulumi.Int(1),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_mailmanager_ingresspoint" "example" {
///   name              = "example"
///   type              = "AUTH"
///   rule_set_id       = exampleAwsMailmanagerRuleSet.id
///   traffic_policy_id = exampleAwsMailmanagerTrafficPolicy.id
///   ingress_point_configuration = {
///     smtp_password_wo         = smtpPassword
///     smtp_password_wo_version = 1
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.mailmanager.IngressPoint;
/// import com.pulumi.aws.mailmanager.IngressPointArgs;
/// import com.pulumi.aws.mailmanager.inputs.IngressPointIngressPointConfigurationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new IngressPoint("example", IngressPointArgs.builder()
///             .name("example")
///             .type("AUTH")
///             .ruleSetId(exampleAwsMailmanagerRuleSet.id())
///             .trafficPolicyId(exampleAwsMailmanagerTrafficPolicy.id())
///             .ingressPointConfiguration(IngressPointIngressPointConfigurationArgs.builder()
///                 .smtpPasswordWo(smtpPassword)
///                 .smtpPasswordWoVersion(1)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:mailmanager:IngressPoint
///     properties:
///       name: example
///       type: AUTH
///       ruleSetId: ${exampleAwsMailmanagerRuleSet.id}
///       trafficPolicyId: ${exampleAwsMailmanagerTrafficPolicy.id}
///       ingressPointConfiguration:
///         smtpPasswordWo: ${smtpPassword}
///         smtpPasswordWoVersion: 1
/// ```
///
///
/// ### Private Network Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.mailmanager.IngressPoint("example", {
///     name: "example",
///     type: "OPEN",
///     ruleSetId: exampleAwsMailmanagerRuleSet.id,
///     trafficPolicyId: exampleAwsMailmanagerTrafficPolicy.id,
///     networkConfiguration: {
///         privateNetworkConfiguration: {
///             vpcEndpointId: exampleAwsVpcEndpoint.id,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mailmanager.IngressPoint("example",
///     name="example",
///     type="OPEN",
///     rule_set_id=example_aws_mailmanager_rule_set["id"],
///     traffic_policy_id=example_aws_mailmanager_traffic_policy["id"],
///     network_configuration={
///         "private_network_configuration": {
///             "vpc_endpoint_id": example_aws_vpc_endpoint["id"],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.MailManager.IngressPoint("example", new()
///     {
///         Name = "example",
///         Type = "OPEN",
///         RuleSetId = exampleAwsMailmanagerRuleSet.Id,
///         TrafficPolicyId = exampleAwsMailmanagerTrafficPolicy.Id,
///         NetworkConfiguration = new Aws.MailManager.Inputs.IngressPointNetworkConfigurationArgs
///         {
///             PrivateNetworkConfiguration = new Aws.MailManager.Inputs.IngressPointNetworkConfigurationPrivateNetworkConfigurationArgs
///             {
///                 VpcEndpointId = exampleAwsVpcEndpoint.Id,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mailmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mailmanager.NewIngressPoint(ctx, "example", &mailmanager.IngressPointArgs{
/// 			Name:            pulumi.String("example"),
/// 			Type:            pulumi.String("OPEN"),
/// 			RuleSetId:       pulumi.Any(exampleAwsMailmanagerRuleSet.Id),
/// 			TrafficPolicyId: pulumi.Any(exampleAwsMailmanagerTrafficPolicy.Id),
/// 			NetworkConfiguration: &mailmanager.IngressPointNetworkConfigurationArgs{
/// 				PrivateNetworkConfiguration: &mailmanager.IngressPointNetworkConfigurationPrivateNetworkConfigurationArgs{
/// 					VpcEndpointId: pulumi.Any(exampleAwsVpcEndpoint.Id),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_mailmanager_ingresspoint" "example" {
///   name              = "example"
///   type              = "OPEN"
///   rule_set_id       = exampleAwsMailmanagerRuleSet.id
///   traffic_policy_id = exampleAwsMailmanagerTrafficPolicy.id
///   network_configuration = {
///     private_network_configuration = {
///       vpc_endpoint_id = exampleAwsVpcEndpoint.id
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.mailmanager.IngressPoint;
/// import com.pulumi.aws.mailmanager.IngressPointArgs;
/// import com.pulumi.aws.mailmanager.inputs.IngressPointNetworkConfigurationArgs;
/// import com.pulumi.aws.mailmanager.inputs.IngressPointNetworkConfigurationPrivateNetworkConfigurationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new IngressPoint("example", IngressPointArgs.builder()
///             .name("example")
///             .type("OPEN")
///             .ruleSetId(exampleAwsMailmanagerRuleSet.id())
///             .trafficPolicyId(exampleAwsMailmanagerTrafficPolicy.id())
///             .networkConfiguration(IngressPointNetworkConfigurationArgs.builder()
///                 .privateNetworkConfiguration(IngressPointNetworkConfigurationPrivateNetworkConfigurationArgs.builder()
///                     .vpcEndpointId(exampleAwsVpcEndpoint.id())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:mailmanager:IngressPoint
///     properties:
///       name: example
///       type: OPEN
///       ruleSetId: ${exampleAwsMailmanagerRuleSet.id}
///       trafficPolicyId: ${exampleAwsMailmanagerTrafficPolicy.id}
///       networkConfiguration:
///         privateNetworkConfiguration:
///           vpcEndpointId: ${exampleAwsVpcEndpoint.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) Identifier of the Ingress Point.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SES Mail Manager Ingress Point using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:mailmanager/ingressPoint:IngressPoint example ingress_point-id-12345678
/// ```
class IngressPoint extends pulumi.CustomResource {
  /// DNS A record that identifies your ingress endpoint for email clients.
  late final pulumi.Output<String> aRecord;
  /// ARN of the Ingress Point.
  late final pulumi.Output<String> arn;
  /// Timestamp of when the ingress point was created.
  late final pulumi.Output<String> createdTimestamp;
  /// Configuration used to authenticate with the ingress point. See `ingressPointConfiguration` Block for details.
  late final pulumi.Output<IngressPointIngressPointConfiguration?> ingressPointConfiguration;
  /// Timestamp of when the ingress point was last updated.
  late final pulumi.Output<String> lastUpdatedTimestamp;
  /// Name of the ingress point.
  late final pulumi.Output<String> name;
  /// Network configuration for the ingress point. See `networkConfiguration` Block for details. Changing this value forces a new resource.
  late final pulumi.Output<IngressPointNetworkConfiguration?> networkConfiguration;
  /// Region where this resource is managed.
  late final pulumi.Output<String> region;
  /// Identifier of the rule set applied to the ingress point.
  late final pulumi.Output<String> ruleSetId;
  /// Status of the ingress point.
  late final pulumi.Output<String> status;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<IngressPointTimeouts?> timeouts;
  /// TLS policy for the ingress point. Valid values are `REQUIRED`, `OPTIONAL`, and `FIPS`.
  late final pulumi.Output<String> tlsPolicy;
  /// Identifier of the traffic policy applied to the ingress point.
  late final pulumi.Output<String> trafficPolicyId;
  /// Type of the ingress point. Valid values are `OPEN`, `AUTH`, and `MTLS`. Changing this value forces a new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  /// Creates a new [IngressPoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IngressPoint]. {@macro pulumi_mailmanager_ingress_point_ingress_point_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IngressPoint(
    String name, {
    IngressPointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mailmanager/ingressPoint:IngressPoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aRecord = registerOutput<String>('aRecord');
    arn = registerOutput<String>('arn');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    ingressPointConfiguration = registerOutput<IngressPointIngressPointConfiguration?>('ingressPointConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngressPointIngressPointConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastUpdatedTimestamp = registerOutput<String>('lastUpdatedTimestamp');
    this.name = registerOutput<String>('name');
    networkConfiguration = registerOutput<IngressPointNetworkConfiguration?>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngressPointNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    ruleSetId = registerOutput<String>('ruleSetId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<IngressPointTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngressPointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tlsPolicy = registerOutput<String>('tlsPolicy');
    trafficPolicyId = registerOutput<String>('trafficPolicyId');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [IngressPoint] resource's state with the given [name] and [id].
  static IngressPoint get(
    String name,
    pulumi.Input<String> id, {
    IngressPointState? state,
  }) {
    return IngressPoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IngressPoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mailmanager/ingressPoint:IngressPoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aRecord = registerOutput<String>('aRecord');
    arn = registerOutput<String>('arn');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    ingressPointConfiguration = registerOutput<IngressPointIngressPointConfiguration?>('ingressPointConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngressPointIngressPointConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastUpdatedTimestamp = registerOutput<String>('lastUpdatedTimestamp');
    this.name = registerOutput<String>('name');
    networkConfiguration = registerOutput<IngressPointNetworkConfiguration?>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngressPointNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    ruleSetId = registerOutput<String>('ruleSetId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<IngressPointTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IngressPointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tlsPolicy = registerOutput<String>('tlsPolicy');
    trafficPolicyId = registerOutput<String>('trafficPolicyId');
    type = registerOutput<String>('type');
  }
}
