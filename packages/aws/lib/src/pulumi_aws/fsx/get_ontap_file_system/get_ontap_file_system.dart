import 'package:pulumi/pulumi.dart';
import 'get_ontap_file_system_args.dart';
import 'get_ontap_file_system_result.dart';

/// Retrieve information on FSx ONTAP File System.
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
/// const example = aws.fsx.getOntapFileSystem({
/// id: "fs-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.get_ontap_file_system(id="fs-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Fsx.GetOntapFileSystem.Invoke(new()
/// {
/// Id = "fs-12345678",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := fsx.LookupOntapFileSystem(ctx, &fsx.LookupOntapFileSystemArgs{
/// Id: "fs-12345678",
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
/// import com.pulumi.aws.fsx.FsxFunctions;
/// import com.pulumi.aws.fsx.inputs.GetOntapFileSystemArgs;
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
/// final var example = FsxFunctions.getOntapFileSystem(GetOntapFileSystemArgs.builder()
/// .id("fs-12345678")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:fsx:getOntapFileSystem
/// arguments:
/// id: fs-12345678
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetOntapFileSystemResult> getOntapFileSystem(
  GetOntapFileSystemArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:fsx/getOntapFileSystem:getOntapFileSystem',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOntapFileSystemResult.fromMap(result);
}
