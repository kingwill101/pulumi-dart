import 'package:pulumi/pulumi.dart';
import 'get_local_gateway_route_tables_args.dart';
import 'get_local_gateway_route_tables_result.dart';

/// Provides information for multiple EC2 Local Gateway Route Tables, such as their identifiers.
///
/// ## Example Usage
///
/// The following shows outputting all Local Gateway Route Table Ids.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
/// const foo = await aws.ec2.getLocalGatewayRouteTables({});
/// return {
/// foo: foo.ids,
/// };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.get_local_gateway_route_tables()
/// pulumi.export("foo", foo.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = Aws.Ec2.GetLocalGatewayRouteTables.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["foo"] = foo.Apply(getLocalGatewayRouteTablesResult => getLocalGatewayRouteTablesResult.Ids),
/// };
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
/// foo, err := ec2.GetLocalGatewayRouteTables(ctx, &ec2.GetLocalGatewayRouteTablesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("foo", foo.Ids)
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
/// import com.pulumi.aws.ec2.inputs.GetLocalGatewayRouteTablesArgs;
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
/// final var foo = Ec2Functions.getLocalGatewayRouteTables(GetLocalGatewayRouteTablesArgs.builder()
/// .build());
///
/// ctx.export("foo", foo.ids());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// foo:
/// fn::invoke:
/// function: aws:ec2:getLocalGatewayRouteTables
/// arguments: {}
/// outputs:
/// foo: ${foo.ids}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetLocalGatewayRouteTablesResult> getLocalGatewayRouteTables(
  GetLocalGatewayRouteTablesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLocalGatewayRouteTables:getLocalGatewayRouteTables',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLocalGatewayRouteTablesResult.fromMap(result);
}
