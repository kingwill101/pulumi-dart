import 'package:pulumi/pulumi.dart';
import 'constraint_args.dart';

/// Manages a Service Catalog Constraint.
///
/// > **NOTE:** This resource does not associate a Service Catalog product and portfolio. However, the product and portfolio must be associated (see the <span pulumi-lang-nodejs="`aws.servicecatalog.ProductPortfolioAssociation`" pulumi-lang-dotnet="`aws.servicecatalog.ProductPortfolioAssociation`" pulumi-lang-go="`servicecatalog.ProductPortfolioAssociation`" pulumi-lang-python="`servicecatalog.ProductPortfolioAssociation`" pulumi-lang-yaml="`aws.servicecatalog.ProductPortfolioAssociation`" pulumi-lang-java="`aws.servicecatalog.ProductPortfolioAssociation`">`aws.servicecatalog.ProductPortfolioAssociation`</span> resource) prior to creating a constraint or you will receive an error.
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
/// const example = new aws.servicecatalog.Constraint("example", {
/// description: "Back off, man. I'm a scientist.",
/// portfolioId: exampleAwsServicecatalogPortfolio.id,
/// productId: exampleAwsServicecatalogProduct.id,
/// type: "LAUNCH",
/// parameters: JSON.stringify({
/// RoleArn: "arn:aws:iam::123456789012:role/LaunchRole",
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.Constraint("example",
/// description="Back off, man. I'm a scientist.",
/// portfolio_id=example_aws_servicecatalog_portfolio["id"],
/// product_id=example_aws_servicecatalog_product["id"],
/// type="LAUNCH",
/// parameters=json.dumps({
/// "RoleArn": "arn:aws:iam::123456789012:role/LaunchRole",
/// }))
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
/// var example = new Aws.ServiceCatalog.Constraint("example", new()
/// {
/// Description = "Back off, man. I'm a scientist.",
/// PortfolioId = exampleAwsServicecatalogPortfolio.Id,
/// ProductId = exampleAwsServicecatalogProduct.Id,
/// Type = "LAUNCH",
/// Parameters = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["RoleArn"] = "arn:aws:iam::123456789012:role/LaunchRole",
/// }),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "RoleArn": "arn:aws:iam::123456789012:role/LaunchRole",
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = servicecatalog.NewConstraint(ctx, "example", &servicecatalog.ConstraintArgs{
/// Description: pulumi.String("Back off, man. I'm a scientist."),
/// PortfolioId: pulumi.Any(exampleAwsServicecatalogPortfolio.Id),
/// ProductId:   pulumi.Any(exampleAwsServicecatalogProduct.Id),
/// Type:        pulumi.String("LAUNCH"),
/// Parameters:  pulumi.String(json0),
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
/// import com.pulumi.aws.servicecatalog.Constraint;
/// import com.pulumi.aws.servicecatalog.ConstraintArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// var example = new Constraint("example", ConstraintArgs.builder()
/// .description("Back off, man. I'm a scientist.")
/// .portfolioId(exampleAwsServicecatalogPortfolio.id())
/// .productId(exampleAwsServicecatalogProduct.id())
/// .type("LAUNCH")
/// .parameters(serializeJson(
/// jsonObject(
/// jsonProperty("RoleArn", "arn:aws:iam::123456789012:role/LaunchRole")
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:servicecatalog:Constraint
/// properties:
/// description: Back off, man. I'm a scientist.
/// portfolioId: ${exampleAwsServicecatalogPortfolio.id}
/// productId: ${exampleAwsServicecatalogProduct.id}
/// type: LAUNCH
/// parameters:
/// fn::toJSON:
/// RoleArn: arn:aws:iam::123456789012:role/LaunchRole
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.servicecatalog.Constraint`" pulumi-lang-dotnet="`aws.servicecatalog.Constraint`" pulumi-lang-go="`servicecatalog.Constraint`" pulumi-lang-python="`servicecatalog.Constraint`" pulumi-lang-yaml="`aws.servicecatalog.Constraint`" pulumi-lang-java="`aws.servicecatalog.Constraint`">`aws.servicecatalog.Constraint`</span> using the constraint ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/constraint:Constraint example cons-nmdkb6cgxfcrs
/// ```
class Constraint extends CustomResource {
  /// Language code. Valid values: <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span> (English), <span pulumi-lang-nodejs="`jp`" pulumi-lang-dotnet="`Jp`" pulumi-lang-go="`jp`" pulumi-lang-python="`jp`" pulumi-lang-yaml="`jp`" pulumi-lang-java="`jp`">`jp`</span> (Japanese), <span pulumi-lang-nodejs="`zh`" pulumi-lang-dotnet="`Zh`" pulumi-lang-go="`zh`" pulumi-lang-python="`zh`" pulumi-lang-yaml="`zh`" pulumi-lang-java="`zh`">`zh`</span> (Chinese). Default value is <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span>.
  late final Output<String?> acceptLanguage;

  /// Description of the constraint.
  late final Output<String> description;

  /// Owner of the constraint.
  late final Output<String> owner;

  /// Constraint parameters in JSON format. The syntax depends on the constraint type. See details below.
  late final Output<String> parameters;

  /// Portfolio identifier.
  late final Output<String> portfolioId;

  /// Product identifier.
  late final Output<String> productId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<String> status;

  /// Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `RESOURCE_UPDATE`, `STACKSET`, and `TEMPLATE`.
  ///
  /// The following arguments are optional:
  late final Output<String> type;

  Constraint(
    String name, {
    ConstraintArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/constraint:Constraint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceptLanguage = registerOutput<String?>('acceptLanguage');
    this.description = registerOutput<String>('description');
    this.owner = registerOutput<String>('owner');
    this.parameters = registerOutput<String>('parameters');
    this.portfolioId = registerOutput<String>('portfolioId');
    this.productId = registerOutput<String>('productId');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.type = registerOutput<String>('type');
  }
}
