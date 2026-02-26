import 'package:pulumi/pulumi.dart';
import 'get_connect_args.dart';
import 'get_connect_result.dart';

/// Get information on an EC2 Transit Gateway Connect.
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
/// const example = aws.ec2transitgateway.getConnect({
/// filters: [{
/// name: "transport-transit-gateway-attachment-id",
/// values: ["tgw-attach-12345678"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_connect(filters=[{
/// "name": "transport-transit-gateway-attachment-id",
/// "values": ["tgw-attach-12345678"],
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
/// var example = Aws.Ec2TransitGateway.GetConnect.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2TransitGateway.Inputs.GetConnectFilterInputArgs
/// {
/// Name = "transport-transit-gateway-attachment-id",
/// Values = new[]
/// {
/// "tgw-attach-12345678",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2transitgateway.LookupConnect(ctx, &ec2transitgateway.LookupConnectArgs{
/// Filters: []ec2transitgateway.GetConnectFilter{
/// {
/// Name: "transport-transit-gateway-attachment-id",
/// Values: []string{
/// "tgw-attach-12345678",
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetConnectArgs;
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
/// final var example = Ec2transitgatewayFunctions.getConnect(GetConnectArgs.builder()
/// .filters(GetConnectFilterArgs.builder()
/// .name("transport-transit-gateway-attachment-id")
/// .values("tgw-attach-12345678")
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
/// function: aws:ec2transitgateway:getConnect
/// arguments:
/// filters:
/// - name: transport-transit-gateway-attachment-id
/// values:
/// - tgw-attach-12345678
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
/// const example = aws.ec2transitgateway.getConnect({
/// transitGatewayConnectId: "tgw-attach-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_connect(transit_gateway_connect_id="tgw-attach-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2TransitGateway.GetConnect.Invoke(new()
/// {
/// TransitGatewayConnectId = "tgw-attach-12345678",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2transitgateway.LookupConnect(ctx, &ec2transitgateway.LookupConnectArgs{
/// TransitGatewayConnectId: pulumi.StringRef("tgw-attach-12345678"),
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetConnectArgs;
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
/// final var example = Ec2transitgatewayFunctions.getConnect(GetConnectArgs.builder()
/// .transitGatewayConnectId("tgw-attach-12345678")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2transitgateway:getConnect
/// arguments:
/// transitGatewayConnectId: tgw-attach-12345678
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetConnectResult> getConnect(
  GetConnectArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getConnect:getConnect',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectResult.fromMap(result);
}
