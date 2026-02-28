import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_args.dart';
import 'get_data_set_result.dart';
import 'get_quicksight_analysis_args.dart';
import 'get_quicksight_analysis_result.dart';
import 'get_quicksight_group_args.dart';
import 'get_quicksight_group_result.dart';
import 'get_quicksight_user_args.dart';
import 'get_quicksight_user_result.dart';
import 'get_theme_args.dart';
import 'get_theme_result.dart';

/// Data source for managing a QuickSight Data Set.
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
/// const example = aws.quicksight.getDataSet({
///     dataSetId: "example-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.get_data_set(data_set_id="example-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Quicksight.GetDataSet.Invoke(new()
///     {
///         DataSetId = "example-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.LookupDataSet(ctx, &quicksight.LookupDataSetArgs{
/// 			DataSetId: "example-id",
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
/// import com.pulumi.aws.quicksight.QuicksightFunctions;
/// import com.pulumi.aws.quicksight.inputs.GetDataSetArgs;
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
///         final var example = QuicksightFunctions.getDataSet(GetDataSetArgs.builder()
///             .dataSetId("example-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:quicksight:getDataSet
///       arguments:
///         dataSetId: example-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_quicksight_get_data_set_get_data_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataSetResult> getDataSet(
  GetDataSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:quicksight/getDataSet:getDataSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataSetResult.fromMap(result);
}

/// Data source for managing an AWS QuickSight Analysis.
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
/// const example = aws.quicksight.getQuicksightAnalysis({
///     analysisId: "example-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.get_quicksight_analysis(analysis_id="example-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Quicksight.GetQuicksightAnalysis.Invoke(new()
///     {
///         AnalysisId = "example-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.GetQuicksightAnalysis(ctx, &quicksight.GetQuicksightAnalysisArgs{
/// 			AnalysisId: "example-id",
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
/// import com.pulumi.aws.quicksight.QuicksightFunctions;
/// import com.pulumi.aws.quicksight.inputs.GetQuicksightAnalysisArgs;
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
///         final var example = QuicksightFunctions.getQuicksightAnalysis(GetQuicksightAnalysisArgs.builder()
///             .analysisId("example-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:quicksight:getQuicksightAnalysis
///       arguments:
///         analysisId: example-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_quicksight_get_quicksight_analysis_get_quicksight_analysis_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQuicksightAnalysisResult> getQuicksightAnalysis(
  GetQuicksightAnalysisArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:quicksight/getQuicksightAnalysis:getQuicksightAnalysis',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQuicksightAnalysisResult.fromMap(result);
}

/// This data source can be used to fetch information about a specific
/// QuickSight group. By using this data source, you can reference QuickSight group
/// properties without having to hard code ARNs or unique IDs as input.
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
/// const example = aws.quicksight.getQuicksightGroup({
///     groupName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.get_quicksight_group(group_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Quicksight.GetQuicksightGroup.Invoke(new()
///     {
///         GroupName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.GetQuicksightGroup(ctx, &quicksight.GetQuicksightGroupArgs{
/// 			GroupName: "example",
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
/// import com.pulumi.aws.quicksight.QuicksightFunctions;
/// import com.pulumi.aws.quicksight.inputs.GetQuicksightGroupArgs;
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
///         final var example = QuicksightFunctions.getQuicksightGroup(GetQuicksightGroupArgs.builder()
///             .groupName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:quicksight:getQuicksightGroup
///       arguments:
///         groupName: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_quicksight_get_quicksight_group_get_quicksight_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQuicksightGroupResult> getQuicksightGroup(
  GetQuicksightGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:quicksight/getQuicksightGroup:getQuicksightGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQuicksightGroupResult.fromMap(result);
}

/// This data source can be used to fetch information about a specific
/// QuickSight user. By using this data source, you can reference QuickSight user
/// properties without having to hard code ARNs or unique IDs as input.
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
/// const example = aws.quicksight.getQuicksightUser({
///     userName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.get_quicksight_user(user_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Quicksight.GetQuicksightUser.Invoke(new()
///     {
///         UserName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.GetQuicksightUser(ctx, &quicksight.GetQuicksightUserArgs{
/// 			UserName: "example",
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
/// import com.pulumi.aws.quicksight.QuicksightFunctions;
/// import com.pulumi.aws.quicksight.inputs.GetQuicksightUserArgs;
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
///         final var example = QuicksightFunctions.getQuicksightUser(GetQuicksightUserArgs.builder()
///             .userName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:quicksight:getQuicksightUser
///       arguments:
///         userName: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_quicksight_get_quicksight_user_get_quicksight_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQuicksightUserResult> getQuicksightUser(
  GetQuicksightUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:quicksight/getQuicksightUser:getQuicksightUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQuicksightUserResult.fromMap(result);
}

/// Data source for managing an AWS QuickSight Theme.
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
/// const example = aws.quicksight.getTheme({
///     themeId: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.get_theme(theme_id="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Quicksight.GetTheme.Invoke(new()
///     {
///         ThemeId = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.LookupTheme(ctx, &quicksight.LookupThemeArgs{
/// 			ThemeId: "example",
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
/// import com.pulumi.aws.quicksight.QuicksightFunctions;
/// import com.pulumi.aws.quicksight.inputs.GetThemeArgs;
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
///         final var example = QuicksightFunctions.getTheme(GetThemeArgs.builder()
///             .themeId("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:quicksight:getTheme
///       arguments:
///         themeId: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_quicksight_get_theme_get_theme_args_doc}
/// [options] Invoke options controlling this call.
Future<GetThemeResult> getTheme(
  GetThemeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:quicksight/getTheme:getTheme',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetThemeResult.fromMap(result);
}
