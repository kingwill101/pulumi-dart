import 'package:pulumi/pulumi.dart' as pulumi;
import 'constraint_args.dart';
import 'constraint_state.dart';

/// Manages a Service Catalog Constraint.
///
/// &gt; **NOTE:** This resource does not associate a Service Catalog product and portfolio. However, the product and portfolio must be associated (see the `aws.servicecatalog.ProductPortfolioAssociation` resource) prior to creating a constraint or you will receive an error.
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
/// const example = new aws.servicecatalog.Constraint("example", {
///     description: "Back off, man. I'm a scientist.",
///     portfolioId: exampleAwsServicecatalogPortfolio.id,
///     productId: exampleAwsServicecatalogProduct.id,
///     type: "LAUNCH",
///     parameters: JSON.stringify({
///         RoleArn: "arn:aws:iam::123456789012:role/LaunchRole",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.Constraint("example",
///     description="Back off, man. I'm a scientist.",
///     portfolio_id=example_aws_servicecatalog_portfolio["id"],
///     product_id=example_aws_servicecatalog_product["id"],
///     type="LAUNCH",
///     parameters=json.dumps({
///         "RoleArn": "arn:aws:iam::123456789012:role/LaunchRole",
///     }))
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
///     var example = new Aws.ServiceCatalog.Constraint("example", new()
///     {
///         Description = "Back off, man. I'm a scientist.",
///         PortfolioId = exampleAwsServicecatalogPortfolio.Id,
///         ProductId = exampleAwsServicecatalogProduct.Id,
///         Type = "LAUNCH",
///         Parameters = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["RoleArn"] = "arn:aws:iam::123456789012:role/LaunchRole",
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"RoleArn": "arn:aws:iam::123456789012:role/LaunchRole",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = servicecatalog.NewConstraint(ctx, "example", &servicecatalog.ConstraintArgs{
/// 			Description: pulumi.String("Back off, man. I'm a scientist."),
/// 			PortfolioId: pulumi.Any(exampleAwsServicecatalogPortfolio.Id),
/// 			ProductId:   pulumi.Any(exampleAwsServicecatalogProduct.Id),
/// 			Type:        pulumi.String("LAUNCH"),
/// 			Parameters:  pulumi.String(json0),
/// 		})
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
/// resource "aws_servicecatalog_constraint" "example" {
///   description  = "Back off, man. I'm a scientist."
///   portfolio_id = exampleAwsServicecatalogPortfolio.id
///   product_id   = exampleAwsServicecatalogProduct.id
///   type         = "LAUNCH"
///   parameters = jsonencode({
///     "RoleArn" = "arn:aws:iam::123456789012:role/LaunchRole"
///   })
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
///         var example = new Constraint("example", ConstraintArgs.builder()
///             .description("Back off, man. I'm a scientist.")
///             .portfolioId(exampleAwsServicecatalogPortfolio.id())
///             .productId(exampleAwsServicecatalogProduct.id())
///             .type("LAUNCH")
///             .parameters(serializeJson(
///                 jsonObject(
///                     jsonProperty("RoleArn", "arn:aws:iam::123456789012:role/LaunchRole")
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicecatalog:Constraint
///     properties:
///       description: Back off, man. I'm a scientist.
///       portfolioId: ${exampleAwsServicecatalogPortfolio.id}
///       productId: ${exampleAwsServicecatalogProduct.id}
///       type: LAUNCH
///       parameters:
///         fn::toJSON:
///           RoleArn: arn:aws:iam::123456789012:role/LaunchRole
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.Constraint` using the constraint ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/constraint:Constraint example cons-nmdkb6cgxfcrs
/// ```
class Constraint extends pulumi.CustomResource {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  late final pulumi.Output<String?> acceptLanguage;
  /// Description of the constraint.
  late final pulumi.Output<String> description;
  /// Owner of the constraint.
  late final pulumi.Output<String> owner;
  /// Constraint parameters in JSON format. The syntax depends on the constraint type. See details below.
  late final pulumi.Output<String> parameters;
  /// Portfolio identifier.
  late final pulumi.Output<String> portfolioId;
  /// Product identifier.
  late final pulumi.Output<String> productId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> status;
  /// Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `RESOURCE_UPDATE`, `STACKSET`, and `TEMPLATE`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  /// Creates a new [Constraint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Constraint]. {@macro pulumi_servicecatalog_constraint_constraint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Constraint(
    String name, {
    ConstraintArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/constraint:Constraint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    description = registerOutput<String>('description');
    owner = registerOutput<String>('owner');
    parameters = registerOutput<String>('parameters');
    portfolioId = registerOutput<String>('portfolioId');
    productId = registerOutput<String>('productId');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [Constraint] resource's state with the given [name] and [id].
  static Constraint get(
    String name,
    pulumi.Input<String> id, {
    ConstraintState? state,
  }) {
    return Constraint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Constraint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/constraint:Constraint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    description = registerOutput<String>('description');
    owner = registerOutput<String>('owner');
    parameters = registerOutput<String>('parameters');
    portfolioId = registerOutput<String>('portfolioId');
    productId = registerOutput<String>('productId');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
  }
}
