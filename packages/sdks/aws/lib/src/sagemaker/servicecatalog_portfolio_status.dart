import 'package:pulumi/pulumi.dart' as pulumi;
import 'servicecatalog_portfolio_status_args.dart';
import 'servicecatalog_portfolio_status_state.dart';

/// Manages status of Service Catalog in SageMaker. Service Catalog is used to create SageMaker AI projects.
///
/// ## Example Usage
///
/// Usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.ServicecatalogPortfolioStatus("example", {status: "Enabled"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.ServicecatalogPortfolioStatus("example", status="Enabled")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.ServicecatalogPortfolioStatus("example", new()
///     {
///         Status = "Enabled",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewServicecatalogPortfolioStatus(ctx, "example", &sagemaker.ServicecatalogPortfolioStatusArgs{
/// 			Status: pulumi.String("Enabled"),
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
/// import com.pulumi.aws.sagemaker.ServicecatalogPortfolioStatus;
/// import com.pulumi.aws.sagemaker.ServicecatalogPortfolioStatusArgs;
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
///         var example = new ServicecatalogPortfolioStatus("example", ServicecatalogPortfolioStatusArgs.builder()
///             .status("Enabled")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:ServicecatalogPortfolioStatus
///     properties:
///       status: Enabled
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import models using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/servicecatalogPortfolioStatus:ServicecatalogPortfolioStatus example us-east-1
/// ```
class ServicecatalogPortfolioStatus extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Whether Service Catalog is enabled or disabled in SageMaker. Valid values are `Enabled` and `Disabled`.
  late final pulumi.Output<String> status;

  /// Creates a new [ServicecatalogPortfolioStatus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServicecatalogPortfolioStatus]. {@macro pulumi_sagemaker_servicecatalog_portfolio_status_servicecatalog_portfolio_status_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServicecatalogPortfolioStatus(
    String name, {
    ServicecatalogPortfolioStatusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/servicecatalogPortfolioStatus:ServicecatalogPortfolioStatus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [ServicecatalogPortfolioStatus] resource's state with the given [name] and [id].
  static ServicecatalogPortfolioStatus get(
    String name,
    pulumi.Input<String> id, {
    ServicecatalogPortfolioStatusState? state,
  }) {
    return ServicecatalogPortfolioStatus._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServicecatalogPortfolioStatus._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/servicecatalogPortfolioStatus:ServicecatalogPortfolioStatus',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
  }
}
