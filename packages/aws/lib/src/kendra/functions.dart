import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_experience_args.dart';
import 'get_experience_result.dart';
import 'get_faq_args.dart';
import 'get_faq_result.dart';
import 'get_index_args.dart';
import 'get_index_result.dart';
import 'get_query_suggestions_block_list_args.dart';
import 'get_query_suggestions_block_list_result.dart';
import 'get_thesaurus_args.dart';
import 'get_thesaurus_result.dart';

/// Provides details about a specific Amazon Kendra Experience.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.kendra.getExperience({
///     experienceId: "87654321-1234-4321-4321-321987654321",
///     indexId: "12345678-1234-1234-1234-123456789123",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.get_experience(experience_id="87654321-1234-4321-4321-321987654321",
///     index_id="12345678-1234-1234-1234-123456789123")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Kendra.GetExperience.Invoke(new()
///     {
///         ExperienceId = "87654321-1234-4321-4321-321987654321",
///         IndexId = "12345678-1234-1234-1234-123456789123",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.LookupExperience(ctx, &kendra.LookupExperienceArgs{
/// 			ExperienceId: "87654321-1234-4321-4321-321987654321",
/// 			IndexId:      "12345678-1234-1234-1234-123456789123",
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
/// import com.pulumi.aws.kendra.KendraFunctions;
/// import com.pulumi.aws.kendra.inputs.GetExperienceArgs;
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
///         final var example = KendraFunctions.getExperience(GetExperienceArgs.builder()
///             .experienceId("87654321-1234-4321-4321-321987654321")
///             .indexId("12345678-1234-1234-1234-123456789123")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:kendra:getExperience
///       arguments:
///         experienceId: 87654321-1234-4321-4321-321987654321
///         indexId: 12345678-1234-1234-1234-123456789123
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kendra_get_experience_get_experience_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExperienceResult> getExperience(
  GetExperienceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kendra/getExperience:getExperience',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExperienceResult.fromMap(result);
}

/// Provides details about a specific Amazon Kendra Faq.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.kendra.getFaq({
///     faqId: "87654321-1234-4321-4321-321987654321",
///     indexId: "12345678-1234-1234-1234-123456789123",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.kendra.get_faq(faq_id="87654321-1234-4321-4321-321987654321",
///     index_id="12345678-1234-1234-1234-123456789123")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Kendra.GetFaq.Invoke(new()
///     {
///         FaqId = "87654321-1234-4321-4321-321987654321",
///         IndexId = "12345678-1234-1234-1234-123456789123",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.LookupFaq(ctx, &kendra.LookupFaqArgs{
/// 			FaqId:   "87654321-1234-4321-4321-321987654321",
/// 			IndexId: "12345678-1234-1234-1234-123456789123",
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
/// import com.pulumi.aws.kendra.KendraFunctions;
/// import com.pulumi.aws.kendra.inputs.GetFaqArgs;
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
///         final var test = KendraFunctions.getFaq(GetFaqArgs.builder()
///             .faqId("87654321-1234-4321-4321-321987654321")
///             .indexId("12345678-1234-1234-1234-123456789123")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:kendra:getFaq
///       arguments:
///         faqId: 87654321-1234-4321-4321-321987654321
///         indexId: 12345678-1234-1234-1234-123456789123
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kendra_get_faq_get_faq_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFaqResult> getFaq(
  GetFaqArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kendra/getFaq:getFaq',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFaqResult.fromMap(result);
}

/// Provides details about a specific Amazon Kendra Index.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.kendra.getIndex({
///     id: "12345678-1234-1234-1234-123456789123",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.get_index(id="12345678-1234-1234-1234-123456789123")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Kendra.GetIndex.Invoke(new()
///     {
///         Id = "12345678-1234-1234-1234-123456789123",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.LookupIndex(ctx, &kendra.LookupIndexArgs{
/// 			Id: "12345678-1234-1234-1234-123456789123",
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
/// import com.pulumi.aws.kendra.KendraFunctions;
/// import com.pulumi.aws.kendra.inputs.GetIndexArgs;
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
///         final var example = KendraFunctions.getIndex(GetIndexArgs.builder()
///             .id("12345678-1234-1234-1234-123456789123")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:kendra:getIndex
///       arguments:
///         id: 12345678-1234-1234-1234-123456789123
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kendra_get_index_get_index_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIndexResult> getIndex(
  GetIndexArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kendra/getIndex:getIndex',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexResult.fromMap(result);
}

