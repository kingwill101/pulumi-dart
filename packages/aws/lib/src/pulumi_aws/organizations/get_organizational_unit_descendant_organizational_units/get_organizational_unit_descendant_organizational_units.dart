import 'package:pulumi/pulumi.dart';
import 'get_organizational_unit_descendant_organizational_units_args.dart';
import 'get_organizational_unit_descendant_organizational_units_result.dart';

/// Get all direct child organizational units under a parent organizational unit. This provides all children.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const org = aws.organizations.getOrganization({});
/// const ous = org.then(org => aws.organizations.getOrganizationalUnitDescendantOrganizationalUnits({
/// parentId: org.roots?.[0]?.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// org = aws.organizations.get_organization()
/// ous = aws.organizations.get_organizational_unit_descendant_organizational_units(parent_id=org.roots[0].id)
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
/// var ous = Aws.Organizations.GetOrganizationalUnitDescendantOrganizationalUnits.Invoke(new()
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
/// _, err = organizations.GetOrganizationalUnitDescendantOrganizationalUnits(ctx, &organizations.GetOrganizationalUnitDescendantOrganizationalUnitsArgs{
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
/// import com.pulumi.aws.organizations.inputs.GetOrganizationalUnitDescendantOrganizationalUnitsArgs;
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
/// final var ous = OrganizationsFunctions.getOrganizationalUnitDescendantOrganizationalUnits(GetOrganizationalUnitDescendantOrganizationalUnitsArgs.builder()
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
/// ous:
/// fn::invoke:
/// function: aws:organizations:getOrganizationalUnitDescendantOrganizationalUnits
/// arguments:
/// parentId: ${org.roots[0].id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetOrganizationalUnitDescendantOrganizationalUnitsResult>
    getOrganizationalUnitDescendantOrganizationalUnits(
  GetOrganizationalUnitDescendantOrganizationalUnitsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getOrganizationalUnitDescendantOrganizationalUnits:getOrganizationalUnitDescendantOrganizationalUnits',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationalUnitDescendantOrganizationalUnitsResult.fromMap(
      result);
}
