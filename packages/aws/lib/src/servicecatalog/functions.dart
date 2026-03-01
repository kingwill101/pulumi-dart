import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_appregistry_application_args.dart';
import 'get_appregistry_application_result.dart';
import 'get_appregistry_attribute_group_args.dart';
import 'get_appregistry_attribute_group_associations_args.dart';
import 'get_appregistry_attribute_group_associations_result.dart';
import 'get_appregistry_attribute_group_result.dart';
import 'get_constraint_args.dart';
import 'get_constraint_result.dart';
import 'get_launch_paths_args.dart';
import 'get_launch_paths_result.dart';
import 'get_portfolio_args.dart';
import 'get_portfolio_constraints_args.dart';
import 'get_portfolio_constraints_result.dart';
import 'get_portfolio_result.dart';
import 'get_product_args.dart';
import 'get_product_result.dart';
import 'get_provisioning_artifacts_args.dart';
import 'get_provisioning_artifacts_result.dart';

/// Data source for managing an AWS Service Catalog AppRegistry Application.
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
/// const example = aws.servicecatalog.getAppregistryApplication({
///     id: "application-1234",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.get_appregistry_application(id="application-1234")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ServiceCatalog.GetAppregistryApplication.Invoke(new()
///     {
///         Id = "application-1234",
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
/// 		_, err := servicecatalog.LookupAppregistryApplication(ctx, &servicecatalog.LookupAppregistryApplicationArgs{
/// 			Id: "application-1234",
/// 		}, nil)
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
/// import com.pulumi.aws.servicecatalog.ServicecatalogFunctions;
/// import com.pulumi.aws.servicecatalog.inputs.GetAppregistryApplicationArgs;
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
///         final var example = ServicecatalogFunctions.getAppregistryApplication(GetAppregistryApplicationArgs.builder()
///             .id("application-1234")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:servicecatalog:getAppregistryApplication
///       arguments:
///         id: application-1234
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicecatalog_get_appregistry_application_get_appregistry_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppregistryApplicationResult> getAppregistryApplication(
  GetAppregistryApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getAppregistryApplication:getAppregistryApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppregistryApplicationResult.fromMap(result);
}

/// Data source for managing an AWS Service Catalog AppRegistry Attribute Group.
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
/// const example = aws.servicecatalog.getAppregistryAttributeGroup({
///     name: "example_attribute_group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.get_appregistry_attribute_group(name="example_attribute_group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ServiceCatalog.GetAppregistryAttributeGroup.Invoke(new()
///     {
///         Name = "example_attribute_group",
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
/// 		_, err := servicecatalog.LookupAppregistryAttributeGroup(ctx, &servicecatalog.LookupAppregistryAttributeGroupArgs{
/// 			Name: pulumi.StringRef("example_attribute_group"),
/// 		}, nil)
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
/// import com.pulumi.aws.servicecatalog.ServicecatalogFunctions;
/// import com.pulumi.aws.servicecatalog.inputs.GetAppregistryAttributeGroupArgs;
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
///         final var example = ServicecatalogFunctions.getAppregistryAttributeGroup(GetAppregistryAttributeGroupArgs.builder()
///             .name("example_attribute_group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:servicecatalog:getAppregistryAttributeGroup
///       arguments:
///         name: example_attribute_group
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicecatalog_get_appregistry_attribute_group_get_appregistry_attribute_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppregistryAttributeGroupResult> getAppregistryAttributeGroup(
  GetAppregistryAttributeGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getAppregistryAttributeGroup:getAppregistryAttributeGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppregistryAttributeGroupResult.fromMap(result);
}

