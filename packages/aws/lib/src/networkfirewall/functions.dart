import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_args.dart';
import 'get_firewall_policy_args.dart';
import 'get_firewall_policy_result.dart';
import 'get_firewall_result.dart';
import 'get_resource_policy_args.dart';
import 'get_resource_policy_result.dart';

/// Retrieve information about a firewall.
///
/// ## Example Usage
///
/// ### Find firewall policy by ARN
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkfirewall.getFirewall({
///     arn: arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.get_firewall(arn=arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.NetworkFirewall.GetFirewall.Invoke(new()
///     {
///         Arn = arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.LookupFirewall(ctx, &networkfirewall.LookupFirewallArgs{
/// 			Arn: pulumi.StringRef(arn),
/// 		}, nil)
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
/// import com.pulumi.aws.networkfirewall.NetworkfirewallFunctions;
/// import com.pulumi.aws.networkfirewall.inputs.GetFirewallArgs;
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
///         final var example = NetworkfirewallFunctions.getFirewall(GetFirewallArgs.builder()
///             .arn(arn)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:networkfirewall:getFirewall
///       arguments:
///         arn: ${arn}
/// ```
///
///
/// ### Find firewall policy by Name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkfirewall.getFirewall({
///     name: "Test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.get_firewall(name="Test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.NetworkFirewall.GetFirewall.Invoke(new()
///     {
///         Name = "Test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.LookupFirewall(ctx, &networkfirewall.LookupFirewallArgs{
/// 			Name: pulumi.StringRef("Test"),
/// 		}, nil)
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
/// import com.pulumi.aws.networkfirewall.NetworkfirewallFunctions;
/// import com.pulumi.aws.networkfirewall.inputs.GetFirewallArgs;
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
///         final var example = NetworkfirewallFunctions.getFirewall(GetFirewallArgs.builder()
///             .name("Test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:networkfirewall:getFirewall
///       arguments:
///         name: Test
/// ```
///
///
/// ### Find firewall policy by ARN and Name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkfirewall.getFirewall({
///     arn: arn,
///     name: "Test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.get_firewall(arn=arn,
///     name="Test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.NetworkFirewall.GetFirewall.Invoke(new()
///     {
///         Arn = arn,
///         Name = "Test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.LookupFirewall(ctx, &networkfirewall.LookupFirewallArgs{
/// 			Arn:  pulumi.StringRef(arn),
/// 			Name: pulumi.StringRef("Test"),
/// 		}, nil)
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
/// import com.pulumi.aws.networkfirewall.NetworkfirewallFunctions;
/// import com.pulumi.aws.networkfirewall.inputs.GetFirewallArgs;
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
///         final var example = NetworkfirewallFunctions.getFirewall(GetFirewallArgs.builder()
///             .arn(arn)
///             .name("Test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:networkfirewall:getFirewall
///       arguments:
///         arn: ${arn}
///         name: Test
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networkfirewall_get_firewall_get_firewall_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallResult> getFirewall(
  GetFirewallArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkfirewall/getFirewall:getFirewall',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallResult.fromMap(result);
}

/// Retrieve information about a firewall policy.
///
/// ## Example Usage
///
/// ### Find firewall policy by name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkfirewall.getFirewallPolicy({
///     name: firewallPolicyName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.get_firewall_policy(name=firewall_policy_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.NetworkFirewall.GetFirewallPolicy.Invoke(new()
///     {
///         Name = firewallPolicyName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.LookupFirewallPolicy(ctx, &networkfirewall.LookupFirewallPolicyArgs{
/// 			Name: pulumi.StringRef(firewallPolicyName),
/// 		}, nil)
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
/// import com.pulumi.aws.networkfirewall.NetworkfirewallFunctions;
/// import com.pulumi.aws.networkfirewall.inputs.GetFirewallPolicyArgs;
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
///         final var example = NetworkfirewallFunctions.getFirewallPolicy(GetFirewallPolicyArgs.builder()
///             .name(firewallPolicyName)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:networkfirewall:getFirewallPolicy
///       arguments:
///         name: ${firewallPolicyName}
/// ```
///
///
/// ### Find firewall policy by ARN
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkfirewall.getFirewallPolicy({
///     arn: firewallPolicyArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.get_firewall_policy(arn=firewall_policy_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.NetworkFirewall.GetFirewallPolicy.Invoke(new()
///     {
///         Arn = firewallPolicyArn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.LookupFirewallPolicy(ctx, &networkfirewall.LookupFirewallPolicyArgs{
/// 			Arn: pulumi.StringRef(firewallPolicyArn),
/// 		}, nil)
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
/// import com.pulumi.aws.networkfirewall.NetworkfirewallFunctions;
/// import com.pulumi.aws.networkfirewall.inputs.GetFirewallPolicyArgs;
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
///         final var example = NetworkfirewallFunctions.getFirewallPolicy(GetFirewallPolicyArgs.builder()
///             .arn(firewallPolicyArn)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:networkfirewall:getFirewallPolicy
///       arguments:
///         arn: ${firewallPolicyArn}
/// ```
///
///
/// ### Find firewall policy by name and ARN
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkfirewall.getFirewallPolicy({
///     arn: firewallPolicyArn,
///     name: firewallPolicyName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.get_firewall_policy(arn=firewall_policy_arn,
///     name=firewall_policy_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.NetworkFirewall.GetFirewallPolicy.Invoke(new()
///     {
///         Arn = firewallPolicyArn,
///         Name = firewallPolicyName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.LookupFirewallPolicy(ctx, &networkfirewall.LookupFirewallPolicyArgs{
/// 			Arn:  pulumi.StringRef(firewallPolicyArn),
/// 			Name: pulumi.StringRef(firewallPolicyName),
/// 		}, nil)
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
/// import com.pulumi.aws.networkfirewall.NetworkfirewallFunctions;
/// import com.pulumi.aws.networkfirewall.inputs.GetFirewallPolicyArgs;
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
///         final var example = NetworkfirewallFunctions.getFirewallPolicy(GetFirewallPolicyArgs.builder()
///             .arn(firewallPolicyArn)
///             .name(firewallPolicyName)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:networkfirewall:getFirewallPolicy
///       arguments:
///         arn: ${firewallPolicyArn}
///         name: ${firewallPolicyName}
/// ```
///
///
/// AWS Network Firewall does not allow multiple firewall policies with the same name to be created in an account. It is possible, however, to have multiple firewall policies available in a single account with identical `name` values but distinct `arn` values, e.g. firewall policies shared via a [Resource Access Manager (RAM) share][1]. In that case specifying `arn`, or `name` and `arn`, is recommended.
///
/// > **Note:** If there are multiple firewall policies in an account with the same `name`, and `arn` is not specified, the default behavior will return the firewall policy with `name` that was created in the account.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkfirewall_get_firewall_policy_get_firewall_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallPolicyResult> getFirewallPolicy(
  GetFirewallPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkfirewall/getFirewallPolicy:getFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyResult.fromMap(result);
}

/// Retrieve information about a Network Firewall resource policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkfirewall.getResourcePolicy({
///     resourceArn: resourcePolicyArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.get_resource_policy(resource_arn=resource_policy_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.NetworkFirewall.GetResourcePolicy.Invoke(new()
///     {
///         ResourceArn = resourcePolicyArn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.LookupResourcePolicy(ctx, &networkfirewall.LookupResourcePolicyArgs{
/// 			ResourceArn: resourcePolicyArn,
/// 		}, nil)
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
/// import com.pulumi.aws.networkfirewall.NetworkfirewallFunctions;
/// import com.pulumi.aws.networkfirewall.inputs.GetResourcePolicyArgs;
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
///         final var example = NetworkfirewallFunctions.getResourcePolicy(GetResourcePolicyArgs.builder()
///             .resourceArn(resourcePolicyArn)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:networkfirewall:getResourcePolicy
///       arguments:
///         resourceArn: ${resourcePolicyArn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_networkfirewall_get_resource_policy_get_resource_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourcePolicyResult> getResourcePolicy(
  GetResourcePolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkfirewall/getResourcePolicy:getResourcePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyResult.fromMap(result);
}
