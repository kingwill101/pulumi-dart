import 'package:pulumi/pulumi.dart';
import 'get_firewall_args.dart';
import 'get_firewall_result.dart';

/// Retrieve information about a firewall.
///
/// ## Example Usage
///
/// ### Find firewall policy by ARN
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkfirewall.getFirewall({
/// arn: arn,
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
/// var example = Aws.NetworkFirewall.GetFirewall.Invoke(new()
/// {
/// Arn = arn,
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
/// _, err := networkfirewall.LookupFirewall(ctx, &networkfirewall.LookupFirewallArgs{
/// Arn: pulumi.StringRef(arn),
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
/// import com.pulumi.aws.networkfirewall.inputs.GetFirewallArgs;
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
/// final var example = NetworkfirewallFunctions.getFirewall(GetFirewallArgs.builder()
/// .arn(arn)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:networkfirewall:getFirewall
/// arguments:
/// arn: ${arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Find firewall policy by Name
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkfirewall.getFirewall({
/// name: "Test",
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
/// var example = Aws.NetworkFirewall.GetFirewall.Invoke(new()
/// {
/// Name = "Test",
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
/// _, err := networkfirewall.LookupFirewall(ctx, &networkfirewall.LookupFirewallArgs{
/// Name: pulumi.StringRef("Test"),
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
/// import com.pulumi.aws.networkfirewall.inputs.GetFirewallArgs;
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
/// final var example = NetworkfirewallFunctions.getFirewall(GetFirewallArgs.builder()
/// .name("Test")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:networkfirewall:getFirewall
/// arguments:
/// name: Test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Find firewall policy by ARN and Name
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkfirewall.getFirewall({
/// arn: arn,
/// name: "Test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.get_firewall(arn=arn,
/// name="Test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.NetworkFirewall.GetFirewall.Invoke(new()
/// {
/// Arn = arn,
/// Name = "Test",
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
/// _, err := networkfirewall.LookupFirewall(ctx, &networkfirewall.LookupFirewallArgs{
/// Arn:  pulumi.StringRef(arn),
/// Name: pulumi.StringRef("Test"),
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
/// import com.pulumi.aws.networkfirewall.inputs.GetFirewallArgs;
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
/// final var example = NetworkfirewallFunctions.getFirewall(GetFirewallArgs.builder()
/// .arn(arn)
/// .name("Test")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:networkfirewall:getFirewall
/// arguments:
/// arn: ${arn}
/// name: Test
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetFirewallResult> getFirewall(
  GetFirewallArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkfirewall/getFirewall:getFirewall',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFirewallResult.fromMap(result);
}