/// Data source for managing AWS Service Catalog AppRegistry Attribute Group Associations.
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
/// const example = aws.servicecatalog.getAppregistryAttributeGroupAssociations({
///     id: "12456778723424sdffsdfsdq34,12234t3564dsfsdf34asff4ww3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.get_appregistry_attribute_group_associations(id="12456778723424sdffsdfsdq34,12234t3564dsfsdf34asff4ww3")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ServiceCatalog.GetAppregistryAttributeGroupAssociations.Invoke(new()
///     {
///         Id = "12456778723424sdffsdfsdq34,12234t3564dsfsdf34asff4ww3",
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
/// 		_, err := servicecatalog.GetAppregistryAttributeGroupAssociations(ctx, &servicecatalog.GetAppregistryAttributeGroupAssociationsArgs{
/// 			Id: pulumi.StringRef("12456778723424sdffsdfsdq34,12234t3564dsfsdf34asff4ww3"),
/// 		}, nil)
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
/// import com.pulumi.aws.servicecatalog.ServicecatalogFunctions;
/// import com.pulumi.aws.servicecatalog.inputs.GetAppregistryAttributeGroupAssociationsArgs;
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
///         final var example = ServicecatalogFunctions.getAppregistryAttributeGroupAssociations(GetAppregistryAttributeGroupAssociationsArgs.builder()
///             .id("12456778723424sdffsdfsdq34,12234t3564dsfsdf34asff4ww3")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:servicecatalog:getAppregistryAttributeGroupAssociations
///       arguments:
///         id: 12456778723424sdffsdfsdq34,12234t3564dsfsdf34asff4ww3
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicecatalog_get_appregistry_attribute_group_associations_get_appregistry_attribute_group_associations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppregistryAttributeGroupAssociationsResult>
getAppregistryAttributeGroupAssociations(
  GetAppregistryAttributeGroupAssociationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getAppregistryAttributeGroupAssociations:getAppregistryAttributeGroupAssociations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppregistryAttributeGroupAssociationsResult.fromMap(result);
}

/// Provides information on a Service Catalog Constraint.
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
/// const example = aws.servicecatalog.getConstraint({
///     acceptLanguage: "en",
///     id: "cons-hrvy0335",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.get_constraint(accept_language="en",
///     id="cons-hrvy0335")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ServiceCatalog.GetConstraint.Invoke(new()
///     {
///         AcceptLanguage = "en",
///         Id = "cons-hrvy0335",
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
/// 		_, err := servicecatalog.LookupConstraint(ctx, &servicecatalog.LookupConstraintArgs{
/// 			AcceptLanguage: pulumi.StringRef("en"),
/// 			Id:             "cons-hrvy0335",
/// 		}, nil)
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
/// import com.pulumi.aws.servicecatalog.ServicecatalogFunctions;
/// import com.pulumi.aws.servicecatalog.inputs.GetConstraintArgs;
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
///         final var example = ServicecatalogFunctions.getConstraint(GetConstraintArgs.builder()
///             .acceptLanguage("en")
///             .id("cons-hrvy0335")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:servicecatalog:getConstraint
///       arguments:
///         acceptLanguage: en
///         id: cons-hrvy0335
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicecatalog_get_constraint_get_constraint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConstraintResult> getConstraint(
  GetConstraintArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getConstraint:getConstraint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConstraintResult.fromMap(result);
}

/// Lists the paths to the specified product. A path is how the user has access to a specified product, and is necessary when provisioning a product. A path also determines the constraints put on the product.
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
/// const example = aws.servicecatalog.getLaunchPaths({
///     productId: "prod-yakog5pdriver",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.get_launch_paths(product_id="prod-yakog5pdriver")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ServiceCatalog.GetLaunchPaths.Invoke(new()
///     {
///         ProductId = "prod-yakog5pdriver",
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
/// 		_, err := servicecatalog.GetLaunchPaths(ctx, &servicecatalog.GetLaunchPathsArgs{
/// 			ProductId: "prod-yakog5pdriver",
/// 		}, nil)
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
/// import com.pulumi.aws.servicecatalog.ServicecatalogFunctions;
/// import com.pulumi.aws.servicecatalog.inputs.GetLaunchPathsArgs;
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
///         final var example = ServicecatalogFunctions.getLaunchPaths(GetLaunchPathsArgs.builder()
///             .productId("prod-yakog5pdriver")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:servicecatalog:getLaunchPaths
///       arguments:
///         productId: prod-yakog5pdriver
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicecatalog_get_launch_paths_get_launch_paths_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLaunchPathsResult> getLaunchPaths(
  GetLaunchPathsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getLaunchPaths:getLaunchPaths',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLaunchPathsResult.fromMap(result);
}

/// Provides information for a Service Catalog Portfolio.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const portfolio = aws.servicecatalog.getPortfolio({
///     id: "port-07052002",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// portfolio = aws.servicecatalog.get_portfolio(id="port-07052002")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var portfolio = Aws.ServiceCatalog.GetPortfolio.Invoke(new()
///     {
///         Id = "port-07052002",
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
/// 		_, err := servicecatalog.LookupPortfolio(ctx, &servicecatalog.LookupPortfolioArgs{
/// 			Id: "port-07052002",
/// 		}, nil)
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
/// import com.pulumi.aws.servicecatalog.ServicecatalogFunctions;
/// import com.pulumi.aws.servicecatalog.inputs.GetPortfolioArgs;
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
///         final var portfolio = ServicecatalogFunctions.getPortfolio(GetPortfolioArgs.builder()
///             .id("port-07052002")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   portfolio:
///     fn::invoke:
///       function: aws:servicecatalog:getPortfolio
///       arguments:
///         id: port-07052002
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicecatalog_get_portfolio_get_portfolio_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPortfolioResult> getPortfolio(
  GetPortfolioArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getPortfolio:getPortfolio',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPortfolioResult.fromMap(result);
}

