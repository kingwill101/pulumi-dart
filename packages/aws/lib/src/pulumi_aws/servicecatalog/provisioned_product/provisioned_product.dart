import 'package:pulumi/pulumi.dart';
import '../provisioned_product_output/provisioned_product_output.dart';
import '../provisioned_product_provisioning_parameter/provisioned_product_provisioning_parameter.dart';
import '../provisioned_product_stack_set_provisioning_preferences/provisioned_product_stack_set_provisioning_preferences.dart';
import 'provisioned_product_args.dart';

/// This resource provisions and manages a Service Catalog provisioned product.
///
/// A provisioned product is a resourced instance of a product. For example, provisioning a product based on a CloudFormation template launches a CloudFormation stack and its underlying resources.
///
/// Like this resource, the <span pulumi-lang-nodejs="`awsServicecatalogRecord`" pulumi-lang-dotnet="`AwsServicecatalogRecord`" pulumi-lang-go="`awsServicecatalogRecord`" pulumi-lang-python="`aws_servicecatalog_record`" pulumi-lang-yaml="`awsServicecatalogRecord`" pulumi-lang-java="`awsServicecatalogRecord`">`aws_servicecatalog_record`</span> data source also provides information about a provisioned product. Although a Service Catalog record provides some overlapping information with this resource, a record is tied to a provisioned product event, such as provisioning, termination, and updating.
///
/// > **Tip:** If you include conflicted keys as tags, AWS will report an error, "Parameter validation failed: Missing required parameter in Tags[N]:Value".
///
/// > **Tip:** A "provisioning artifact" is also referred to as a "version." A "distributor" is also referred to as a "vendor."
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicecatalog.ProvisionedProduct("example", {
/// name: "example",
/// productName: "Example product",
/// provisioningArtifactName: "Example version",
/// provisioningParameters: [{
/// key: "foo",
/// value: "bar",
/// }],
/// tags: {
/// foo: "bar",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.ProvisionedProduct("example",
/// name="example",
/// product_name="Example product",
/// provisioning_artifact_name="Example version",
/// provisioning_parameters=[{
/// "key": "foo",
/// "value": "bar",
/// }],
/// tags={
/// "foo": "bar",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ServiceCatalog.ProvisionedProduct("example", new()
/// {
/// Name = "example",
/// ProductName = "Example product",
/// ProvisioningArtifactName = "Example version",
/// ProvisioningParameters = new[]
/// {
/// new Aws.ServiceCatalog.Inputs.ProvisionedProductProvisioningParameterArgs
/// {
/// Key = "foo",
/// Value = "bar",
/// },
/// },
/// Tags =
/// {
/// { "foo", "bar" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := servicecatalog.NewProvisionedProduct(ctx, "example", &servicecatalog.ProvisionedProductArgs{
/// Name:                     pulumi.String("example"),
/// ProductName:              pulumi.String("Example product"),
/// ProvisioningArtifactName: pulumi.String("Example version"),
/// ProvisioningParameters: servicecatalog.ProvisionedProductProvisioningParameterArray{
/// &servicecatalog.ProvisionedProductProvisioningParameterArgs{
/// Key:   pulumi.String("foo"),
/// Value: pulumi.String("bar"),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ProvisionedProduct("example", ProvisionedProductArgs.builder()
/// .name("example")
/// .productName("Example product")
/// .provisioningArtifactName("Example version")
/// .provisioningParameters(ProvisionedProductProvisioningParameterArgs.builder()
/// .key("foo")
/// .value("bar")
/// .build())
/// .tags(Map.of("foo", "bar"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:servicecatalog:ProvisionedProduct
/// properties:
/// name: example
/// productName: Example product
/// provisioningArtifactName: Example version
/// provisioningParameters:
/// - key: foo
/// value: bar
/// tags:
/// foo: bar
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.servicecatalog.ProvisionedProduct`" pulumi-lang-dotnet="`aws.servicecatalog.ProvisionedProduct`" pulumi-lang-go="`servicecatalog.ProvisionedProduct`" pulumi-lang-python="`servicecatalog.ProvisionedProduct`" pulumi-lang-yaml="`aws.servicecatalog.ProvisionedProduct`" pulumi-lang-java="`aws.servicecatalog.ProvisionedProduct`">`aws.servicecatalog.ProvisionedProduct`</span> using the provisioned product ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/provisionedProduct:ProvisionedProduct example pp-dnigbtea24ste
/// ```
class ProvisionedProduct extends CustomResource {
  /// Language code. Valid values: <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span> (English), <span pulumi-lang-nodejs="`jp`" pulumi-lang-dotnet="`Jp`" pulumi-lang-go="`jp`" pulumi-lang-python="`jp`" pulumi-lang-yaml="`jp`" pulumi-lang-java="`jp`">`jp`</span> (Japanese), <span pulumi-lang-nodejs="`zh`" pulumi-lang-dotnet="`Zh`" pulumi-lang-go="`zh`" pulumi-lang-python="`zh`" pulumi-lang-yaml="`zh`" pulumi-lang-java="`zh`">`zh`</span> (Chinese). Default value is <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span>.
  late final Output<String?> acceptLanguage;

  /// ARN of the provisioned product.
  late final Output<String> arn;

  /// Set of CloudWatch dashboards that were created when provisioning the product.
  late final Output<List<String>> cloudwatchDashboardNames;

  /// Time when the provisioned product was created.
  late final Output<String> createdTime;

  /// _Only applies to deleting._ If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> ignoreErrors;

  /// Record identifier of the last request performed on this provisioned product of the following types: `ProvisionedProduct`, `UpdateProvisionedProduct`, `ExecuteProvisionedProductPlan`, `TerminateProvisionedProduct`.
  late final Output<String> lastProvisioningRecordId;

  /// Record identifier of the last request performed on this provisioned product.
  late final Output<String> lastRecordId;

  /// Record identifier of the last successful request performed on this provisioned product of the following types: `ProvisionedProduct`, `UpdateProvisionedProduct`, `ExecuteProvisionedProductPlan`, `TerminateProvisionedProduct`.
  late final Output<String> lastSuccessfulProvisioningRecordId;

  /// ARN of the launch role associated with the provisioned product.
  late final Output<String> launchRoleArn;

  /// User-friendly name of the provisioned product.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.
  late final Output<List<String>?> notificationArns;

  /// The set of outputs for the product created.
  late final Output<List<ProvisionedProductOutput>> outputs;

  /// Path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use <span pulumi-lang-nodejs="`aws.servicecatalog.getLaunchPaths`" pulumi-lang-dotnet="`aws.servicecatalog.getLaunchPaths`" pulumi-lang-go="`servicecatalog.getLaunchPaths`" pulumi-lang-python="`servicecatalog_get_launch_paths`" pulumi-lang-yaml="`aws.servicecatalog.getLaunchPaths`" pulumi-lang-java="`aws.servicecatalog.getLaunchPaths`">`aws.servicecatalog.getLaunchPaths`</span>. When required, you must provide <span pulumi-lang-nodejs="`pathId`" pulumi-lang-dotnet="`PathId`" pulumi-lang-go="`pathId`" pulumi-lang-python="`path_id`" pulumi-lang-yaml="`pathId`" pulumi-lang-java="`pathId`">`path_id`</span> or <span pulumi-lang-nodejs="`pathName`" pulumi-lang-dotnet="`PathName`" pulumi-lang-go="`pathName`" pulumi-lang-python="`path_name`" pulumi-lang-yaml="`pathName`" pulumi-lang-java="`pathName`">`path_name`</span>, but not both.
  late final Output<String> pathId;

  /// Name of the path. You must provide <span pulumi-lang-nodejs="`pathId`" pulumi-lang-dotnet="`PathId`" pulumi-lang-go="`pathId`" pulumi-lang-python="`path_id`" pulumi-lang-yaml="`pathId`" pulumi-lang-java="`pathId`">`path_id`</span> or <span pulumi-lang-nodejs="`pathName`" pulumi-lang-dotnet="`PathName`" pulumi-lang-go="`pathName`" pulumi-lang-python="`path_name`" pulumi-lang-yaml="`pathName`" pulumi-lang-java="`pathName`">`path_name`</span>, but not both.
  late final Output<String?> pathName;

  /// Product identifier. For example, `prod-abcdzk7xy33qa`. You must provide <span pulumi-lang-nodejs="`productId`" pulumi-lang-dotnet="`ProductId`" pulumi-lang-go="`productId`" pulumi-lang-python="`product_id`" pulumi-lang-yaml="`productId`" pulumi-lang-java="`productId`">`product_id`</span> or <span pulumi-lang-nodejs="`productName`" pulumi-lang-dotnet="`ProductName`" pulumi-lang-go="`productName`" pulumi-lang-python="`product_name`" pulumi-lang-yaml="`productName`" pulumi-lang-java="`productName`">`product_name`</span>, but not both.
  late final Output<String> productId;

  /// Name of the product. You must provide <span pulumi-lang-nodejs="`productId`" pulumi-lang-dotnet="`ProductId`" pulumi-lang-go="`productId`" pulumi-lang-python="`product_id`" pulumi-lang-yaml="`productId`" pulumi-lang-java="`productId`">`product_id`</span> or <span pulumi-lang-nodejs="`productName`" pulumi-lang-dotnet="`ProductName`" pulumi-lang-go="`productName`" pulumi-lang-python="`product_name`" pulumi-lang-yaml="`productName`" pulumi-lang-java="`productName`">`product_name`</span>, but not both.
  late final Output<String?> productName;

  /// Identifier of the provisioning artifact. For example, `pa-4abcdjnxjj6ne`. You must provide the <span pulumi-lang-nodejs="`provisioningArtifactId`" pulumi-lang-dotnet="`ProvisioningArtifactId`" pulumi-lang-go="`provisioningArtifactId`" pulumi-lang-python="`provisioning_artifact_id`" pulumi-lang-yaml="`provisioningArtifactId`" pulumi-lang-java="`provisioningArtifactId`">`provisioning_artifact_id`</span> or <span pulumi-lang-nodejs="`provisioningArtifactName`" pulumi-lang-dotnet="`ProvisioningArtifactName`" pulumi-lang-go="`provisioningArtifactName`" pulumi-lang-python="`provisioning_artifact_name`" pulumi-lang-yaml="`provisioningArtifactName`" pulumi-lang-java="`provisioningArtifactName`">`provisioning_artifact_name`</span>, but not both.
  late final Output<String> provisioningArtifactId;

  /// Name of the provisioning artifact. You must provide the <span pulumi-lang-nodejs="`provisioningArtifactId`" pulumi-lang-dotnet="`ProvisioningArtifactId`" pulumi-lang-go="`provisioningArtifactId`" pulumi-lang-python="`provisioning_artifact_id`" pulumi-lang-yaml="`provisioningArtifactId`" pulumi-lang-java="`provisioningArtifactId`">`provisioning_artifact_id`</span> or <span pulumi-lang-nodejs="`provisioningArtifactName`" pulumi-lang-dotnet="`ProvisioningArtifactName`" pulumi-lang-go="`provisioningArtifactName`" pulumi-lang-python="`provisioning_artifact_name`" pulumi-lang-yaml="`provisioningArtifactName`" pulumi-lang-java="`provisioningArtifactName`">`provisioning_artifact_name`</span>, but not both.
  late final Output<String?> provisioningArtifactName;

  /// Configuration block with parameters specified by the administrator that are required for provisioning the product. See <span pulumi-lang-nodejs="`provisioningParameters`" pulumi-lang-dotnet="`ProvisioningParameters`" pulumi-lang-go="`provisioningParameters`" pulumi-lang-python="`provisioning_parameters`" pulumi-lang-yaml="`provisioningParameters`" pulumi-lang-java="`provisioningParameters`">`provisioning_parameters`</span> Block for details.
  late final Output<List<ProvisionedProductProvisioningParameter>?>
      provisioningParameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// _Only applies to deleting._ Whether to delete the Service Catalog provisioned product but leave the CloudFormation stack, stack set, or the underlying resources of the deleted provisioned product. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> retainPhysicalResources;

  /// Configuration block with information about the provisioning preferences for a stack set. See <span pulumi-lang-nodejs="`stackSetProvisioningPreferences`" pulumi-lang-dotnet="`StackSetProvisioningPreferences`" pulumi-lang-go="`stackSetProvisioningPreferences`" pulumi-lang-python="`stack_set_provisioning_preferences`" pulumi-lang-yaml="`stackSetProvisioningPreferences`" pulumi-lang-java="`stackSetProvisioningPreferences`">`stack_set_provisioning_preferences`</span> Block for details.
  late final Output<ProvisionedProductStackSetProvisioningPreferences?>
      stackSetProvisioningPreferences;

  /// Current status of the provisioned product. See meanings below.
  late final Output<String> status;

  /// Current status message of the provisioned product.
  late final Output<String> statusMessage;

  /// Tags to apply to the provisioned product. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Type of provisioned product. Valid values are `CFN_STACK` and `CFN_STACKSET`.
  late final Output<String> type;

  ProvisionedProduct(
    String name, {
    ProvisionedProductArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/provisionedProduct:ProvisionedProduct',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceptLanguage = Output.createUnknown<String?>();
    this.arn = Output.createUnknown<String>();
    this.cloudwatchDashboardNames = Output.createUnknown<List<String>>();
    this.createdTime = Output.createUnknown<String>();
    this.ignoreErrors = Output.createUnknown<bool?>();
    this.lastProvisioningRecordId = Output.createUnknown<String>();
    this.lastRecordId = Output.createUnknown<String>();
    this.lastSuccessfulProvisioningRecordId = Output.createUnknown<String>();
    this.launchRoleArn = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.notificationArns = Output.createUnknown<List<String>?>();
    this.outputs = Output.createUnknown<List<ProvisionedProductOutput>>();
    this.pathId = Output.createUnknown<String>();
    this.pathName = Output.createUnknown<String?>();
    this.productId = Output.createUnknown<String>();
    this.productName = Output.createUnknown<String?>();
    this.provisioningArtifactId = Output.createUnknown<String>();
    this.provisioningArtifactName = Output.createUnknown<String?>();
    this.provisioningParameters =
        Output.createUnknown<List<ProvisionedProductProvisioningParameter>?>();
    this.region = Output.createUnknown<String>();
    this.retainPhysicalResources = Output.createUnknown<bool?>();
    this.stackSetProvisioningPreferences = Output.createUnknown<
        ProvisionedProductStackSetProvisioningPreferences?>();
    this.status = Output.createUnknown<String>();
    this.statusMessage = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.type = Output.createUnknown<String>();
  }
}
