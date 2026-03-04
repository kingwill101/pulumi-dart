import 'package:pulumi/pulumi.dart' as pulumi;
import 'insight_args.dart';
import 'insight_filters.dart';
import 'insight_state.dart';

/// Provides a Security Hub custom insight resource. See the [Managing custom insights section](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-custom-insights.html) of the AWS User Guide for more information.
///
/// ## Example Usage
///
/// ### Filter by AWS account ID
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// const exampleInsight = new aws.securityhub.Insight("example", {
///     filters: {
///         awsAccountIds: [
///             {
///                 comparison: "EQUALS",
///                 value: "1234567890",
///             },
///             {
///                 comparison: "EQUALS",
///                 value: "09876543210",
///             },
///         ],
///     },
///     groupByAttribute: "AwsAccountId",
///     name: "example-insight",
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.Account("example")
/// example_insight = aws.securityhub.Insight("example",
///     filters={
///         "aws_account_ids": [
///             {
///                 "comparison": "EQUALS",
///                 "value": "1234567890",
///             },
///             {
///                 "comparison": "EQUALS",
///                 "value": "09876543210",
///             },
///         ],
///     },
///     group_by_attribute="AwsAccountId",
///     name="example-insight",
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
///     var example = new Aws.SecurityHub.Account("example");
///
///     var exampleInsight = new Aws.SecurityHub.Insight("example", new()
///     {
///         Filters = new Aws.SecurityHub.Inputs.InsightFiltersArgs
///         {
///             AwsAccountIds = new[]
///             {
///                 new Aws.SecurityHub.Inputs.InsightFiltersAwsAccountIdArgs
///                 {
///                     Comparison = "EQUALS",
///                     Value = "1234567890",
///                 },
///                 new Aws.SecurityHub.Inputs.InsightFiltersAwsAccountIdArgs
///                 {
///                     Comparison = "EQUALS",
///                     Value = "09876543210",
///                 },
///             },
///         },
///         GroupByAttribute = "AwsAccountId",
///         Name = "example-insight",
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
/// 		example, err := securityhub.NewAccount(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewInsight(ctx, "example", &securityhub.InsightArgs{
/// 			Filters: &securityhub.InsightFiltersArgs{
/// 				AwsAccountIds: securityhub.InsightFiltersAwsAccountIdArray{
/// 					&securityhub.InsightFiltersAwsAccountIdArgs{
/// 						Comparison: pulumi.String("EQUALS"),
/// 						Value:      pulumi.String("1234567890"),
/// 					},
/// 					&securityhub.InsightFiltersAwsAccountIdArgs{
/// 						Comparison: pulumi.String("EQUALS"),
/// 						Value:      pulumi.String("09876543210"),
/// 					},
/// 				},
/// 			},
/// 			GroupByAttribute: pulumi.String("AwsAccountId"),
/// 			Name:             pulumi.String("example-insight"),
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
/// import com.pulumi.aws.securityhub.Insight;
/// import com.pulumi.aws.securityhub.InsightArgs;
/// import com.pulumi.aws.securityhub.inputs.InsightFiltersArgs;
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
///         var exampleInsight = new Insight("exampleInsight", InsightArgs.builder()
///             .filters(InsightFiltersArgs.builder()
///                 .awsAccountIds(
///                     InsightFiltersAwsAccountIdArgs.builder()
///                         .comparison("EQUALS")
///                         .value("1234567890")
///                         .build(),
///                     InsightFiltersAwsAccountIdArgs.builder()
///                         .comparison("EQUALS")
///                         .value("09876543210")
///                         .build())
///                 .build())
///             .groupByAttribute("AwsAccountId")
///             .name("example-insight")
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
///   exampleInsight:
///     type: aws:securityhub:Insight
///     name: example
///     properties:
///       filters:
///         awsAccountIds:
///           - comparison: EQUALS
///             value: '1234567890'
///           - comparison: EQUALS
///             value: '09876543210'
///       groupByAttribute: AwsAccountId
///       name: example-insight
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ### Filter by date range
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// const exampleInsight = new aws.securityhub.Insight("example", {
///     filters: {
///         createdAts: [{
///             dateRange: {
///                 unit: "DAYS",
///                 value: 5,
///             },
///         }],
///     },
///     groupByAttribute: "CreatedAt",
///     name: "example-insight",
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.Account("example")
/// example_insight = aws.securityhub.Insight("example",
///     filters={
///         "created_ats": [{
///             "date_range": {
///                 "unit": "DAYS",
///                 "value": 5,
///             },
///         }],
///     },
///     group_by_attribute="CreatedAt",
///     name="example-insight",
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
///     var example = new Aws.SecurityHub.Account("example");
///
///     var exampleInsight = new Aws.SecurityHub.Insight("example", new()
///     {
///         Filters = new Aws.SecurityHub.Inputs.InsightFiltersArgs
///         {
///             CreatedAts = new[]
///             {
///                 new Aws.SecurityHub.Inputs.InsightFiltersCreatedAtArgs
///                 {
///                     DateRange = new Aws.SecurityHub.Inputs.InsightFiltersCreatedAtDateRangeArgs
///                     {
///                         Unit = "DAYS",
///                         Value = 5,
///                     },
///                 },
///             },
///         },
///         GroupByAttribute = "CreatedAt",
///         Name = "example-insight",
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
/// 		example, err := securityhub.NewAccount(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewInsight(ctx, "example", &securityhub.InsightArgs{
/// 			Filters: &securityhub.InsightFiltersArgs{
/// 				CreatedAts: securityhub.InsightFiltersCreatedAtArray{
/// 					&securityhub.InsightFiltersCreatedAtArgs{
/// 						DateRange: &securityhub.InsightFiltersCreatedAtDateRangeArgs{
/// 							Unit:  pulumi.String("DAYS"),
/// 							Value: pulumi.Int(5),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			GroupByAttribute: pulumi.String("CreatedAt"),
/// 			Name:             pulumi.String("example-insight"),
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
/// import com.pulumi.aws.securityhub.Insight;
/// import com.pulumi.aws.securityhub.InsightArgs;
/// import com.pulumi.aws.securityhub.inputs.InsightFiltersArgs;
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
///         var exampleInsight = new Insight("exampleInsight", InsightArgs.builder()
///             .filters(InsightFiltersArgs.builder()
///                 .createdAts(InsightFiltersCreatedAtArgs.builder()
///                     .dateRange(InsightFiltersCreatedAtDateRangeArgs.builder()
///                         .unit("DAYS")
///                         .value(5)
///                         .build())
///                     .build())
///                 .build())
///             .groupByAttribute("CreatedAt")
///             .name("example-insight")
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
///   exampleInsight:
///     type: aws:securityhub:Insight
///     name: example
///     properties:
///       filters:
///         createdAts:
///           - dateRange:
///               unit: DAYS
///               value: 5
///       groupByAttribute: CreatedAt
///       name: example-insight
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ### Filter by destination IPv4 address
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// const exampleInsight = new aws.securityhub.Insight("example", {
///     filters: {
///         networkDestinationIpv4s: [{
///             cidr: "10.0.0.0/16",
///         }],
///     },
///     groupByAttribute: "NetworkDestinationIpV4",
///     name: "example-insight",
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.Account("example")
/// example_insight = aws.securityhub.Insight("example",
///     filters={
///         "network_destination_ipv4s": [{
///             "cidr": "10.0.0.0/16",
///         }],
///     },
///     group_by_attribute="NetworkDestinationIpV4",
///     name="example-insight",
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
///     var example = new Aws.SecurityHub.Account("example");
///
///     var exampleInsight = new Aws.SecurityHub.Insight("example", new()
///     {
///         Filters = new Aws.SecurityHub.Inputs.InsightFiltersArgs
///         {
///             NetworkDestinationIpv4s = new[]
///             {
///                 new Aws.SecurityHub.Inputs.InsightFiltersNetworkDestinationIpv4Args
///                 {
///                     Cidr = "10.0.0.0/16",
///                 },
///             },
///         },
///         GroupByAttribute = "NetworkDestinationIpV4",
///         Name = "example-insight",
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
/// 		example, err := securityhub.NewAccount(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewInsight(ctx, "example", &securityhub.InsightArgs{
/// 			Filters: &securityhub.InsightFiltersArgs{
/// 				NetworkDestinationIpv4s: securityhub.InsightFiltersNetworkDestinationIpv4Array{
/// 					&securityhub.InsightFiltersNetworkDestinationIpv4Args{
/// 						Cidr: pulumi.String("10.0.0.0/16"),
/// 					},
/// 				},
/// 			},
/// 			GroupByAttribute: pulumi.String("NetworkDestinationIpV4"),
/// 			Name:             pulumi.String("example-insight"),
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
/// import com.pulumi.aws.securityhub.Insight;
/// import com.pulumi.aws.securityhub.InsightArgs;
/// import com.pulumi.aws.securityhub.inputs.InsightFiltersArgs;
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
///         var exampleInsight = new Insight("exampleInsight", InsightArgs.builder()
///             .filters(InsightFiltersArgs.builder()
///                 .networkDestinationIpv4s(InsightFiltersNetworkDestinationIpv4Args.builder()
///                     .cidr("10.0.0.0/16")
///                     .build())
///                 .build())
///             .groupByAttribute("NetworkDestinationIpV4")
///             .name("example-insight")
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
///   exampleInsight:
///     type: aws:securityhub:Insight
///     name: example
///     properties:
///       filters:
///         networkDestinationIpv4s:
///           - cidr: 10.0.0.0/16
///       groupByAttribute: NetworkDestinationIpV4
///       name: example-insight
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ### Filter by finding's confidence
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// const exampleInsight = new aws.securityhub.Insight("example", {
///     filters: {
///         confidences: [{
///             gte: "80",
///         }],
///     },
///     groupByAttribute: "Confidence",
///     name: "example-insight",
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.Account("example")
/// example_insight = aws.securityhub.Insight("example",
///     filters={
///         "confidences": [{
///             "gte": "80",
///         }],
///     },
///     group_by_attribute="Confidence",
///     name="example-insight",
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
///     var example = new Aws.SecurityHub.Account("example");
///
///     var exampleInsight = new Aws.SecurityHub.Insight("example", new()
///     {
///         Filters = new Aws.SecurityHub.Inputs.InsightFiltersArgs
///         {
///             Confidences = new[]
///             {
///                 new Aws.SecurityHub.Inputs.InsightFiltersConfidenceArgs
///                 {
///                     Gte = "80",
///                 },
///             },
///         },
///         GroupByAttribute = "Confidence",
///         Name = "example-insight",
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
/// 		example, err := securityhub.NewAccount(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewInsight(ctx, "example", &securityhub.InsightArgs{
/// 			Filters: &securityhub.InsightFiltersArgs{
/// 				Confidences: securityhub.InsightFiltersConfidenceArray{
/// 					&securityhub.InsightFiltersConfidenceArgs{
/// 						Gte: pulumi.String("80"),
/// 					},
/// 				},
/// 			},
/// 			GroupByAttribute: pulumi.String("Confidence"),
/// 			Name:             pulumi.String("example-insight"),
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
/// import com.pulumi.aws.securityhub.Insight;
/// import com.pulumi.aws.securityhub.InsightArgs;
/// import com.pulumi.aws.securityhub.inputs.InsightFiltersArgs;
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
///         var exampleInsight = new Insight("exampleInsight", InsightArgs.builder()
///             .filters(InsightFiltersArgs.builder()
///                 .confidences(InsightFiltersConfidenceArgs.builder()
///                     .gte("80")
///                     .build())
///                 .build())
///             .groupByAttribute("Confidence")
///             .name("example-insight")
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
///   exampleInsight:
///     type: aws:securityhub:Insight
///     name: example
///     properties:
///       filters:
///         confidences:
///           - gte: '80'
///       groupByAttribute: Confidence
///       name: example-insight
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ### Filter by resource tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// const exampleInsight = new aws.securityhub.Insight("example", {
///     filters: {
///         resourceTags: [{
///             comparison: "EQUALS",
///             key: "Environment",
///             value: "Production",
///         }],
///     },
///     groupByAttribute: "ResourceTags",
///     name: "example-insight",
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.Account("example")
/// example_insight = aws.securityhub.Insight("example",
///     filters={
///         "resource_tags": [{
///             "comparison": "EQUALS",
///             "key": "Environment",
///             "value": "Production",
///         }],
///     },
///     group_by_attribute="ResourceTags",
///     name="example-insight",
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
///     var example = new Aws.SecurityHub.Account("example");
///
///     var exampleInsight = new Aws.SecurityHub.Insight("example", new()
///     {
///         Filters = new Aws.SecurityHub.Inputs.InsightFiltersArgs
///         {
///             ResourceTags = new[]
///             {
///                 new Aws.SecurityHub.Inputs.InsightFiltersResourceTagArgs
///                 {
///                     Comparison = "EQUALS",
///                     Key = "Environment",
///                     Value = "Production",
///                 },
///             },
///         },
///         GroupByAttribute = "ResourceTags",
///         Name = "example-insight",
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
/// 		example, err := securityhub.NewAccount(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewInsight(ctx, "example", &securityhub.InsightArgs{
/// 			Filters: &securityhub.InsightFiltersArgs{
/// 				ResourceTags: securityhub.InsightFiltersResourceTagArray{
/// 					&securityhub.InsightFiltersResourceTagArgs{
/// 						Comparison: pulumi.String("EQUALS"),
/// 						Key:        pulumi.String("Environment"),
/// 						Value:      pulumi.String("Production"),
/// 					},
/// 				},
/// 			},
/// 			GroupByAttribute: pulumi.String("ResourceTags"),
/// 			Name:             pulumi.String("example-insight"),
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
/// import com.pulumi.aws.securityhub.Insight;
/// import com.pulumi.aws.securityhub.InsightArgs;
/// import com.pulumi.aws.securityhub.inputs.InsightFiltersArgs;
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
///         var exampleInsight = new Insight("exampleInsight", InsightArgs.builder()
///             .filters(InsightFiltersArgs.builder()
///                 .resourceTags(InsightFiltersResourceTagArgs.builder()
///                     .comparison("EQUALS")
///                     .key("Environment")
///                     .value("Production")
///                     .build())
///                 .build())
///             .groupByAttribute("ResourceTags")
///             .name("example-insight")
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
///   exampleInsight:
///     type: aws:securityhub:Insight
///     name: example
///     properties:
///       filters:
///         resourceTags:
///           - comparison: EQUALS
///             key: Environment
///             value: Production
///       groupByAttribute: ResourceTags
///       name: example-insight
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Security Hub insights using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/insight:Insight example arn:aws:securityhub:us-west-2:1234567890:insight/1234567890/custom/91299ed7-abd0-4e44-a858-d0b15e37141a
/// ```
class Insight extends pulumi.CustomResource {
  /// ARN of the insight.
  late final pulumi.Output<String> arn;

  /// A configuration block including one or more (up to 10 distinct) attributes used to filter the findings included in the insight. The insight only includes findings that match criteria defined in the filters. See filters below for more details.
  late final pulumi.Output<InsightFilters> filters;

  /// The attribute used to group the findings for the insight e.g., if an insight is grouped by `ResourceId`, then the insight produces a list of resource identifiers.
  late final pulumi.Output<String> groupByAttribute;

  /// The name of the custom insight.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [Insight].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Insight]. {@macro pulumi_securityhub_insight_insight_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Insight(
    String name, {
    InsightArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:securityhub/insight:Insight',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    filters = registerOutput<InsightFilters>('filters');
    groupByAttribute = registerOutput<String>('groupByAttribute');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [Insight] resource's state with the given [name] and [id].
  static Insight get(
    String name,
    pulumi.Input<String> id, {
    InsightState? state,
  }) {
    return Insight._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Insight._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:securityhub/insight:Insight',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    filters = registerOutput<InsightFilters>('filters');
    groupByAttribute = registerOutput<String>('groupByAttribute');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }
}