/// Provides information on Service Catalog Portfolio Constraints.
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
/// const example = aws.servicecatalog.getPortfolioConstraints({
///     portfolioId: "port-3lli3b3an",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.get_portfolio_constraints(portfolio_id="port-3lli3b3an")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ServiceCatalog.GetPortfolioConstraints.Invoke(new()
///     {
///         PortfolioId = "port-3lli3b3an",
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
/// 		_, err := servicecatalog.GetPortfolioConstraints(ctx, &servicecatalog.GetPortfolioConstraintsArgs{
/// 			PortfolioId: "port-3lli3b3an",
/// 		}, nil)
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
/// import com.pulumi.aws.servicecatalog.ServicecatalogFunctions;
/// import com.pulumi.aws.servicecatalog.inputs.GetPortfolioConstraintsArgs;
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
///         final var example = ServicecatalogFunctions.getPortfolioConstraints(GetPortfolioConstraintsArgs.builder()
///             .portfolioId("port-3lli3b3an")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:servicecatalog:getPortfolioConstraints
///       arguments:
///         portfolioId: port-3lli3b3an
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicecatalog_get_portfolio_constraints_get_portfolio_constraints_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPortfolioConstraintsResult> getPortfolioConstraints(
  GetPortfolioConstraintsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getPortfolioConstraints:getPortfolioConstraints',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPortfolioConstraintsResult.fromMap(result);
}

/// Use this data source to retrieve information about a Service Catalog product.
///
/// > **NOTE:** A "provisioning artifact" is also known as a "version," and a "distributor" is also known as a "vendor."
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
/// const example = aws.servicecatalog.getProduct({
///     id: "prod-dnigbtea24ste",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.get_product(id="prod-dnigbtea24ste")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ServiceCatalog.GetProduct.Invoke(new()
///     {
///         Id = "prod-dnigbtea24ste",
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
/// 		_, err := servicecatalog.LookupProduct(ctx, &servicecatalog.LookupProductArgs{
/// 			Id: "prod-dnigbtea24ste",
/// 		}, nil)
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
/// import com.pulumi.aws.servicecatalog.ServicecatalogFunctions;
/// import com.pulumi.aws.servicecatalog.inputs.GetProductArgs;
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
///         final var example = ServicecatalogFunctions.getProduct(GetProductArgs.builder()
///             .id("prod-dnigbtea24ste")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:servicecatalog:getProduct
///       arguments:
///         id: prod-dnigbtea24ste
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicecatalog_get_product_get_product_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductResult> getProduct(
  GetProductArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getProduct:getProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductResult.fromMap(result);
}

/// Lists the provisioning artifacts for the specified product.
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
/// const example = aws.servicecatalog.getProvisioningArtifacts({
///     productId: "prod-yakog5pdriver",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.get_provisioning_artifacts(product_id="prod-yakog5pdriver")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ServiceCatalog.GetProvisioningArtifacts.Invoke(new()
///     {
///         ProductId = "prod-yakog5pdriver",
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
/// 		_, err := servicecatalog.GetProvisioningArtifacts(ctx, &servicecatalog.GetProvisioningArtifactsArgs{
/// 			ProductId: "prod-yakog5pdriver",
/// 		}, nil)
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
/// import com.pulumi.aws.servicecatalog.ServicecatalogFunctions;
/// import com.pulumi.aws.servicecatalog.inputs.GetProvisioningArtifactsArgs;
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
///         final var example = ServicecatalogFunctions.getProvisioningArtifacts(GetProvisioningArtifactsArgs.builder()
///             .productId("prod-yakog5pdriver")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:servicecatalog:getProvisioningArtifacts
///       arguments:
///         productId: prod-yakog5pdriver
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicecatalog_get_provisioning_artifacts_get_provisioning_artifacts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProvisioningArtifactsResult> getProvisioningArtifacts(
  GetProvisioningArtifactsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getProvisioningArtifacts:getProvisioningArtifacts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProvisioningArtifactsResult.fromMap(result);
}
