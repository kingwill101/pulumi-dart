import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_enabled_standards_args.dart';
import 'get_enabled_standards_result.dart';
import 'get_security_controls_args.dart';
import 'get_security_controls_result.dart';
import 'get_standards_control_associations_args.dart';
import 'get_standards_control_associations_result.dart';

/// Lists the standards that are currently enabled.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.securityhub.getEnabledStandards({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.get_enabled_standards()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SecurityHub.GetEnabledStandards.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityhub.GetEnabledStandards(ctx, &securityhub.GetEnabledStandardsArgs{}, nil)
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
/// data "aws_securityhub_getenabledstandards" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.SecurityhubFunctions;
/// import com.pulumi.aws.securityhub.inputs.GetEnabledStandardsArgs;
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
///         final var example = SecurityhubFunctions.getEnabledStandards(GetEnabledStandardsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:securityhub:getEnabledStandards
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_securityhub_get_enabled_standards_get_enabled_standards_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnabledStandardsResult> getEnabledStandards(
  GetEnabledStandardsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:securityhub/getEnabledStandards:getEnabledStandards',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnabledStandardsResult.fromMap(result);
}

/// Lists security controls.
///
/// ## Example Usage
///
/// ### All Controls
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.securityhub.getSecurityControls({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.get_security_controls()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SecurityHub.GetSecurityControls.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityhub.GetSecurityControls(ctx, &securityhub.GetSecurityControlsArgs{}, nil)
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
/// data "aws_securityhub_getsecuritycontrols" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.SecurityhubFunctions;
/// import com.pulumi.aws.securityhub.inputs.GetSecurityControlsArgs;
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
///         final var example = SecurityhubFunctions.getSecurityControls(GetSecurityControlsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:securityhub:getSecurityControls
///       arguments: {}
/// ```
///
///
/// ### `HIGH` or `CRITICAL` Severity Controls
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = aws.securityhub.getSecurityControls({});
/// export const securityControlDefinitions = Promise.all([example, std.contains({
///     input: [
///         "HIGH",
///         "CRITICAL",
///     ],
///     element: d.severityRating,
/// })]).then(([example, invoke]) => .filter(d => invoke.result).map(d => (d)));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.securityhub.get_security_controls()
/// pulumi.export("securityControlDefinitions", [d for d in example.security_control_definitions if std.contains(input=[
///         "HIGH",
///         "CRITICAL",
///     ],
///     element=d.severity_rating).result])
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
///     var example = Aws.SecurityHub.GetSecurityControls.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["securityControlDefinitions"] = Output.Tuple(example, Std.Contains.Invoke(new()
///         {
///             Input = new[]
///             {
///                 "HIGH",
///                 "CRITICAL",
///             },
///             Element = d.SeverityRating,
///         })).Apply(values =>
///         {
///             var example = values.Item1;
///             var invoke = values.Item2;
///             return ;
///         }),
///     };
/// });
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "aws_securityhub_getsecuritycontrols" "example" {
/// }
///
/// output "securityControlDefinitions" {
///   value = [for d in data.aws_securityhub_getsecuritycontrols.example.security_control_definitions : d if contains(["HIGH", "CRITICAL"], d.severityRating)]
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_securityhub_get_security_controls_get_security_controls_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityControlsResult> getSecurityControls(
  GetSecurityControlsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:securityhub/getSecurityControls:getSecurityControls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityControlsResult.fromMap(result);
}

/// Data source for managing an AWS Security Hub Standards Control Associations.
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
/// const testAccount = new aws.securityhub.Account("test", {});
/// const test = aws.securityhub.getStandardsControlAssociations({
///     securityControlId: "IAM.1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_account = aws.securityhub.Account("test")
/// test = aws.securityhub.get_standards_control_associations(security_control_id="IAM.1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testAccount = new Aws.SecurityHub.Account("test");
///
///     var test = Aws.SecurityHub.GetStandardsControlAssociations.Invoke(new()
///     {
///         SecurityControlId = "IAM.1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityhub.NewAccount(ctx, "test", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.GetStandardsControlAssociations(ctx, &securityhub.GetStandardsControlAssociationsArgs{
/// 			SecurityControlId: "IAM.1",
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
/// data "aws_securityhub_getstandardscontrolassociations" "test" {
///   security_control_id = "IAM.1"
/// }
///
/// resource "aws_securityhub_account" "test" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.Account;
/// import com.pulumi.aws.securityhub.SecurityhubFunctions;
/// import com.pulumi.aws.securityhub.inputs.GetStandardsControlAssociationsArgs;
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
///         var testAccount = new Account("testAccount");
///
///         final var test = SecurityhubFunctions.getStandardsControlAssociations(GetStandardsControlAssociationsArgs.builder()
///             .securityControlId("IAM.1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testAccount:
///     type: aws:securityhub:Account
///     name: test
/// variables:
///   test:
///     fn::invoke:
///       function: aws:securityhub:getStandardsControlAssociations
///       arguments:
///         securityControlId: IAM.1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_securityhub_get_standards_control_associations_get_standards_control_associations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStandardsControlAssociationsResult> getStandardsControlAssociations(
  GetStandardsControlAssociationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:securityhub/getStandardsControlAssociations:getStandardsControlAssociations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStandardsControlAssociationsResult.fromMap(result);
}
