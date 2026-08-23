import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contact_args.dart';
import 'get_contact_channel_args.dart';
import 'get_contact_channel_result.dart';
import 'get_contact_result.dart';
import 'get_plan_args.dart';
import 'get_plan_result.dart';

/// Data source for managing an AWS SSM Contact.
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
/// const example = aws.ssmcontacts.getContact({
///     arn: "arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssmcontacts.get_contact(arn="arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsmContacts.GetContact.Invoke(new()
///     {
///         Arn = "arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias",
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
/// 		_, err := ssmcontacts.LookupContact(ctx, &ssmcontacts.LookupContactArgs{
/// 			Arn: "arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias",
/// 		}, nil)
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
/// data "aws_ssmcontacts_getcontact" "example" {
///   arn = "arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssmcontacts.SsmcontactsFunctions;
/// import com.pulumi.aws.ssmcontacts.inputs.GetContactArgs;
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
///         final var example = SsmcontactsFunctions.getContact(GetContactArgs.builder()
///             .arn("arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssmcontacts:getContact
///       arguments:
///         arn: arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssmcontacts_get_contact_get_contact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContactResult> getContact(
  GetContactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssmcontacts/getContact:getContact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContactResult.fromMap(result);
}

/// Data source for managing an AWS SSM Contacts Contact Channel.
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
/// const example = aws.ssmcontacts.getContactChannel({
///     arn: "arn:aws:ssm-contacts:us-west-2:123456789012:contact-channel/example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssmcontacts.get_contact_channel(arn="arn:aws:ssm-contacts:us-west-2:123456789012:contact-channel/example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsmContacts.GetContactChannel.Invoke(new()
///     {
///         Arn = "arn:aws:ssm-contacts:us-west-2:123456789012:contact-channel/example",
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
/// 		_, err := ssmcontacts.LookupContactChannel(ctx, &ssmcontacts.LookupContactChannelArgs{
/// 			Arn: "arn:aws:ssm-contacts:us-west-2:123456789012:contact-channel/example",
/// 		}, nil)
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
/// data "aws_ssmcontacts_getcontactchannel" "example" {
///   arn = "arn:aws:ssm-contacts:us-west-2:123456789012:contact-channel/example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssmcontacts.SsmcontactsFunctions;
/// import com.pulumi.aws.ssmcontacts.inputs.GetContactChannelArgs;
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
///         final var example = SsmcontactsFunctions.getContactChannel(GetContactChannelArgs.builder()
///             .arn("arn:aws:ssm-contacts:us-west-2:123456789012:contact-channel/example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssmcontacts:getContactChannel
///       arguments:
///         arn: arn:aws:ssm-contacts:us-west-2:123456789012:contact-channel/example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssmcontacts_get_contact_channel_get_contact_channel_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContactChannelResult> getContactChannel(
  GetContactChannelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssmcontacts/getContactChannel:getContactChannel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContactChannelResult.fromMap(result);
}

/// Data source for managing a Plan of an AWS SSM Contact.
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
/// const test = aws.ssmcontacts.getPlan({
///     contactId: "arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ssmcontacts.get_plan(contact_id="arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.SsmContacts.GetPlan.Invoke(new()
///     {
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
/// 		_, err := ssmcontacts.LookupPlan(ctx, &ssmcontacts.LookupPlanArgs{
/// 			ContactId: "arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias",
/// 		}, nil)
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
/// data "aws_ssmcontacts_getplan" "test" {
///   contact_id = "arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssmcontacts.SsmcontactsFunctions;
/// import com.pulumi.aws.ssmcontacts.inputs.GetPlanArgs;
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
///         final var test = SsmcontactsFunctions.getPlan(GetPlanArgs.builder()
///             .contactId("arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:ssmcontacts:getPlan
///       arguments:
///         contactId: arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssmcontacts_get_plan_get_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPlanResult> getPlan(
  GetPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssmcontacts/getPlan:getPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPlanResult.fromMap(result);
}
