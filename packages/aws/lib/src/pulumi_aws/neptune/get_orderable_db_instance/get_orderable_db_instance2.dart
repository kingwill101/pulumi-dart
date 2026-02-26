import 'package:pulumi/pulumi.dart';
import 'get_orderable_db_instance_args2.dart';
import 'get_orderable_db_instance_result2.dart';

/// Information about Neptune orderable DB instances.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.neptune.getOrderableDbInstance({
/// engineVersion: "1.0.3.0",
/// preferredInstanceClasses: [
/// "db.r5.large",
/// "db.r4.large",
/// "db.t3.medium",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.neptune.get_orderable_db_instance(engine_version="1.0.3.0",
/// preferred_instance_classes=[
/// "db.r5.large",
/// "db.r4.large",
/// "db.t3.medium",
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
/// var test = Aws.Neptune.GetOrderableDbInstance.Invoke(new()
/// {
/// EngineVersion = "1.0.3.0",
/// PreferredInstanceClasses = new[]
/// {
/// "db.r5.large",
/// "db.r4.large",
/// "db.t3.medium",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptune"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := neptune.GetOrderableDbInstance(ctx, &neptune.GetOrderableDbInstanceArgs{
/// EngineVersion: pulumi.StringRef("1.0.3.0"),
/// PreferredInstanceClasses: []string{
/// "db.r5.large",
/// "db.r4.large",
/// "db.t3.medium",
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
/// import com.pulumi.aws.neptune.NeptuneFunctions;
/// import com.pulumi.aws.neptune.inputs.GetOrderableDbInstanceArgs;
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
/// final var test = NeptuneFunctions.getOrderableDbInstance(GetOrderableDbInstanceArgs.builder()
/// .engineVersion("1.0.3.0")
/// .preferredInstanceClasses(
/// "db.r5.large",
/// "db.r4.large",
/// "db.t3.medium")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:neptune:getOrderableDbInstance
/// arguments:
/// engineVersion: 1.0.3.0
/// preferredInstanceClasses:
/// - db.r5.large
/// - db.r4.large
/// - db.t3.medium
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetOrderableDbInstanceResult2> getOrderableDbInstance2(
  GetOrderableDbInstanceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:neptune/getOrderableDbInstance:getOrderableDbInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrderableDbInstanceResult2.fromMap(result);
}
