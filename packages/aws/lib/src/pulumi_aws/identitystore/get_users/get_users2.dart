import 'package:pulumi/pulumi.dart';
import 'get_users_args2.dart';
import 'get_users_result2.dart';

/// Use this data source to get a list of users in an Identity Store instance.
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
/// const example = aws.ssoadmin.getInstances({});
/// const exampleGetUsers = example.then(example => aws.identitystore.getUsers({
/// identityStoreId: example.identityStoreIds?.[0],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_get_users = aws.identitystore.get_users(identity_store_id=example.identity_store_ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.SsoAdmin.GetInstances.Invoke();
///
/// var exampleGetUsers = Aws.IdentityStore.GetUsers.Invoke(new()
/// {
/// IdentityStoreId = example.Apply(getInstancesResult => getInstancesResult.IdentityStoreIds[0]),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/identitystore"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = identitystore.GetUsers(ctx, &identitystore.GetUsersArgs{
/// IdentityStoreId: example.IdentityStoreIds[0],
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.identitystore.IdentitystoreFunctions;
/// import com.pulumi.aws.identitystore.inputs.GetUsersArgs;
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
/// final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
/// .build());
///
/// final var exampleGetUsers = IdentitystoreFunctions.getUsers(GetUsersArgs.builder()
/// .identityStoreId(example.identityStoreIds()[0])
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssoadmin:getInstances
/// arguments: {}
/// exampleGetUsers:
/// fn::invoke:
/// function: aws:identitystore:getUsers
/// arguments:
/// identityStoreId: ${example.identityStoreIds[0]}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetUsersResult2> getUsers2(
  GetUsersArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:identitystore/getUsers:getUsers',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUsersResult2.fromMap(result);
}
