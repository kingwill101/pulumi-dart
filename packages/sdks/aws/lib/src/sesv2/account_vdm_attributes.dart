import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_vdm_attributes_args.dart';
import 'account_vdm_attributes_dashboard_attributes.dart';
import 'account_vdm_attributes_guardian_attributes.dart';
import 'account_vdm_attributes_state.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Account VDM Attributes.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.AccountVdmAttributes("example", {
///     vdmEnabled: "ENABLED",
///     dashboardAttributes: {
///         engagementMetrics: "ENABLED",
///     },
///     guardianAttributes: {
///         optimizedSharedDelivery: "ENABLED",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.AccountVdmAttributes("example",
///     vdm_enabled="ENABLED",
///     dashboard_attributes={
///         "engagement_metrics": "ENABLED",
///     },
///     guardian_attributes={
///         "optimized_shared_delivery": "ENABLED",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SesV2.AccountVdmAttributes("example", new()
///     {
///         VdmEnabled = "ENABLED",
///         DashboardAttributes = new Aws.SesV2.Inputs.AccountVdmAttributesDashboardAttributesArgs
///         {
///             EngagementMetrics = "ENABLED",
///         },
///         GuardianAttributes = new Aws.SesV2.Inputs.AccountVdmAttributesGuardianAttributesArgs
///         {
///             OptimizedSharedDelivery = "ENABLED",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sesv2.NewAccountVdmAttributes(ctx, "example", &sesv2.AccountVdmAttributesArgs{
/// 			VdmEnabled: pulumi.String("ENABLED"),
/// 			DashboardAttributes: &sesv2.AccountVdmAttributesDashboardAttributesArgs{
/// 				EngagementMetrics: pulumi.String("ENABLED"),
/// 			},
/// 			GuardianAttributes: &sesv2.AccountVdmAttributesGuardianAttributesArgs{
/// 				OptimizedSharedDelivery: pulumi.String("ENABLED"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sesv2.AccountVdmAttributes;
/// import com.pulumi.aws.sesv2.AccountVdmAttributesArgs;
/// import com.pulumi.aws.sesv2.inputs.AccountVdmAttributesDashboardAttributesArgs;
/// import com.pulumi.aws.sesv2.inputs.AccountVdmAttributesGuardianAttributesArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new AccountVdmAttributes("example", AccountVdmAttributesArgs.builder()
///             .vdmEnabled("ENABLED")
///             .dashboardAttributes(AccountVdmAttributesDashboardAttributesArgs.builder()
///                 .engagementMetrics("ENABLED")
///                 .build())
///             .guardianAttributes(AccountVdmAttributesGuardianAttributesArgs.builder()
///                 .optimizedSharedDelivery("ENABLED")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:AccountVdmAttributes
///     properties:
///       vdmEnabled: ENABLED
///       dashboardAttributes:
///         engagementMetrics: ENABLED
///       guardianAttributes:
///         optimizedSharedDelivery: ENABLED
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Account VDM Attributes using the word `ses-account-vdm-attributes`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/accountVdmAttributes:AccountVdmAttributes example ses-account-vdm-attributes
/// ```
class AccountVdmAttributes extends pulumi.CustomResource {
  /// Specifies additional settings for your VDM configuration as applicable to the Dashboard.
  late final pulumi.Output<AccountVdmAttributesDashboardAttributes>
  dashboardAttributes;

  /// Specifies additional settings for your VDM configuration as applicable to the Guardian.
  late final pulumi.Output<AccountVdmAttributesGuardianAttributes>
  guardianAttributes;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies the status of your VDM configuration. Valid values: `ENABLED`, `DISABLED`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vdmEnabled;

  /// Creates a new [AccountVdmAttributes].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountVdmAttributes]. {@macro pulumi_sesv2_account_vdm_attributes_account_vdm_attributes_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountVdmAttributes(
    String name, {
    AccountVdmAttributesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sesv2/accountVdmAttributes:AccountVdmAttributes',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dashboardAttributes =
        registerOutput<AccountVdmAttributesDashboardAttributes>(
          'dashboardAttributes',
        );
    guardianAttributes = registerOutput<AccountVdmAttributesGuardianAttributes>(
      'guardianAttributes',
    );
    region = registerOutput<String>('region');
    vdmEnabled = registerOutput<String>('vdmEnabled');
  }

  /// Gets an existing [AccountVdmAttributes] resource's state with the given [name] and [id].
  static AccountVdmAttributes get(
    String name,
    pulumi.Input<String> id, {
    AccountVdmAttributesState? state,
  }) {
    return AccountVdmAttributes._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountVdmAttributes._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sesv2/accountVdmAttributes:AccountVdmAttributes',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dashboardAttributes =
        registerOutput<AccountVdmAttributesDashboardAttributes>(
          'dashboardAttributes',
        );
    guardianAttributes = registerOutput<AccountVdmAttributesGuardianAttributes>(
      'guardianAttributes',
    );
    region = registerOutput<String>('region');
    vdmEnabled = registerOutput<String>('vdmEnabled');
  }
}
