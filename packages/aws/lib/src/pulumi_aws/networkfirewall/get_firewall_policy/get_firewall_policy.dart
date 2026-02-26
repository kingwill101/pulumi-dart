import 'package:pulumi/pulumi.dart';
import 'get_firewall_policy_args.dart';
import 'get_firewall_policy_result.dart';

/// Retrieve information about a firewall policy.
///
/// ## Example Usage
///
/// ### Find firewall policy by name
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkfirewall.getFirewallPolicy({
/// name: firewallPolicyName,
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
/// var example = Aws.NetworkFirewall.GetFirewallPolicy.Invoke(new()
/// {
/// Name = firewallPolicyName,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkfirewall.LookupFirewallPolicy(ctx, &networkfirewall.LookupFirewallPolicyArgs{
/// Name: pulumi.StringRef(firewallPolicyName),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var example = NetworkfirewallFunctions.getFirewallPolicy(GetFirewallPolicyArgs.builder()
/// .name(firewallPolicyName)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:networkfirewall:getFirewallPolicy
/// arguments:
/// name: ${firewallPolicyName}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Find firewall policy by ARN
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkfirewall.getFirewallPolicy({
/// arn: firewallPolicyArn,
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
/// var example = Aws.NetworkFirewall.GetFirewallPolicy.Invoke(new()
/// {
/// Arn = firewallPolicyArn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkfirewall.LookupFirewallPolicy(ctx, &networkfirewall.LookupFirewallPolicyArgs{
/// Arn: pulumi.StringRef(firewallPolicyArn),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var example = NetworkfirewallFunctions.getFirewallPolicy(GetFirewallPolicyArgs.builder()
/// .arn(firewallPolicyArn)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:networkfirewall:getFirewallPolicy
/// arguments:
/// arn: ${firewallPolicyArn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Find firewall policy by name and ARN
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkfirewall.getFirewallPolicy({
/// arn: firewallPolicyArn,
/// name: firewallPolicyName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.get_firewall_policy(arn=firewall_policy_arn,
/// name=firewall_policy_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.NetworkFirewall.GetFirewallPolicy.Invoke(new()
/// {
/// Arn = firewallPolicyArn,
/// Name = firewallPolicyName,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkfirewall.LookupFirewallPolicy(ctx, &networkfirewall.LookupFirewallPolicyArgs{
/// Arn:  pulumi.StringRef(firewallPolicyArn),
/// Name: pulumi.StringRef(firewallPolicyName),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var example = NetworkfirewallFunctions.getFirewallPolicy(GetFirewallPolicyArgs.builder()
/// .arn(firewallPolicyArn)
/// .name(firewallPolicyName)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:networkfirewall:getFirewallPolicy
/// arguments:
/// arn: ${firewallPolicyArn}
/// name: ${firewallPolicyName}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// AWS Network Firewall does not allow multiple firewall policies with the same name to be created in an account. It is possible, however, to have multiple firewall policies available in a single account with identical <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> values but distinct <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> values, e.g. firewall policies shared via a [Resource Access Manager (RAM) share][1]. In that case specifying <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>, or <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> and <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>, is recommended.
///
/// > **Note:** If there are multiple firewall policies in an account with the same <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>, and <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> is not specified, the default behavior will return the firewall policy with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> that was created in the account.
Future<GetFirewallPolicyResult> getFirewallPolicy(
  GetFirewallPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkfirewall/getFirewallPolicy:getFirewallPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyResult.fromMap(result);
}
