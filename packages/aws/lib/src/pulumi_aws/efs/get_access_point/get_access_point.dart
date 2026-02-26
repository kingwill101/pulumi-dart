import 'package:pulumi/pulumi.dart';
import 'get_access_point_args.dart';
import 'get_access_point_result.dart';

/// Provides information about an Elastic File System (EFS) Access Point.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.efs.getAccessPoint({
/// accessPointId: "fsap-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.efs.get_access_point(access_point_id="fsap-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Efs.GetAccessPoint.Invoke(new()
/// {
/// AccessPointId = "fsap-12345678",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/efs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := efs.LookupAccessPoint(ctx, &efs.LookupAccessPointArgs{
/// AccessPointId: "fsap-12345678",
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
/// import com.pulumi.aws.efs.EfsFunctions;
/// import com.pulumi.aws.efs.inputs.GetAccessPointArgs;
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
/// final var test = EfsFunctions.getAccessPoint(GetAccessPointArgs.builder()
/// .accessPointId("fsap-12345678")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:efs:getAccessPoint
/// arguments:
/// accessPointId: fsap-12345678
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAccessPointResult> getAccessPoint(
  GetAccessPointArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:efs/getAccessPoint:getAccessPoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccessPointResult.fromMap(result);
}
