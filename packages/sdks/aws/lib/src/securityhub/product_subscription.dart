import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_subscription_args.dart';
import 'product_subscription_state.dart';

/// Subscribes to a Security Hub product.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// const current = aws.getRegion({});
/// const exampleProductSubscription = new aws.securityhub.ProductSubscription("example", {productArn: current.then(current => `arn:aws:securityhub:${current.region}:733251395267:product/alertlogic/althreatmanagement`)}, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.Account("example")
/// current = aws.get_region()
/// example_product_subscription = aws.securityhub.ProductSubscription("example", product_arn=f"arn:aws:securityhub:{current.region}:733251395267:product/alertlogic/althreatmanagement",
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityHub.Account("example");
///
///     var current = Aws.GetRegion.Invoke();
///
///     var exampleProductSubscription = new Aws.SecurityHub.ProductSubscription("example", new()
///     {
///         ProductArn = $"arn:aws:securityhub:{current.Apply(getRegionResult => getRegionResult.Region)}:733251395267:product/alertlogic/althreatmanagement",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := securityhub.NewAccount(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewProductSubscription(ctx, "example", &securityhub.ProductSubscriptionArgs{
/// 			ProductArn: pulumi.Sprintf("arn:aws:securityhub:%v:733251395267:product/alertlogic/althreatmanagement", current.Region),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.Account;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.securityhub.ProductSubscription;
/// import com.pulumi.aws.securityhub.ProductSubscriptionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Account("example");
///
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         var exampleProductSubscription = new ProductSubscription("exampleProductSubscription", ProductSubscriptionArgs.builder()
///             .productArn(String.format("arn:aws:securityhub:%s:733251395267:product/alertlogic/althreatmanagement", current.region()))
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
///     type: aws:securityhub:Account
///   exampleProductSubscription:
///     type: aws:securityhub:ProductSubscription
///     name: example
///     properties:
///       productArn: arn:aws:securityhub:${current.region}:733251395267:product/alertlogic/althreatmanagement
///     options:
///       dependsOn:
///         - ${example}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Security Hub product subscriptions using `product_arn,arn`. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/productSubscription:ProductSubscription example arn:aws:securityhub:eu-west-1:733251395267:product/alertlogic/althreatmanagement,arn:aws:securityhub:eu-west-1:123456789012:product-subscription/alertlogic/althreatmanagement
/// ```
class ProductSubscription extends pulumi.CustomResource {
  /// The ARN of a resource that represents your subscription to the product that generates the findings that you want to import into Security Hub.
  late final pulumi.Output<String> arn;
  /// The ARN of the product that generates findings that you want to import into Security Hub - see below.
  ///
  /// Amazon maintains a list of [Product integrations in AWS Security Hub](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-providers.html) that changes over time. Any of the products on the linked [Available AWS service integrations](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-internal-providers.html) or [Available third-party partner product integrations](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-partner-providers.html) can be configured using `aws.securityhub.ProductSubscription`.
  ///
  /// Available products can also be listed by running the AWS CLI command `aws securityhub describe-products`.
  ///
  /// A subset of currently available products (remember to replace `${var.region}` as appropriate) includes:
  ///
  /// * `arn:aws:securityhub:${var.region}::product/aws/guardduty`
  /// * `arn:aws:securityhub:${var.region}::product/aws/inspector`
  /// * `arn:aws:securityhub:${var.region}::product/aws/macie`
  /// * `arn:aws:securityhub:${var.region}::product/alertlogic/althreatmanagement`
  /// * `arn:aws:securityhub:${var.region}::product/armordefense/armoranywhere`
  /// * `arn:aws:securityhub:${var.region}::product/barracuda/cloudsecurityguardian`
  /// * `arn:aws:securityhub:${var.region}::product/checkpoint/cloudguard-iaas`
  /// * `arn:aws:securityhub:${var.region}::product/checkpoint/dome9-arc`
  /// * `arn:aws:securityhub:${var.region}::product/crowdstrike/crowdstrike-falcon`
  /// * `arn:aws:securityhub:${var.region}::product/cyberark/cyberark-pta`
  /// * `arn:aws:securityhub:${var.region}::product/f5networks/f5-advanced-waf`
  /// * `arn:aws:securityhub:${var.region}::product/fortinet/fortigate`
  /// * `arn:aws:securityhub:${var.region}::product/guardicore/aws-infection-monkey`
  /// * `arn:aws:securityhub:${var.region}::product/guardicore/guardicore`
  /// * `arn:aws:securityhub:${var.region}::product/ibm/qradar-siem`
  /// * `arn:aws:securityhub:${var.region}::product/imperva/imperva-attack-analytics`
  /// * `arn:aws:securityhub:${var.region}::product/mcafee-skyhigh/mcafee-mvision-cloud-aws`
  /// * `arn:aws:securityhub:${var.region}::product/paloaltonetworks/redlock`
  /// * `arn:aws:securityhub:${var.region}::product/paloaltonetworks/vm-series`
  /// * `arn:aws:securityhub:${var.region}::product/qualys/qualys-pc`
  /// * `arn:aws:securityhub:${var.region}::product/qualys/qualys-vm`
  /// * `arn:aws:securityhub:${var.region}::product/rapid7/insightvm`
  /// * `arn:aws:securityhub:${var.region}::product/sophos/sophos-server-protection`
  /// * `arn:aws:securityhub:${var.region}::product/splunk/splunk-enterprise`
  /// * `arn:aws:securityhub:${var.region}::product/splunk/splunk-phantom`
  /// * `arn:aws:securityhub:${var.region}::product/sumologicinc/sumologic-mda`
  /// * `arn:aws:securityhub:${var.region}::product/symantec-corp/symantec-cwp`
  /// * `arn:aws:securityhub:${var.region}::product/tenable/tenable-io`
  /// * `arn:aws:securityhub:${var.region}::product/trend-micro/deep-security`
  /// * `arn:aws:securityhub:${var.region}::product/turbot/turbot`
  /// * `arn:aws:securityhub:${var.region}::product/twistlock/twistlock-enterprise`
  late final pulumi.Output<String> productArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ProductSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProductSubscription]. {@macro pulumi_securityhub_product_subscription_product_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProductSubscription(
    String name, {
    ProductSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/productSubscription:ProductSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    productArn = registerOutput<String>('productArn');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [ProductSubscription] resource's state with the given [name] and [id].
  static ProductSubscription get(
    String name,
    pulumi.Input<String> id, {
    ProductSubscriptionState? state,
  }) {
    return ProductSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProductSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/productSubscription:ProductSubscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    productArn = registerOutput<String>('productArn');
    region = registerOutput<String>('region');
  }
}
