import 'package:pulumi/pulumi.dart';
import 'get_db_node_args.dart';
import 'get_db_node_result.dart';

/// Data source for manging db nodes linked to cloud vm cluster of Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
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
/// const example = aws.odb.getDbNode({
/// cloudVmClusterId: "cloud_vm_cluster_id",
/// id: "db_node_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_db_node(cloud_vm_cluster_id="cloud_vm_cluster_id",
/// id="db_node_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Odb.GetDbNode.Invoke(new()
/// {
/// CloudVmClusterId = "cloud_vm_cluster_id",
/// Id = "db_node_id",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := odb.GetDbNode(ctx, &odb.GetDbNodeArgs{
/// CloudVmClusterId: "cloud_vm_cluster_id",
/// Id:               "db_node_id",
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
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetDbNodeArgs;
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
/// final var example = OdbFunctions.getDbNode(GetDbNodeArgs.builder()
/// .cloudVmClusterId("cloud_vm_cluster_id")
/// .id("db_node_id")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:odb:getDbNode
/// arguments:
/// cloudVmClusterId: cloud_vm_cluster_id
/// id: db_node_id
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDbNodeResult> getDbNode(
  GetDbNodeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getDbNode:getDbNode',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDbNodeResult.fromMap(result);
}
