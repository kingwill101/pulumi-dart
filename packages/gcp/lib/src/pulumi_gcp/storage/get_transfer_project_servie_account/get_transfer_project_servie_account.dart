import 'package:pulumi/pulumi.dart';
import 'get_transfer_project_servie_account_args.dart';
import 'get_transfer_project_servie_account_result.dart';

/// Use this data source to retrieve Storage Transfer service account for this project
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.storage.getTransferProjectServiceAccount({});
/// export const defaultAccount = _default.then(_default => _default.email);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.storage.get_transfer_project_service_account()
/// pulumi.export("defaultAccount", default.email)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Gcp.Storage.GetTransferProjectServiceAccount.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["defaultAccount"] = @default.Apply(@default => @default.Apply(getTransferProjectServiceAccountResult => getTransferProjectServiceAccountResult.Email)),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := storage.GetTransferProjectServiceAccount(ctx, &storage.GetTransferProjectServiceAccountArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("defaultAccount", _default.Email)
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
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetTransferProjectServiceAccountArgs;
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
/// final var default = StorageFunctions.getTransferProjectServiceAccount(GetTransferProjectServiceAccountArgs.builder()
/// .build());
///
/// ctx.export("defaultAccount", default_.email());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// default:
/// fn::invoke:
/// function: gcp:storage:getTransferProjectServiceAccount
/// arguments: {}
/// outputs:
/// defaultAccount: ${default.email}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTransferProjectServieAccountResult> getTransferProjectServieAccount(
  GetTransferProjectServieAccountArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getTransferProjectServieAccount:getTransferProjectServieAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTransferProjectServieAccountResult.fromMap(result);
}
