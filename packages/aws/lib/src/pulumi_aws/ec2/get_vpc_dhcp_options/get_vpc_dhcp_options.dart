import 'package:pulumi/pulumi.dart';
import 'get_vpc_dhcp_options_args.dart';
import 'get_vpc_dhcp_options_result.dart';

/// Retrieve information about an EC2 DHCP Options configuration.
///
/// ## Example Usage
///
/// ### Lookup by DHCP Options ID
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getVpcDhcpOptions({
/// dhcpOptionsId: "dopts-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_vpc_dhcp_options(dhcp_options_id="dopts-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetVpcDhcpOptions.Invoke(new()
/// {
/// DhcpOptionsId = "dopts-12345678",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.LookupVpcDhcpOptions(ctx, &ec2.LookupVpcDhcpOptionsArgs{
/// DhcpOptionsId: pulumi.StringRef("dopts-12345678"),
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcDhcpOptionsArgs;
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
/// final var example = Ec2Functions.getVpcDhcpOptions(GetVpcDhcpOptionsArgs.builder()
/// .dhcpOptionsId("dopts-12345678")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2:getVpcDhcpOptions
/// arguments:
/// dhcpOptionsId: dopts-12345678
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Lookup by Filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getVpcDhcpOptions({
/// filters: [
/// {
/// name: "key",
/// values: ["domain-name"],
/// },
/// {
/// name: "value",
/// values: ["example.com"],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_vpc_dhcp_options(filters=[
/// {
/// "name": "key",
/// "values": ["domain-name"],
/// },
/// {
/// "name": "value",
/// "values": ["example.com"],
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetVpcDhcpOptions.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetVpcDhcpOptionsFilterInputArgs
/// {
/// Name = "key",
/// Values = new[]
/// {
/// "domain-name",
/// },
/// },
/// new Aws.Ec2.Inputs.GetVpcDhcpOptionsFilterInputArgs
/// {
/// Name = "value",
/// Values = new[]
/// {
/// "example.com",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.LookupVpcDhcpOptions(ctx, &ec2.LookupVpcDhcpOptionsArgs{
/// Filters: []ec2.GetVpcDhcpOptionsFilter{
/// {
/// Name: "key",
/// Values: []string{
/// "domain-name",
/// },
/// },
/// {
/// Name: "value",
/// Values: []string{
/// "example.com",
/// },
/// },
/// },
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcDhcpOptionsArgs;
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
/// final var example = Ec2Functions.getVpcDhcpOptions(GetVpcDhcpOptionsArgs.builder()
/// .filters(
/// GetVpcDhcpOptionsFilterArgs.builder()
/// .name("key")
/// .values("domain-name")
/// .build(),
/// GetVpcDhcpOptionsFilterArgs.builder()
/// .name("value")
/// .values("example.com")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2:getVpcDhcpOptions
/// arguments:
/// filters:
/// - name: key
/// values:
/// - domain-name
/// - name: value
/// values:
/// - example.com
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVpcDhcpOptionsResult> getVpcDhcpOptions(
  GetVpcDhcpOptionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcDhcpOptions:getVpcDhcpOptions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcDhcpOptionsResult.fromMap(result);
}
