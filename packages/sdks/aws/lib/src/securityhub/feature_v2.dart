import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_v2_args.dart';
import 'feature_v2_state.dart';

/// Manages an opt-in [Security Hub V2](https://docs.aws.amazon.com/securityhub/latest/userguide/what-is-securityhub.html) feature, such as network scanning (NetScan), for the calling account in the current AWS Region.
///
/// &gt; **NOTE:** Security Hub V2 must be enabled (see `aws.securityhub.AccountV2`) before you can enable a feature. Use `dependsOn` to ensure the correct ordering.
///
/// &gt; **NOTE:** Deleting this resource does not disable the feature, the resource in simply removed from state instead.
///
/// &gt; **NOTE:** You cannot enable a feature that is managed by an organization policy.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.AccountV2("example", {});
/// const exampleFeatureV2 = new aws.securityhub.FeatureV2("example", {
///     featureName: "NETWORK_SCANNING",
///     featureStatus: "ENABLED",
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.AccountV2("example")
/// example_feature_v2 = aws.securityhub.FeatureV2("example",
///     feature_name="NETWORK_SCANNING",
///     feature_status="ENABLED",
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityHub.AccountV2("example");
///
///     var exampleFeatureV2 = new Aws.SecurityHub.FeatureV2("example", new()
///     {
///         FeatureName = "NETWORK_SCANNING",
///         FeatureStatus = "ENABLED",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := securityhub.NewAccountV2(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewFeatureV2(ctx, "example", &securityhub.FeatureV2Args{
/// 			FeatureName:   pulumi.String("NETWORK_SCANNING"),
/// 			FeatureStatus: pulumi.String("ENABLED"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
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
/// resource "aws_securityhub_accountv2" "example" {
/// }
/// resource "aws_securityhub_featurev2" "example" {
///   depends_on     = [aws_securityhub_accountv2.example]
///   feature_name   = "NETWORK_SCANNING"
///   feature_status = "ENABLED"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.AccountV2;
/// import com.pulumi.aws.securityhub.FeatureV2;
/// import com.pulumi.aws.securityhub.FeatureV2Args;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new AccountV2("example");
///
///         var exampleFeatureV2 = new FeatureV2("exampleFeatureV2", FeatureV2Args.builder()
///             .featureName("NETWORK_SCANNING")
///             .featureStatus("ENABLED")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securityhub:AccountV2
///   exampleFeatureV2:
///     type: aws:securityhub:FeatureV2
///     name: example
///     properties:
///       featureName: NETWORK_SCANNING
///       featureStatus: ENABLED
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `featureName` (String) Name of the opt-in Security Hub V2 feature.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Security Hub V2 features using `featureName`. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/featureV2:FeatureV2 example NETWORK_SCANNING
/// ```
class FeatureV2 extends pulumi.CustomResource {
  /// Name of the opt-in feature to enable. Valid values: `NETWORK_SCANNING`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> featureName;
  /// Current enablement status of the feature. Valid values: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String> featureStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [FeatureV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FeatureV2]. {@macro pulumi_securityhub_feature_v2_feature_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FeatureV2(
    String name, {
    FeatureV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/featureV2:FeatureV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    featureName = registerOutput<String>('featureName');
    featureStatus = registerOutput<String>('featureStatus');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [FeatureV2] resource's state with the given [name] and [id].
  static FeatureV2 get(
    String name,
    pulumi.Input<String> id, {
    FeatureV2State? state,
  }) {
    return FeatureV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FeatureV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/featureV2:FeatureV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    featureName = registerOutput<String>('featureName');
    featureStatus = registerOutput<String>('featureStatus');
    region = registerOutput<String>('region');
  }
}
