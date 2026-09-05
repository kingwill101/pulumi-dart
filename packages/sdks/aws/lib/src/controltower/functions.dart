import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_controls_args.dart';
import 'get_controls_result.dart';

/// List of Control Tower controls applied to an OU.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _this = aws.organizations.getOrganization({});
/// const thisGetOrganizationalUnits = _this.then(_this => aws.organizations.getOrganizationalUnits({
///     parentId: _this.roots?.[0]?.id,
/// }));
/// const thisGetControls = thisGetOrganizationalUnits.then(thisGetOrganizationalUnits => aws.controltower.getControls({
///     targetIdentifier: .filter(x => x.name == "Security").map(x => (x.arn))[0],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// this = aws.organizations.get_organization()
/// this_get_organizational_units = aws.organizations.get_organizational_units(parent_id=this.roots[0].id)
/// this_get_controls = aws.controltower.get_controls(target_identifier=[x.arn for x in this_get_organizational_units.children if x.name == "Security"][0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @this = Aws.Organizations.GetOrganization.Invoke();
///
///     var thisGetOrganizationalUnits = Aws.Organizations.GetOrganizationalUnits.Invoke(new()
///     {
///         ParentId = @this.Apply(getOrganizationResult => getOrganizationResult.Roots[0]?.Id),
///     });
///
///     var thisGetControls = Aws.ControlTower.GetControls.Invoke(new()
///     {
///         TargetIdentifier = [0],
///     });
///
/// });
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_organizations_getorganization" "this" {
/// }
/// data "aws_organizations_getorganizationalunits" "thisGetOrganizationalUnits" {
///   parent_id = data.aws_organizations_getorganization.this.roots[0].id
/// }
/// data "aws_controltower_getcontrols" "thisGetControls" {
///   target_identifier = [for x in data.aws_organizations_getorganizationalunits.thisGetOrganizationalUnits.children : x.arn if x.name == "Security"][0]
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_controltower_get_controls_get_controls_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControlsResult> getControls(
  GetControlsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:controltower/getControls:getControls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlsResult.fromMap(result);
}

pulumi.Output<GetControlsResult> getControlsOutput(
  GetControlsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:controltower/getControls:getControls',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetControlsResult.fromMap);
}
