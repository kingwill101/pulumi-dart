import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioned_product_args.dart';
import 'provisioned_product_stack_set_provisioning_preferences.dart';
import 'provisioned_product_state.dart';

/// This resource provisions and manages a Service Catalog provisioned product.
///
/// A provisioned product is a resourced instance of a product. For example, provisioning a product based on a CloudFormation template launches a CloudFormation stack and its underlying resources.
///
/// Like this resource, the `aws_servicecatalog_record` data source also provides information about a provisioned product. Although a Service Catalog record provides some overlapping information with this resource, a record is tied to a provisioned product event, such as provisioning, termination, and updating.
///
/// &gt; **Tip:** If you include conflicted keys as tags, AWS will report an error, "Parameter validation failed: Missing required parameter in Tags[N]:Value".
///
/// &gt; **Tip:** A "provisioning artifact" is also referred to as a "version." A "distributor" is also referred to as a "vendor."
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
/// const example = new aws.servicecatalog.ProvisionedProduct("example", {
///     name: "example",
///     productName: "Example product",
///     provisioningArtifactName: "Example version",
///     provisioningParameters: [{
///         key: "foo",
///         value: "bar",
///     }],
///     tags: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.ProvisionedProduct("example",
///     name="example",
///     product_name="Example product",
///     provisioning_artifact_name="Example version",
///     provisioning_parameters=[{
///         "key": "foo",
///         "value": "bar",
///     }],
///     tags={
///         "foo": "bar",
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
///     var example = new Aws.ServiceCatalog.ProvisionedProduct("example", new()
///     {
///         Name = "example",
///         ProductName = "Example product",
///         ProvisioningArtifactName = "Example version",
///         ProvisioningParameters = new[]
///         {
///             new Aws.ServiceCatalog.Inputs.ProvisionedProductProvisioningParameterArgs
///             {
///                 Key = "foo",
///                 Value = "bar",
///             },
///         },
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicecatalog.NewProvisionedProduct(ctx, "example", &servicecatalog.ProvisionedProductArgs{
/// 			Name:                     pulumi.String("example"),
/// 			ProductName:              pulumi.String("Example product"),
/// 			ProvisioningArtifactName: pulumi.String("Example version"),
/// 			ProvisioningParameters: servicecatalog.ProvisionedProductProvisioningParameterArray{
/// 				&servicecatalog.ProvisionedProductProvisioningParameterArgs{
/// 					Key:   pulumi.String("foo"),
/// 					Value: pulumi.String("bar"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// import com.pulumi.aws.servicecatalog.ProvisionedProduct;
/// import com.pulumi.aws.servicecatalog.ProvisionedProductArgs;
/// import com.pulumi.aws.servicecatalog.inputs.ProvisionedProductProvisioningParameterArgs;
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
///         var example = new ProvisionedProduct("example", ProvisionedProductArgs.builder()
///             .name("example")
///             .productName("Example product")
///             .provisioningArtifactName("Example version")
///             .provisioningParameters(ProvisionedProductProvisioningParameterArgs.builder()
///                 .key("foo")
///                 .value("bar")
///                 .build())
///             .tags(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicecatalog:ProvisionedProduct
///     properties:
///       name: example
///       productName: Example product
///       provisioningArtifactName: Example version
///       provisioningParameters:
///         - key: foo
///           value: bar
///       tags:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.ProvisionedProduct` using the provisioned product ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/provisionedProduct:ProvisionedProduct example pp-dnigbtea24ste
/// ```
class ProvisionedProduct extends pulumi.CustomResource {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  late final pulumi.Output<String?> acceptLanguage;

  /// ARN of the provisioned product.
  late final pulumi.Output<String> arn;

  /// Set of CloudWatch dashboards that were created when provisioning the product.
  late final pulumi.Output<List<String>> cloudwatchDashboardNames;

  /// Time when the provisioned product was created.
  late final pulumi.Output<String> createdTime;

  /// _Only applies to deleting._ If set to `true`, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources. The default value is `false`.
  late final pulumi.Output<bool?> ignoreErrors;

  /// Record identifier of the last request performed on this provisioned product of the following types: `ProvisionedProduct`, `UpdateProvisionedProduct`, `ExecuteProvisionedProductPlan`, `TerminateProvisionedProduct`.
  late final pulumi.Output<String> lastProvisioningRecordId;

  /// Record identifier of the last request performed on this provisioned product.
  late final pulumi.Output<String> lastRecordId;

  /// Record identifier of the last successful request performed on this provisioned product of the following types: `ProvisionedProduct`, `UpdateProvisionedProduct`, `ExecuteProvisionedProductPlan`, `TerminateProvisionedProduct`.
  late final pulumi.Output<String> lastSuccessfulProvisioningRecordId;

  /// ARN of the launch role associated with the provisioned product.
  late final pulumi.Output<String> launchRoleArn;

  /// User-friendly name of the provisioned product.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.
  late final pulumi.Output<List<String>?> notificationArns;

  /// The set of outputs for the product created.
  late final pulumi.Output<List<Map<String, dynamic>>> outputs;

  /// Path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use `aws.servicecatalog.getLaunchPaths`. When required, you must provide `path_id` or `path_name`, but not both.
  late final pulumi.Output<String> pathId;

  /// Name of the path. You must provide `path_id` or `path_name`, but not both.
  late final pulumi.Output<String?> pathName;

  /// Product identifier. For example, `prod-abcdzk7xy33qa`. You must provide `product_id` or `product_name`, but not both.
  late final pulumi.Output<String> productId;

  /// Name of the product. You must provide `product_id` or `product_name`, but not both.
  late final pulumi.Output<String?> productName;

  /// Identifier of the provisioning artifact. For example, `pa-4abcdjnxjj6ne`. You must provide the `provisioning_artifact_id` or `provisioning_artifact_name`, but not both.
  late final pulumi.Output<String> provisioningArtifactId;

  /// Name of the provisioning artifact. You must provide the `provisioning_artifact_id` or `provisioning_artifact_name`, but not both.
  late final pulumi.Output<String?> provisioningArtifactName;

  /// Configuration block with parameters specified by the administrator that are required for provisioning the product. See `provisioning_parameters` Block for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> provisioningParameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// _Only applies to deleting._ Whether to delete the Service Catalog provisioned product but leave the CloudFormation stack, stack set, or the underlying resources of the deleted provisioned product. The default value is `false`.
  late final pulumi.Output<bool?> retainPhysicalResources;

  /// Configuration block with information about the provisioning preferences for a stack set. See `stack_set_provisioning_preferences` Block for details.
  late final pulumi.Output<ProvisionedProductStackSetProvisioningPreferences?>
  stackSetProvisioningPreferences;

  /// Current status of the provisioned product. See meanings below.
  late final pulumi.Output<String> status;

  /// Current status message of the provisioned product.
  late final pulumi.Output<String> statusMessage;

  /// Tags to apply to the provisioned product. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Type of provisioned product. Valid values are `CFN_STACK` and `CFN_STACKSET`.
  late final pulumi.Output<String> type;

  /// Creates a new [ProvisionedProduct].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProvisionedProduct]. {@macro pulumi_servicecatalog_provisioned_product_provisioned_product_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProvisionedProduct(
    String name, {
    ProvisionedProductArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicecatalog/provisionedProduct:ProvisionedProduct',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    arn = registerOutput<String>('arn');
    cloudwatchDashboardNames = registerOutput<List<String>>(
      'cloudwatchDashboardNames',
    );
    createdTime = registerOutput<String>('createdTime');
    ignoreErrors = registerOutput<bool?>('ignoreErrors');
    lastProvisioningRecordId = registerOutput<String>(
      'lastProvisioningRecordId',
    );
    lastRecordId = registerOutput<String>('lastRecordId');
    lastSuccessfulProvisioningRecordId = registerOutput<String>(
      'lastSuccessfulProvisioningRecordId',
    );
    launchRoleArn = registerOutput<String>('launchRoleArn');
    this.name = registerOutput<String>('name');
    notificationArns = registerOutput<List<String>?>('notificationArns');
    outputs = registerOutput<List<Map<String, dynamic>>>('outputs');
    pathId = registerOutput<String>('pathId');
    pathName = registerOutput<String?>('pathName');
    productId = registerOutput<String>('productId');
    productName = registerOutput<String?>('productName');
    provisioningArtifactId = registerOutput<String>('provisioningArtifactId');
    provisioningArtifactName = registerOutput<String?>(
      'provisioningArtifactName',
    );
    provisioningParameters = registerOutput<List<Map<String, dynamic>>?>(
      'provisioningParameters',
    );
    region = registerOutput<String>('region');
    retainPhysicalResources = registerOutput<bool?>('retainPhysicalResources');
    stackSetProvisioningPreferences =
        registerOutput<ProvisionedProductStackSetProvisioningPreferences?>(
          'stackSetProvisioningPreferences',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ProvisionedProductStackSetProvisioningPreferences.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [ProvisionedProduct] resource's state with the given [name] and [id].
  static ProvisionedProduct get(
    String name,
    pulumi.Input<String> id, {
    ProvisionedProductState? state,
  }) {
    return ProvisionedProduct._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProvisionedProduct._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicecatalog/provisionedProduct:ProvisionedProduct',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    arn = registerOutput<String>('arn');
    cloudwatchDashboardNames = registerOutput<List<String>>(
      'cloudwatchDashboardNames',
    );
    createdTime = registerOutput<String>('createdTime');
    ignoreErrors = registerOutput<bool?>('ignoreErrors');
    lastProvisioningRecordId = registerOutput<String>(
      'lastProvisioningRecordId',
    );
    lastRecordId = registerOutput<String>('lastRecordId');
    lastSuccessfulProvisioningRecordId = registerOutput<String>(
      'lastSuccessfulProvisioningRecordId',
    );
    launchRoleArn = registerOutput<String>('launchRoleArn');
    this.name = registerOutput<String>('name');
    notificationArns = registerOutput<List<String>?>('notificationArns');
    outputs = registerOutput<List<Map<String, dynamic>>>('outputs');
    pathId = registerOutput<String>('pathId');
    pathName = registerOutput<String?>('pathName');
    productId = registerOutput<String>('productId');
    productName = registerOutput<String?>('productName');
    provisioningArtifactId = registerOutput<String>('provisioningArtifactId');
    provisioningArtifactName = registerOutput<String?>(
      'provisioningArtifactName',
    );
    provisioningParameters = registerOutput<List<Map<String, dynamic>>?>(
      'provisioningParameters',
    );
    region = registerOutput<String>('region');
    retainPhysicalResources = registerOutput<bool?>('retainPhysicalResources');
    stackSetProvisioningPreferences =
        registerOutput<ProvisionedProductStackSetProvisioningPreferences?>(
          'stackSetProvisioningPreferences',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ProvisionedProductStackSetProvisioningPreferences.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    status = registerOutput<String>('status');
    statusMessage = registerOutput<String>('statusMessage');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
  }
}
