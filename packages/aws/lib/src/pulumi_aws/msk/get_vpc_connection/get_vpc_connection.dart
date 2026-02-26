import 'package:pulumi/pulumi.dart';
import 'get_vpc_connection_args.dart';
import 'get_vpc_connection_result.dart';

/// Get information on an Amazon MSK VPC Connection.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.msk.getVpcConnection({
/// arn: exampleAwsMskVpcConnection.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.msk.get_vpc_connection(arn=example_aws_msk_vpc_connection["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Msk.GetVpcConnection.Invoke(new()
/// {
/// Arn = exampleAwsMskVpcConnection.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/msk"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := msk.LookupVpcConnection(ctx, &msk.LookupVpcConnectionArgs{
/// Arn: exampleAwsMskVpcConnection.Arn,
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
/// import com.pulumi.aws.msk.MskFunctions;
/// import com.pulumi.aws.msk.inputs.GetVpcConnectionArgs;
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
/// final var example = MskFunctions.getVpcConnection(GetVpcConnectionArgs.builder()
/// .arn(exampleAwsMskVpcConnection.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:msk:getVpcConnection
/// arguments:
/// arn: ${exampleAwsMskVpcConnection.arn}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVpcConnectionResult> getVpcConnection(
  GetVpcConnectionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:msk/getVpcConnection:getVpcConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcConnectionResult.fromMap(result);
}
