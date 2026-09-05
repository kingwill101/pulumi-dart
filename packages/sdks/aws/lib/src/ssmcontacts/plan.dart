import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_args.dart';
import 'plan_stage.dart';
import 'plan_state.dart';

/// Resource for managing an AWS SSM Contact Plan.
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
/// const example = new aws.ssmcontacts.Plan("example", {
///     stages: [{
///         durationInMinutes: 1,
///     }],
///     contactId: "arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssmcontacts.Plan("example",
///     stages=[{
///         "duration_in_minutes": 1,
///     }],
///     contact_id="arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SsmContacts.Plan("example", new()
///     {
///         Stages = new[]
///         {
///             new Aws.SsmContacts.Inputs.PlanStageArgs
///             {
///                 DurationInMinutes = 1,
///             },
///         },
///         ContactId = "arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmcontacts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssmcontacts.NewPlan(ctx, "example", &ssmcontacts.PlanArgs{
/// 			Stages: ssmcontacts.PlanStageArray{
/// 				&ssmcontacts.PlanStageArgs{
/// 					DurationInMinutes: pulumi.Int(1),
/// 				},
/// 			},
/// 			ContactId: pulumi.String("arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias"),
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
/// resource "aws_ssmcontacts_plan" "example" {
///   stages {
///     duration_in_minutes = 1
///   }
///   contact_id = "arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssmcontacts.Plan;
/// import com.pulumi.aws.ssmcontacts.PlanArgs;
/// import com.pulumi.aws.ssmcontacts.inputs.PlanStageArgs;
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
///         var example = new Plan("example", PlanArgs.builder()
///             .stages(PlanStageArgs.builder()
///                 .durationInMinutes(1)
///                 .build())
///             .contactId("arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssmcontacts:Plan
///     properties:
///       stages:
///         - durationInMinutes: 1
///       contactId: arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias
/// ```
///
///
/// ### Usage with SSM Contact
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const contact = new aws.ssmcontacts.Contact("contact", {
///     alias: "alias",
///     type: "PERSONAL",
/// });
/// const plan = new aws.ssmcontacts.Plan("plan", {
///     stages: [{
///         durationInMinutes: 1,
///     }],
///     contactId: contact.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// contact = aws.ssmcontacts.Contact("contact",
///     alias="alias",
///     type="PERSONAL")
/// plan = aws.ssmcontacts.Plan("plan",
///     stages=[{
///         "duration_in_minutes": 1,
///     }],
///     contact_id=contact.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var contact = new Aws.SsmContacts.Contact("contact", new()
///     {
///         Alias = "alias",
///         Type = "PERSONAL",
///     });
///
///     var plan = new Aws.SsmContacts.Plan("plan", new()
///     {
///         Stages = new[]
///         {
///             new Aws.SsmContacts.Inputs.PlanStageArgs
///             {
///                 DurationInMinutes = 1,
///             },
///         },
///         ContactId = contact.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmcontacts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		contact, err := ssmcontacts.NewContact(ctx, "contact", &ssmcontacts.ContactArgs{
/// 			Alias: pulumi.String("alias"),
/// 			Type:  pulumi.String("PERSONAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssmcontacts.NewPlan(ctx, "plan", &ssmcontacts.PlanArgs{
/// 			Stages: ssmcontacts.PlanStageArray{
/// 				&ssmcontacts.PlanStageArgs{
/// 					DurationInMinutes: pulumi.Int(1),
/// 				},
/// 			},
/// 			ContactId: contact.Arn,
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
/// resource "aws_ssmcontacts_contact" "contact" {
///   alias = "alias"
///   type  = "PERSONAL"
/// }
/// resource "aws_ssmcontacts_plan" "plan" {
///   stages {
///     duration_in_minutes = 1
///   }
///   contact_id = aws_ssmcontacts_contact.contact.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssmcontacts.Contact;
/// import com.pulumi.aws.ssmcontacts.ContactArgs;
/// import com.pulumi.aws.ssmcontacts.Plan;
/// import com.pulumi.aws.ssmcontacts.PlanArgs;
/// import com.pulumi.aws.ssmcontacts.inputs.PlanStageArgs;
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
///         var contact = new Contact("contact", ContactArgs.builder()
///             .alias("alias")
///             .type("PERSONAL")
///             .build());
///
///         var plan = new Plan("plan", PlanArgs.builder()
///             .stages(PlanStageArgs.builder()
///                 .durationInMinutes(1)
///                 .build())
///             .contactId(contact.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   contact:
///     type: aws:ssmcontacts:Contact
///     properties:
///       alias: alias
///       type: PERSONAL
///   plan:
///     type: aws:ssmcontacts:Plan
///     properties:
///       stages:
///         - durationInMinutes: 1
///       contactId: ${contact.arn}
/// ```
///
///
/// ### Usage With All Fields
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const escalationPlan = new aws.ssmcontacts.Contact("escalation_plan", {
///     alias: "escalation-plan-alias",
///     type: "ESCALATION",
/// });
/// const contactOne = new aws.ssmcontacts.Contact("contact_one", {
///     alias: "alias",
///     type: "PERSONAL",
/// });
/// const contactTwo = new aws.ssmcontacts.Contact("contact_two", {
///     alias: "alias",
///     type: "PERSONAL",
/// });
/// const test = new aws.ssmcontacts.Plan("test", {
///     stages: [{
///         targets: [
///             {
///                 contactTargetInfo: {
///                     isEssential: false,
///                     contactId: contactOne.arn,
///                 },
///             },
///             {
///                 contactTargetInfo: {
///                     isEssential: true,
///                     contactId: contactTwo.arn,
///                 },
///             },
///             {
///                 channelTargetInfo: {
///                     retryIntervalInMinutes: 2,
///                     contactChannelId: channel.arn,
///                 },
///             },
///         ],
///         durationInMinutes: 0,
///     }],
///     contactId: escalationPlan.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// escalation_plan = aws.ssmcontacts.Contact("escalation_plan",
///     alias="escalation-plan-alias",
///     type="ESCALATION")
/// contact_one = aws.ssmcontacts.Contact("contact_one",
///     alias="alias",
///     type="PERSONAL")
/// contact_two = aws.ssmcontacts.Contact("contact_two",
///     alias="alias",
///     type="PERSONAL")
/// test = aws.ssmcontacts.Plan("test",
///     stages=[{
///         "targets": [
///             {
///                 "contact_target_info": {
///                     "is_essential": False,
///                     "contact_id": contact_one.arn,
///                 },
///             },
///             {
///                 "contact_target_info": {
///                     "is_essential": True,
///                     "contact_id": contact_two.arn,
///                 },
///             },
///             {
///                 "channel_target_info": {
///                     "retry_interval_in_minutes": 2,
///                     "contact_channel_id": channel["arn"],
///                 },
///             },
///         ],
///         "duration_in_minutes": 0,
///     }],
///     contact_id=escalation_plan.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var escalationPlan = new Aws.SsmContacts.Contact("escalation_plan", new()
///     {
///         Alias = "escalation-plan-alias",
///         Type = "ESCALATION",
///     });
///
///     var contactOne = new Aws.SsmContacts.Contact("contact_one", new()
///     {
///         Alias = "alias",
///         Type = "PERSONAL",
///     });
///
///     var contactTwo = new Aws.SsmContacts.Contact("contact_two", new()
///     {
///         Alias = "alias",
///         Type = "PERSONAL",
///     });
///
///     var test = new Aws.SsmContacts.Plan("test", new()
///     {
///         Stages = new[]
///         {
///             new Aws.SsmContacts.Inputs.PlanStageArgs
///             {
///                 Targets = new[]
///                 {
///                     new Aws.SsmContacts.Inputs.PlanStageTargetArgs
///                     {
///                         ContactTargetInfo = new Aws.SsmContacts.Inputs.PlanStageTargetContactTargetInfoArgs
///                         {
///                             IsEssential = false,
///                             ContactId = contactOne.Arn,
///                         },
///                     },
///                     new Aws.SsmContacts.Inputs.PlanStageTargetArgs
///                     {
///                         ContactTargetInfo = new Aws.SsmContacts.Inputs.PlanStageTargetContactTargetInfoArgs
///                         {
///                             IsEssential = true,
///                             ContactId = contactTwo.Arn,
///                         },
///                     },
///                     new Aws.SsmContacts.Inputs.PlanStageTargetArgs
///                     {
///                         ChannelTargetInfo = new Aws.SsmContacts.Inputs.PlanStageTargetChannelTargetInfoArgs
///                         {
///                             RetryIntervalInMinutes = 2,
///                             ContactChannelId = channel.Arn,
///                         },
///                     },
///                 },
///                 DurationInMinutes = 0,
///             },
///         },
///         ContactId = escalationPlan.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmcontacts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		escalationPlan, err := ssmcontacts.NewContact(ctx, "escalation_plan", &ssmcontacts.ContactArgs{
/// 			Alias: pulumi.String("escalation-plan-alias"),
/// 			Type:  pulumi.String("ESCALATION"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		contactOne, err := ssmcontacts.NewContact(ctx, "contact_one", &ssmcontacts.ContactArgs{
/// 			Alias: pulumi.String("alias"),
/// 			Type:  pulumi.String("PERSONAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		contactTwo, err := ssmcontacts.NewContact(ctx, "contact_two", &ssmcontacts.ContactArgs{
/// 			Alias: pulumi.String("alias"),
/// 			Type:  pulumi.String("PERSONAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssmcontacts.NewPlan(ctx, "test", &ssmcontacts.PlanArgs{
/// 			Stages: ssmcontacts.PlanStageArray{
/// 				&ssmcontacts.PlanStageArgs{
/// 					Targets: ssmcontacts.PlanStageTargetArray{
/// 						&ssmcontacts.PlanStageTargetArgs{
/// 							ContactTargetInfo: &ssmcontacts.PlanStageTargetContactTargetInfoArgs{
/// 								IsEssential: pulumi.Bool(false),
/// 								ContactId:   contactOne.Arn,
/// 							},
/// 						},
/// 						&ssmcontacts.PlanStageTargetArgs{
/// 							ContactTargetInfo: &ssmcontacts.PlanStageTargetContactTargetInfoArgs{
/// 								IsEssential: pulumi.Bool(true),
/// 								ContactId:   contactTwo.Arn,
/// 							},
/// 						},
/// 						&ssmcontacts.PlanStageTargetArgs{
/// 							ChannelTargetInfo: &ssmcontacts.PlanStageTargetChannelTargetInfoArgs{
/// 								RetryIntervalInMinutes: pulumi.Int(2),
/// 								ContactChannelId:       pulumi.Any(channel.Arn),
/// 							},
/// 						},
/// 					},
/// 					DurationInMinutes: pulumi.Int(0),
/// 				},
/// 			},
/// 			ContactId: escalationPlan.Arn,
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
/// resource "aws_ssmcontacts_contact" "escalation_plan" {
///   alias = "escalation-plan-alias"
///   type  = "ESCALATION"
/// }
/// resource "aws_ssmcontacts_contact" "contact_one" {
///   alias = "alias"
///   type  = "PERSONAL"
/// }
/// resource "aws_ssmcontacts_contact" "contact_two" {
///   alias = "alias"
///   type  = "PERSONAL"
/// }
/// resource "aws_ssmcontacts_plan" "test" {
///   stages {
///     targets {
///       contact_target_info = {
///         is_essential = false
///         contact_id   = aws_ssmcontacts_contact.contact_one.arn
///       }
///     }
///     targets {
///       contact_target_info = {
///         is_essential = true
///         contact_id   = aws_ssmcontacts_contact.contact_two.arn
///       }
///     }
///     targets {
///       channel_target_info = {
///         retry_interval_in_minutes = 2
///         contact_channel_id        = channel.arn
///       }
///     }
///     duration_in_minutes = 0
///   }
///   contact_id = aws_ssmcontacts_contact.escalation_plan.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssmcontacts.Contact;
/// import com.pulumi.aws.ssmcontacts.ContactArgs;
/// import com.pulumi.aws.ssmcontacts.Plan;
/// import com.pulumi.aws.ssmcontacts.PlanArgs;
/// import com.pulumi.aws.ssmcontacts.inputs.PlanStageArgs;
/// import com.pulumi.aws.ssmcontacts.inputs.PlanStageTargetArgs;
/// import com.pulumi.aws.ssmcontacts.inputs.PlanStageTargetContactTargetInfoArgs;
/// import com.pulumi.aws.ssmcontacts.inputs.PlanStageTargetChannelTargetInfoArgs;
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
///         var escalationPlan = new Contact("escalationPlan", ContactArgs.builder()
///             .alias("escalation-plan-alias")
///             .type("ESCALATION")
///             .build());
///
///         var contactOne = new Contact("contactOne", ContactArgs.builder()
///             .alias("alias")
///             .type("PERSONAL")
///             .build());
///
///         var contactTwo = new Contact("contactTwo", ContactArgs.builder()
///             .alias("alias")
///             .type("PERSONAL")
///             .build());
///
///         var test = new Plan("test", PlanArgs.builder()
///             .stages(PlanStageArgs.builder()
///                 .targets(
///                     PlanStageTargetArgs.builder()
///                         .contactTargetInfo(PlanStageTargetContactTargetInfoArgs.builder()
///                             .isEssential(false)
///                             .contactId(contactOne.arn())
///                             .build())
///                         .build(),
///                     PlanStageTargetArgs.builder()
///                         .contactTargetInfo(PlanStageTargetContactTargetInfoArgs.builder()
///                             .isEssential(true)
///                             .contactId(contactTwo.arn())
///                             .build())
///                         .build(),
///                     PlanStageTargetArgs.builder()
///                         .channelTargetInfo(PlanStageTargetChannelTargetInfoArgs.builder()
///                             .retryIntervalInMinutes(2)
///                             .contactChannelId(channel.arn())
///                             .build())
///                         .build())
///                 .durationInMinutes(0)
///                 .build())
///             .contactId(escalationPlan.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   escalationPlan:
///     type: aws:ssmcontacts:Contact
///     name: escalation_plan
///     properties:
///       alias: escalation-plan-alias
///       type: ESCALATION
///   contactOne:
///     type: aws:ssmcontacts:Contact
///     name: contact_one
///     properties:
///       alias: alias
///       type: PERSONAL
///   contactTwo:
///     type: aws:ssmcontacts:Contact
///     name: contact_two
///     properties:
///       alias: alias
///       type: PERSONAL
///   test:
///     type: aws:ssmcontacts:Plan
///     properties:
///       stages:
///         - targets:
///             - contactTargetInfo:
///                 isEssential: false
///                 contactId: ${contactOne.arn}
///             - contactTargetInfo:
///                 isEssential: true
///                 contactId: ${contactTwo.arn}
///             - channelTargetInfo:
///                 retryIntervalInMinutes: 2
///                 contactChannelId: ${channel.arn}
///           durationInMinutes: 0
///       contactId: ${escalationPlan.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SSM Contact Plan using the Contact ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ssmcontacts/plan:Plan example {ARNValue}
/// ```
class Plan extends pulumi.CustomResource {
  /// The ARN of the contact or escalation plan.
  late final pulumi.Output<String> contactId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// One or more configuration blocks for specifying a list of stages that the escalation plan or engagement plan uses to engage contacts and contact methods. See Stage below for more details.
  late final pulumi.Output<List<PlanStage>> stages;

  /// Creates a new [Plan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Plan]. {@macro pulumi_ssmcontacts_plan_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Plan(
    String name, {
    PlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssmcontacts/plan:Plan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    contactId = registerOutput<String>('contactId');
    region = registerOutput<String>('region');
    stages = registerOutput<List<PlanStage>>('stages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanStage>(guardedValue, (value) => PlanStage.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Plan] resource's state with the given [name] and [id].
  static Plan get(
    String name,
    pulumi.Input<String> id, {
    PlanState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Plan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Plan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssmcontacts/plan:Plan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    contactId = registerOutput<String>('contactId');
    region = registerOutput<String>('region');
    stages = registerOutput<List<PlanStage>>('stages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanStage>(guardedValue, (value) => PlanStage.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Plan] resource.
  Plan.reference(String urn)
    : super(
        'aws:ssmcontacts/plan:Plan',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    contactId = registerOutput<String>('contactId');
    region = registerOutput<String>('region');
    stages = registerOutput<List<PlanStage>>('stages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanStage>(guardedValue, (value) => PlanStage.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
