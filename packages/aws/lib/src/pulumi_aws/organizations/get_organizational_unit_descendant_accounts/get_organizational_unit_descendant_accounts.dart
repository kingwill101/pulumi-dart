import 'package:pulumi/pulumi.dart';
import 'get_organizational_unit_descendant_accounts_args.dart';
import 'get_organizational_unit_descendant_accounts_result.dart';

/// Get all direct child accounts under a parent organizational unit. This provides all children.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const org = aws.organizations.getOrganization({});
/// const accounts = org.then(org => aws.organizations.getOrganizationalUnitDescendantAccounts({
/// parentId: org.roots?.[0]?.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// org = aws.organizations.get_organization()
/// accounts = aws.organizations.get_organizational_unit_descendant_accounts(parent_id=org.roots[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var org = Aws.Organizations.GetOrganization.Invoke();
///
/// var accounts = Aws.Organizations.GetOrganizationalUnitDescendantAccounts.Invoke(new()
/// {
/// ParentId = org.Apply(getOrganizationResult => getOrganizationResult.Roots[0]?.Id),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// org, err := organizations.LookupOrganization(ctx, &organizations.LookupOrganizationArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = organizations.GetOrganizationalUnitDescendantAccounts(ctx, &organizations.GetOrganizationalUnitDescendantAccountsArgs{
/// ParentId: org.Roots[0].Id,
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
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetOrganizationArgs;
/// import com.pulumi.aws.organizations.inputs.GetOrganizationalUnitDescendantAccountsArgs;
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
/// final var org = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
/// .build());
///
/// final var accounts = OrganizationsFunctions.getOrganizationalUnitDescendantAccounts(GetOrganizationalUnitDescendantAccountsArgs.builder()
/// .parentId(org.roots()[0].id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// org:
/// fn::invoke:
/// function: aws:organizations:getOrganization
/// arguments: {}
/// accounts:
/// fn::invoke:
/// function: aws:organizations:getOrganizationalUnitDescendantAccounts
/// arguments:
/// parentId: ${org.roots[0].id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetOrganizationalUnitDescendantAccountsResult>
    getOrganizationalUnitDescendantAccounts(
  GetOrganizationalUnitDescendantAccountsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getOrganizationalUnitDescendantAccounts:getOrganizationalUnitDescendantAccounts',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationalUnitDescendantAccountsResult.fromMap(result);
}
