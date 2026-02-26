import 'package:pulumi/pulumi.dart';
import 'get_user_args4.dart';
import 'get_user_result4.dart';

/// Use this data source to get an Identity Store User.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleGetUser = example.then(example => aws.identitystore.getUser({
/// identityStoreId: example.identityStoreIds?.[0],
/// alternateIdentifier: {
/// uniqueAttribute: {
/// attributePath: "UserName",
/// attributeValue: "ExampleUser",
/// },
/// },
/// }));
/// export const userId = exampleGetUser.then(exampleGetUser => exampleGetUser.userId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_get_user = aws.identitystore.get_user(identity_store_id=example.identity_store_ids[0],
/// alternate_identifier={
/// "unique_attribute": {
/// "attribute_path": "UserName",
/// "attribute_value": "ExampleUser",
/// },
/// })
/// pulumi.export("userId", example_get_user.user_id)
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
/// var exampleGetUser = Aws.IdentityStore.GetUser.Invoke(new()
/// {
/// IdentityStoreId = example.Apply(getInstancesResult => getInstancesResult.IdentityStoreIds[0]),
/// AlternateIdentifier = new Aws.IdentityStore.Inputs.GetUserAlternateIdentifierInputArgs
/// {
/// UniqueAttribute = new Aws.IdentityStore.Inputs.GetUserAlternateIdentifierUniqueAttributeInputArgs
/// {
/// AttributePath = "UserName",
/// AttributeValue = "ExampleUser",
/// },
/// },
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["userId"] = exampleGetUser.Apply(getUserResult => getUserResult.UserId),
/// };
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
/// exampleGetUser, err := identitystore.LookupUser(ctx, &identitystore.LookupUserArgs{
/// IdentityStoreId: example.IdentityStoreIds[0],
/// AlternateIdentifier: identitystore.GetUserAlternateIdentifier{
/// UniqueAttribute: identitystore.GetUserAlternateIdentifierUniqueAttribute{
/// AttributePath:  "UserName",
/// AttributeValue: "ExampleUser",
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("userId", exampleGetUser.UserId)
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
/// import com.pulumi.aws.identitystore.inputs.GetUserArgs;
/// import com.pulumi.aws.identitystore.inputs.GetUserAlternateIdentifierArgs;
/// import com.pulumi.aws.identitystore.inputs.GetUserAlternateIdentifierUniqueAttributeArgs;
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
/// final var exampleGetUser = IdentitystoreFunctions.getUser(GetUserArgs.builder()
/// .identityStoreId(example.identityStoreIds()[0])
/// .alternateIdentifier(GetUserAlternateIdentifierArgs.builder()
/// .uniqueAttribute(GetUserAlternateIdentifierUniqueAttributeArgs.builder()
/// .attributePath("UserName")
/// .attributeValue("ExampleUser")
/// .build())
/// .build())
/// .build());
///
/// ctx.export("userId", exampleGetUser.userId());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssoadmin:getInstances
/// arguments: {}
/// exampleGetUser:
/// fn::invoke:
/// function: aws:identitystore:getUser
/// arguments:
/// identityStoreId: ${example.identityStoreIds[0]}
/// alternateIdentifier:
/// uniqueAttribute:
/// attributePath: UserName
/// attributeValue: ExampleUser
/// outputs:
/// userId: ${exampleGetUser.userId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetUserResult4> getUser4(
  GetUserArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:identitystore/getUser:getUser',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserResult4.fromMap(result);
}
