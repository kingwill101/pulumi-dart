import 'package:pulumi/pulumi.dart';
import 'get_serial_console_access_args.dart';
import 'get_serial_console_access_result.dart';

/// Provides a way to check whether serial console access is enabled for your AWS account in the current AWS region.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.ec2.getSerialConsoleAccess({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.ec2.get_serial_console_access()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.Ec2.GetSerialConsoleAccess.Invoke();
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
/// _, err := ec2.LookupSerialConsoleAccess(ctx, &ec2.LookupSerialConsoleAccessArgs{}, nil)
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
/// import com.pulumi.aws.ec2.inputs.GetSerialConsoleAccessArgs;
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
/// final var current = Ec2Functions.getSerialConsoleAccess(GetSerialConsoleAccessArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// current:
/// fn::invoke:
/// function: aws:ec2:getSerialConsoleAccess
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSerialConsoleAccessResult> getSerialConsoleAccess(
  GetSerialConsoleAccessArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSerialConsoleAccess:getSerialConsoleAccess',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSerialConsoleAccessResult.fromMap(result);
}