/// Provides details about a specific Amazon Kendra block list used for query suggestions for an index.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.kendra.getQuerySuggestionsBlockList({
///     indexId: "12345678-1234-1234-1234-123456789123",
///     querySuggestionsBlockListId: "87654321-1234-4321-4321-321987654321",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.get_query_suggestions_block_list(index_id="12345678-1234-1234-1234-123456789123",
///     query_suggestions_block_list_id="87654321-1234-4321-4321-321987654321")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Kendra.GetQuerySuggestionsBlockList.Invoke(new()
///     {
///         IndexId = "12345678-1234-1234-1234-123456789123",
///         QuerySuggestionsBlockListId = "87654321-1234-4321-4321-321987654321",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.LookupQuerySuggestionsBlockList(ctx, &kendra.LookupQuerySuggestionsBlockListArgs{
/// 			IndexId:                     "12345678-1234-1234-1234-123456789123",
/// 			QuerySuggestionsBlockListId: "87654321-1234-4321-4321-321987654321",
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
/// import com.pulumi.aws.kendra.KendraFunctions;
/// import com.pulumi.aws.kendra.inputs.GetQuerySuggestionsBlockListArgs;
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
///         final var example = KendraFunctions.getQuerySuggestionsBlockList(GetQuerySuggestionsBlockListArgs.builder()
///             .indexId("12345678-1234-1234-1234-123456789123")
///             .querySuggestionsBlockListId("87654321-1234-4321-4321-321987654321")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:kendra:getQuerySuggestionsBlockList
///       arguments:
///         indexId: 12345678-1234-1234-1234-123456789123
///         querySuggestionsBlockListId: 87654321-1234-4321-4321-321987654321
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kendra_get_query_suggestions_block_list_get_query_suggestions_block_list_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQuerySuggestionsBlockListResult> getQuerySuggestionsBlockList(
  GetQuerySuggestionsBlockListArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kendra/getQuerySuggestionsBlockList:getQuerySuggestionsBlockList',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQuerySuggestionsBlockListResult.fromMap(result);
}

/// Provides details about a specific Amazon Kendra Thesaurus.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.kendra.getThesaurus({
///     indexId: "12345678-1234-1234-1234-123456789123",
///     thesaurusId: "87654321-1234-4321-4321-321987654321",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.get_thesaurus(index_id="12345678-1234-1234-1234-123456789123",
///     thesaurus_id="87654321-1234-4321-4321-321987654321")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Kendra.GetThesaurus.Invoke(new()
///     {
///         IndexId = "12345678-1234-1234-1234-123456789123",
///         ThesaurusId = "87654321-1234-4321-4321-321987654321",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.LookupThesaurus(ctx, &kendra.LookupThesaurusArgs{
/// 			IndexId:     "12345678-1234-1234-1234-123456789123",
/// 			ThesaurusId: "87654321-1234-4321-4321-321987654321",
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
/// import com.pulumi.aws.kendra.KendraFunctions;
/// import com.pulumi.aws.kendra.inputs.GetThesaurusArgs;
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
///         final var example = KendraFunctions.getThesaurus(GetThesaurusArgs.builder()
///             .indexId("12345678-1234-1234-1234-123456789123")
///             .thesaurusId("87654321-1234-4321-4321-321987654321")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:kendra:getThesaurus
///       arguments:
///         indexId: 12345678-1234-1234-1234-123456789123
///         thesaurusId: 87654321-1234-4321-4321-321987654321
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kendra_get_thesaurus_get_thesaurus_args_doc}
/// [options] Invoke options controlling this call.
Future<GetThesaurusResult> getThesaurus(
  GetThesaurusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kendra/getThesaurus:getThesaurus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetThesaurusResult.fromMap(result);
}
