import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_active_receipt_rule_set_args.dart';
import 'get_active_receipt_rule_set_result.dart';
import 'get_domain_identity_args.dart';
import 'get_domain_identity_result.dart';
import 'get_email_identity_args.dart';
import 'get_email_identity_result.dart';

/// Retrieve the active SES receipt rule set
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = aws.ses.getActiveReceiptRuleSet({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ses.get_active_receipt_rule_set()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = Aws.Ses.GetActiveReceiptRuleSet.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ses.LookupActiveReceiptRuleSet(ctx, &ses.LookupActiveReceiptRuleSetArgs{}, nil)
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
/// data "aws_ses_getactivereceiptruleset" "main" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ses.SesFunctions;
/// import com.pulumi.aws.ses.inputs.GetActiveReceiptRuleSetArgs;
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
///         final var main = SesFunctions.getActiveReceiptRuleSet(GetActiveReceiptRuleSetArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   main:
///     fn::invoke:
///       function: aws:ses:getActiveReceiptRuleSet
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ses_get_active_receipt_rule_set_get_active_receipt_rule_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetActiveReceiptRuleSetResult> getActiveReceiptRuleSet(
  GetActiveReceiptRuleSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ses/getActiveReceiptRuleSet:getActiveReceiptRuleSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetActiveReceiptRuleSetResult.fromMap(result);
}

pulumi.Output<GetActiveReceiptRuleSetResult> getActiveReceiptRuleSetOutput(
  GetActiveReceiptRuleSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:ses/getActiveReceiptRuleSet:getActiveReceiptRuleSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetActiveReceiptRuleSetResult.fromMap);
}

/// Retrieve the SES domain identity
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ses.getDomainIdentity({
///     domain: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ses.get_domain_identity(domain="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ses.GetDomainIdentity.Invoke(new()
///     {
///         Domain = "example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ses.LookupDomainIdentity(ctx, &ses.LookupDomainIdentityArgs{
/// 			Domain: "example.com",
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
/// data "aws_ses_getdomainidentity" "example" {
///   domain = "example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ses.SesFunctions;
/// import com.pulumi.aws.ses.inputs.GetDomainIdentityArgs;
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
///         final var example = SesFunctions.getDomainIdentity(GetDomainIdentityArgs.builder()
///             .domain("example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ses:getDomainIdentity
///       arguments:
///         domain: example.com
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ses_get_domain_identity_get_domain_identity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainIdentityResult> getDomainIdentity(
  GetDomainIdentityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ses/getDomainIdentity:getDomainIdentity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainIdentityResult.fromMap(result);
}

pulumi.Output<GetDomainIdentityResult> getDomainIdentityOutput(
  GetDomainIdentityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:ses/getDomainIdentity:getDomainIdentity',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDomainIdentityResult.fromMap);
}

/// Retrieve the active SES email identity
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ses.getEmailIdentity({
///     email: "awesome@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ses.get_email_identity(email="awesome@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ses.GetEmailIdentity.Invoke(new()
///     {
///         Email = "awesome@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ses.LookupEmailIdentity(ctx, &ses.LookupEmailIdentityArgs{
/// 			Email: "awesome@example.com",
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
/// data "aws_ses_getemailidentity" "example" {
///   email = "awesome@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ses.SesFunctions;
/// import com.pulumi.aws.ses.inputs.GetEmailIdentityArgs;
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
///         final var example = SesFunctions.getEmailIdentity(GetEmailIdentityArgs.builder()
///             .email("awesome@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ses:getEmailIdentity
///       arguments:
///         email: awesome@example.com
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ses_get_email_identity_get_email_identity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEmailIdentityResult> getEmailIdentity(
  GetEmailIdentityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ses/getEmailIdentity:getEmailIdentity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEmailIdentityResult.fromMap(result);
}

pulumi.Output<GetEmailIdentityResult> getEmailIdentityOutput(
  GetEmailIdentityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:ses/getEmailIdentity:getEmailIdentity',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEmailIdentityResult.fromMap);
}
