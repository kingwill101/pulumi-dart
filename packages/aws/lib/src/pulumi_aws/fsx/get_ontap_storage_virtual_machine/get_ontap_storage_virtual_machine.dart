import 'package:pulumi/pulumi.dart';
import 'get_ontap_storage_virtual_machine_args.dart';
import 'get_ontap_storage_virtual_machine_result.dart';

/// Retrieve information on FSx ONTAP Storage Virtual Machine (SVM).
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
/// const example = aws.fsx.getOntapStorageVirtualMachine({
/// id: "svm-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.get_ontap_storage_virtual_machine(id="svm-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Fsx.GetOntapStorageVirtualMachine.Invoke(new()
/// {
/// Id = "svm-12345678",
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
/// _, err := fsx.LookupOntapStorageVirtualMachine(ctx, &fsx.LookupOntapStorageVirtualMachineArgs{
/// Id: pulumi.StringRef("svm-12345678"),
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
/// import com.pulumi.aws.fsx.inputs.GetOntapStorageVirtualMachineArgs;
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
/// final var example = FsxFunctions.getOntapStorageVirtualMachine(GetOntapStorageVirtualMachineArgs.builder()
/// .id("svm-12345678")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:fsx:getOntapStorageVirtualMachine
/// arguments:
/// id: svm-12345678
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Filter Example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.fsx.getOntapStorageVirtualMachine({
/// filters: [{
/// name: "file-system-id",
/// values: ["fs-12345678"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.get_ontap_storage_virtual_machine(filters=[{
/// "name": "file-system-id",
/// "values": ["fs-12345678"],
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
/// var example = Aws.Fsx.GetOntapStorageVirtualMachine.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Fsx.Inputs.GetOntapStorageVirtualMachineFilterInputArgs
/// {
/// Name = "file-system-id",
/// Values = new[]
/// {
/// "fs-12345678",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := fsx.LookupOntapStorageVirtualMachine(ctx, &fsx.LookupOntapStorageVirtualMachineArgs{
/// Filters: []fsx.GetOntapStorageVirtualMachineFilter{
/// {
/// Name: "file-system-id",
/// Values: []string{
/// "fs-12345678",
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
/// import com.pulumi.aws.fsx.FsxFunctions;
/// import com.pulumi.aws.fsx.inputs.GetOntapStorageVirtualMachineArgs;
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
/// final var example = FsxFunctions.getOntapStorageVirtualMachine(GetOntapStorageVirtualMachineArgs.builder()
/// .filters(GetOntapStorageVirtualMachineFilterArgs.builder()
/// .name("file-system-id")
/// .values("fs-12345678")
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
/// function: aws:fsx:getOntapStorageVirtualMachine
/// arguments:
/// filters:
/// - name: file-system-id
/// values:
/// - fs-12345678
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetOntapStorageVirtualMachineResult> getOntapStorageVirtualMachine(
  GetOntapStorageVirtualMachineArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:fsx/getOntapStorageVirtualMachine:getOntapStorageVirtualMachine',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOntapStorageVirtualMachineResult.fromMap(result);
}
