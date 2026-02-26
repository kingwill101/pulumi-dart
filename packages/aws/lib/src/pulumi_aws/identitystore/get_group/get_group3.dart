import 'package:pulumi/pulumi.dart';
import 'get_group_args3.dart';
import 'get_group_result3.dart';

/// Use this data source to get an Identity Store Group.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleGetGroup = example.then(example => aws.identitystore.getGroup({
/// identityStoreId: example.identityStoreIds?.[0],
/// alternateIdentifier: {
/// uniqueAttribute: {
/// attributePath: "DisplayName",
/// attributeValue: "ExampleGroup",
/// },
/// },
/// }));
/// export const groupId = exampleGetGroup.then(exampleGetGroup => exampleGetGroup.groupId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_get_group = aws.identitystore.get_group(identity_store_id=example.identity_store_ids[0],
/// alternate_identifier={
/// "unique_attribute": {
/// "attribute_path": "DisplayName",
/// "attribute_value": "ExampleGroup",
/// },
/// })
/// pulumi.export("groupId", example_get_group.group_id)
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
/// var exampleGetGroup = Aws.IdentityStore.GetGroup.Invoke(new()
/// {
/// IdentityStoreId = example.Apply(getInstancesResult => getInstancesResult.IdentityStoreIds[0]),
/// AlternateIdentifier = new Aws.IdentityStore.Inputs.GetGroupAlternateIdentifierInputArgs
/// {
/// UniqueAttribute = new Aws.IdentityStore.Inputs.GetGroupAlternateIdentifierUniqueAttributeInputArgs
/// {
/// AttributePath = "DisplayName",
/// AttributeValue = "ExampleGroup",
/// },
/// },
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["groupId"] = exampleGetGroup.Apply(getGroupResult => getGroupResult.GroupId),
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
/// exampleGetGroup, err := identitystore.LookupGroup(ctx, &identitystore.LookupGroupArgs{
/// IdentityStoreId: example.IdentityStoreIds[0],
/// AlternateIdentifier: identitystore.GetGroupAlternateIdentifier{
/// UniqueAttribute: identitystore.GetGroupAlternateIdentifierUniqueAttribute{
/// AttributePath:  "DisplayName",
/// AttributeValue: "ExampleGroup",
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("groupId", exampleGetGroup.GroupId)
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
/// import com.pulumi.aws.identitystore.inputs.GetGroupArgs;
/// import com.pulumi.aws.identitystore.inputs.GetGroupAlternateIdentifierArgs;
/// import com.pulumi.aws.identitystore.inputs.GetGroupAlternateIdentifierUniqueAttributeArgs;
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
/// final var exampleGetGroup = IdentitystoreFunctions.getGroup(GetGroupArgs.builder()
/// .identityStoreId(example.identityStoreIds()[0])
/// .alternateIdentifier(GetGroupAlternateIdentifierArgs.builder()
/// .uniqueAttribute(GetGroupAlternateIdentifierUniqueAttributeArgs.builder()
/// .attributePath("DisplayName")
/// .attributeValue("ExampleGroup")
/// .build())
/// .build())
/// .build());
///
/// ctx.export("groupId", exampleGetGroup.groupId());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssoadmin:getInstances
/// arguments: {}
/// exampleGetGroup:
/// fn::invoke:
/// function: aws:identitystore:getGroup
/// arguments:
/// identityStoreId: ${example.identityStoreIds[0]}
/// alternateIdentifier:
/// uniqueAttribute:
/// attributePath: DisplayName
/// attributeValue: ExampleGroup
/// outputs:
/// groupId: ${exampleGetGroup.groupId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetGroupResult3> getGroup3(
  GetGroupArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:identitystore/getGroup:getGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupResult3.fromMap(result);
}
