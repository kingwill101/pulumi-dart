import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_tower_control_args.dart';
import 'control_tower_control_state.dart';

/// Allows the application of pre-defined controls to organizational units. For more information on usage, please see the
/// [AWS Control Tower User Guide](https://docs.aws.amazon.com/controltower/latest/userguide/enable-guardrails.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const example = aws.organizations.getOrganization({});
/// const exampleGetOrganizationalUnits = example.then(example => aws.organizations.getOrganizationalUnits({
///     parentId: example.roots?.[0]?.id,
/// }));
/// const exampleControlTowerControl = new aws.controltower.ControlTowerControl("example", {
///     controlIdentifier: current.then(current => `arn:aws:controltower:${current.region}::control/AWS-GR_EC2_VOLUME_INUSE_CHECK`),
///     targetIdentifier: exampleGetOrganizationalUnits.then(exampleGetOrganizationalUnits => .filter(x => x.name == "Infrastructure").map(x => (x.arn))[0]),
///     parameters: [{
///         key: "AllowedRegions",
///         value: JSON.stringify(["us-east-1"]),
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// example = aws.organizations.get_organization()
/// example_get_organizational_units = aws.organizations.get_organizational_units(parent_id=example.roots[0].id)
/// example_control_tower_control = aws.controltower.ControlTowerControl("example",
///     control_identifier=f"arn:aws:controltower:{current.region}::control/AWS-GR_EC2_VOLUME_INUSE_CHECK",
///     target_identifier=[x.arn for x in example_get_organizational_units.children if x.name == "Infrastructure"][0],
///     parameters=[{
///         "key": "AllowedRegions",
///         "value": json.dumps(["us-east-1"]),
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegion.Invoke();
///
///     var example = Aws.Organizations.GetOrganization.Invoke();
///
///     var exampleGetOrganizationalUnits = Aws.Organizations.GetOrganizationalUnits.Invoke(new()
///     {
///         ParentId = example.Apply(getOrganizationResult => getOrganizationResult.Roots[0]?.Id),
///     });
///
///     var exampleControlTowerControl = new Aws.ControlTower.ControlTowerControl("example", new()
///     {
///         ControlIdentifier = $"arn:aws:controltower:{current.Apply(getRegionResult => getRegionResult.Region)}::control/AWS-GR_EC2_VOLUME_INUSE_CHECK",
///         TargetIdentifier = .Where(x => x.Name == "Infrastructure").Select(x =>
///         {
///             return x.Arn;
///         }).ToList()[0],
///         Parameters = new[]
///         {
///             new Aws.ControlTower.Inputs.ControlTowerControlParameterArgs
///             {
///                 Key = "AllowedRegions",
///                 Value = JsonSerializer.Serialize(new[]
///                 {
///                     "us-east-1",
///                 }),
///             },
///         },
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
/// data "aws_getregion" "current" {
/// }
/// data "aws_organizations_getorganization" "example" {
/// }
/// data "aws_organizations_getorganizationalunits" "exampleGetOrganizationalUnits" {
///   parent_id = data.aws_organizations_getorganization.example.roots[0].id
/// }
///
/// resource "aws_controltower_controltowercontrol" "example" {
///   control_identifier ="arn:aws:controltower:${data.aws_getregion.current.region}::control/AWS-GR_EC2_VOLUME_INUSE_CHECK"
///   target_identifier  = [for x in data.aws_organizations_getorganizationalunits.exampleGetOrganizationalUnits.children : x.arn if x.name == "Infrastructure"][0]
///   parameters {
///     key   = "AllowedRegions"
///     value = jsonencode(["us-east-1"])
///   }
/// }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Control Tower Controls using their `organizational_unit_arn/control_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:controltower/controlTowerControl:ControlTowerControl example arn:aws:organizations::123456789101:ou/o-qqaejywet/ou-qg5o-ufbhdtv3,arn:aws:controltower:us-east-1::control/WTDSMKDKDNLE
/// ```
class ControlTowerControl extends pulumi.CustomResource {
  /// The ARN of the EnabledControl resource.
  late final pulumi.Output<String> arn;
  /// The ARN of the control. Only Strongly recommended and Elective controls are permitted, with the exception of the Region deny guardrail.
  late final pulumi.Output<String> controlIdentifier;
  /// Parameter values which are specified to configure the control when you enable it. See Parameters for more details.
  late final pulumi.Output<List<Map<String, dynamic>>?> parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ARN of the organizational unit.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> targetIdentifier;

  /// Creates a new [ControlTowerControl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ControlTowerControl]. {@macro pulumi_controltower_control_tower_control_control_tower_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ControlTowerControl(
    String name, {
    ControlTowerControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:controltower/controlTowerControl:ControlTowerControl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    controlIdentifier = registerOutput<String>('controlIdentifier');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    region = registerOutput<String>('region');
    targetIdentifier = registerOutput<String>('targetIdentifier');
  }

  /// Gets an existing [ControlTowerControl] resource's state with the given [name] and [id].
  static ControlTowerControl get(
    String name,
    pulumi.Input<String> id, {
    ControlTowerControlState? state,
  }) {
    return ControlTowerControl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ControlTowerControl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:controltower/controlTowerControl:ControlTowerControl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    controlIdentifier = registerOutput<String>('controlIdentifier');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    region = registerOutput<String>('region');
    targetIdentifier = registerOutput<String>('targetIdentifier');
  }
}
