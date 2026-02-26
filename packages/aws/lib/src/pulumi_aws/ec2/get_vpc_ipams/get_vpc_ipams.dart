import 'package:pulumi/pulumi.dart';
import 'get_vpc_ipams_args.dart';
import 'get_vpc_ipams_result.dart';

/// Data source for managing VPC IPAMs.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getVpcIpams({
/// ipamIds: ["ipam-abcd1234"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_vpc_ipams(ipam_ids=["ipam-abcd1234"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetVpcIpams.Invoke(new()
/// {
/// IpamIds = new[]
/// {
/// "ipam-abcd1234",
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
/// _, err := ec2.GetVpcIpams(ctx, &ec2.GetVpcIpamsArgs{
/// IpamIds: []string{
/// "ipam-abcd1234",
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
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamsArgs;
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
/// final var example = Ec2Functions.getVpcIpams(GetVpcIpamsArgs.builder()
/// .ipamIds("ipam-abcd1234")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2:getVpcIpams
/// arguments:
/// ipamIds:
/// - ipam-abcd1234
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Filter by <span pulumi-lang-nodejs="`tags`" pulumi-lang-dotnet="`Tags`" pulumi-lang-go="`tags`" pulumi-lang-python="`tags`" pulumi-lang-yaml="`tags`" pulumi-lang-java="`tags`">`tags`</span>
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getVpcIpams({
/// filters: [{
/// name: "tags.Some",
/// values: ["Value"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_vpc_ipams(filters=[{
/// "name": "tags.Some",
/// "values": ["Value"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetVpcIpams.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetVpcIpamsFilterInputArgs
/// {
/// Name = "tags.Some",
/// Values = new[]
/// {
/// "Value",
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
/// _, err := ec2.GetVpcIpams(ctx, &ec2.GetVpcIpamsArgs{
/// Filters: []ec2.GetVpcIpamsFilter{
/// {
/// Name: "tags.Some",
/// Values: []string{
/// "Value",
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
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamsArgs;
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
/// final var example = Ec2Functions.getVpcIpams(GetVpcIpamsArgs.builder()
/// .filters(GetVpcIpamsFilterArgs.builder()
/// .name("tags.Some")
/// .values("Value")
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
/// function: aws:ec2:getVpcIpams
/// arguments:
/// filters:
/// - name: tags.Some
/// values:
/// - Value
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Filter by <span pulumi-lang-nodejs="`tier`" pulumi-lang-dotnet="`Tier`" pulumi-lang-go="`tier`" pulumi-lang-python="`tier`" pulumi-lang-yaml="`tier`" pulumi-lang-java="`tier`">`tier`</span>
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getVpcIpams({
/// filters: [{
/// name: "tier",
/// values: ["free"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_vpc_ipams(filters=[{
/// "name": "tier",
/// "values": ["free"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetVpcIpams.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetVpcIpamsFilterInputArgs
/// {
/// Name = "tier",
/// Values = new[]
/// {
/// "free",
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
/// _, err := ec2.GetVpcIpams(ctx, &ec2.GetVpcIpamsArgs{
/// Filters: []ec2.GetVpcIpamsFilter{
/// {
/// Name: "tier",
/// Values: []string{
/// "free",
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
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamsArgs;
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
/// final var example = Ec2Functions.getVpcIpams(GetVpcIpamsArgs.builder()
/// .filters(GetVpcIpamsFilterArgs.builder()
/// .name("tier")
/// .values("free")
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
/// function: aws:ec2:getVpcIpams
/// arguments:
/// filters:
/// - name: tier
/// values:
/// - free
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVpcIpamsResult> getVpcIpams(
  GetVpcIpamsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcIpams:getVpcIpams',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcIpamsResult.fromMap(result);
}
