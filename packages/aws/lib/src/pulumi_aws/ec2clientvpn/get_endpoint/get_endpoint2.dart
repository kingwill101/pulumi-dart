import 'package:pulumi/pulumi.dart';
import 'get_endpoint_args2.dart';
import 'get_endpoint_result2.dart';

/// Get information on an EC2 Client VPN endpoint.
///
/// ## Example Usage
///
/// ### By Filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2clientvpn.getEndpoint({
/// filters: [{
/// name: "tag:Name",
/// values: ["ExampleVpn"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2clientvpn.get_endpoint(filters=[{
/// "name": "tag:Name",
/// "values": ["ExampleVpn"],
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
/// var example = Aws.Ec2ClientVpn.GetEndpoint.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2ClientVpn.Inputs.GetEndpointFilterInputArgs
/// {
/// Name = "tag:Name",
/// Values = new[]
/// {
/// "ExampleVpn",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2clientvpn"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2clientvpn.LookupEndpoint(ctx, &ec2clientvpn.LookupEndpointArgs{
/// Filters: []ec2clientvpn.GetEndpointFilter{
/// {
/// Name: "tag:Name",
/// Values: []string{
/// "ExampleVpn",
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
/// import com.pulumi.aws.ec2clientvpn.Ec2clientvpnFunctions;
/// import com.pulumi.aws.ec2clientvpn.inputs.GetEndpointArgs;
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
/// final var example = Ec2clientvpnFunctions.getEndpoint(GetEndpointArgs.builder()
/// .filters(GetEndpointFilterArgs.builder()
/// .name("tag:Name")
/// .values("ExampleVpn")
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
/// function: aws:ec2clientvpn:getEndpoint
/// arguments:
/// filters:
/// - name: tag:Name
/// values:
/// - ExampleVpn
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### By Identifier
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2clientvpn.getEndpoint({
/// clientVpnEndpointId: "cvpn-endpoint-083cf50d6eb314f21",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2clientvpn.get_endpoint(client_vpn_endpoint_id="cvpn-endpoint-083cf50d6eb314f21")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2ClientVpn.GetEndpoint.Invoke(new()
/// {
/// ClientVpnEndpointId = "cvpn-endpoint-083cf50d6eb314f21",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2clientvpn"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2clientvpn.LookupEndpoint(ctx, &ec2clientvpn.LookupEndpointArgs{
/// ClientVpnEndpointId: pulumi.StringRef("cvpn-endpoint-083cf50d6eb314f21"),
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
/// import com.pulumi.aws.ec2clientvpn.Ec2clientvpnFunctions;
/// import com.pulumi.aws.ec2clientvpn.inputs.GetEndpointArgs;
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
/// final var example = Ec2clientvpnFunctions.getEndpoint(GetEndpointArgs.builder()
/// .clientVpnEndpointId("cvpn-endpoint-083cf50d6eb314f21")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2clientvpn:getEndpoint
/// arguments:
/// clientVpnEndpointId: cvpn-endpoint-083cf50d6eb314f21
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEndpointResult2> getEndpoint2(
  GetEndpointArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2clientvpn/getEndpoint:getEndpoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult2.fromMap(result);
}
