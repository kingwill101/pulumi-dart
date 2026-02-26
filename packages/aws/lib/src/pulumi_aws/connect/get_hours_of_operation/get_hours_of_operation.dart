import 'package:pulumi/pulumi.dart';
import 'get_hours_of_operation_args.dart';
import 'get_hours_of_operation_result.dart';

/// Provides details about a specific Amazon Connect Hours of Operation.
///
/// ## Example Usage
///
/// By <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.connect.getHoursOfOperation({
/// instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// name: "Test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.get_hours_of_operation(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
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
/// var test = Aws.Connect.GetHoursOfOperation.Invoke(new()
/// {
/// InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// Name = "Test",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.LookupHoursOfOperation(ctx, &connect.LookupHoursOfOperationArgs{
/// InstanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// Name:       pulumi.StringRef("Test"),
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
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetHoursOfOperationArgs;
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
/// final var test = ConnectFunctions.getHoursOfOperation(GetHoursOfOperationArgs.builder()
/// .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
/// .name("Test")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:connect:getHoursOfOperation
/// arguments:
/// instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
/// name: Test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// By <span pulumi-lang-nodejs="`hoursOfOperationId`" pulumi-lang-dotnet="`HoursOfOperationId`" pulumi-lang-go="`hoursOfOperationId`" pulumi-lang-python="`hours_of_operation_id`" pulumi-lang-yaml="`hoursOfOperationId`" pulumi-lang-java="`hoursOfOperationId`">`hours_of_operation_id`</span>
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.connect.getHoursOfOperation({
/// instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// hoursOfOperationId: "cccccccc-bbbb-cccc-dddd-111111111111",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.get_hours_of_operation(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// hours_of_operation_id="cccccccc-bbbb-cccc-dddd-111111111111")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Connect.GetHoursOfOperation.Invoke(new()
/// {
/// InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// HoursOfOperationId = "cccccccc-bbbb-cccc-dddd-111111111111",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.LookupHoursOfOperation(ctx, &connect.LookupHoursOfOperationArgs{
/// InstanceId:         "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// HoursOfOperationId: pulumi.StringRef("cccccccc-bbbb-cccc-dddd-111111111111"),
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
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetHoursOfOperationArgs;
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
/// final var test = ConnectFunctions.getHoursOfOperation(GetHoursOfOperationArgs.builder()
/// .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
/// .hoursOfOperationId("cccccccc-bbbb-cccc-dddd-111111111111")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:connect:getHoursOfOperation
/// arguments:
/// instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
/// hoursOfOperationId: cccccccc-bbbb-cccc-dddd-111111111111
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetHoursOfOperationResult> getHoursOfOperation(
  GetHoursOfOperationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getHoursOfOperation:getHoursOfOperation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHoursOfOperationResult.fromMap(result);
}
