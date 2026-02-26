import 'package:pulumi/pulumi.dart';
import 'get_management_server_args.dart';
import 'get_management_server_result.dart';

/// Get information about a Google Backup DR Management server.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_backup_dr_management_server = gcp.backupdisasterrecovery.getManagementServer({
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_backup_dr_management_server = gcp.backupdisasterrecovery.get_management_server(location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_backup_dr_management_server = Gcp.BackupDisasterRecovery.GetManagementServer.Invoke(new()
/// {
/// Location = "us-central1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := backupdisasterrecovery.LookupManagementServer(ctx, &backupdisasterrecovery.LookupManagementServerArgs{
/// Location: "us-central1",
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
/// import com.pulumi.gcp.backupdisasterrecovery.BackupdisasterrecoveryFunctions;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.GetManagementServerArgs;
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
/// final var my-backup-dr-management-server = BackupdisasterrecoveryFunctions.getManagementServer(GetManagementServerArgs.builder()
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-backup-dr-management-server:
/// fn::invoke:
/// function: gcp:backupdisasterrecovery:getManagementServer
/// arguments:
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetManagementServerResult> getManagementServer(
  GetManagementServerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:backupdisasterrecovery/getManagementServer:getManagementServer',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetManagementServerResult.fromMap(result);
}
