import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entry_group_iam_policy_args.dart';
import 'get_entry_group_iam_policy_result.dart';
import 'get_policy_tag_iam_policy_args.dart';
import 'get_policy_tag_iam_policy_result.dart';
import 'get_tag_template_iam_policy_args.dart';
import 'get_tag_template_iam_policy_result.dart';
import 'get_taxonomy_iam_policy_args.dart';
import 'get_taxonomy_iam_policy_result.dart';

/// Retrieves the current IAM policy data for entrygroup
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.datacatalog.getEntryGroupIamPolicy({
///     entryGroup: basicEntryGroup.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.datacatalog.get_entry_group_iam_policy(entry_group=basic_entry_group["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataCatalog.GetEntryGroupIamPolicy.Invoke(new()
///     {
///         EntryGroup = basicEntryGroup.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datacatalog.LookupEntryGroupIamPolicy(ctx, &datacatalog.LookupEntryGroupIamPolicyArgs{
/// 			EntryGroup: basicEntryGroup.Name,
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
/// import com.pulumi.gcp.datacatalog.DatacatalogFunctions;
/// import com.pulumi.gcp.datacatalog.inputs.GetEntryGroupIamPolicyArgs;
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
///         final var policy = DatacatalogFunctions.getEntryGroupIamPolicy(GetEntryGroupIamPolicyArgs.builder()
///             .entryGroup(basicEntryGroup.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:datacatalog:getEntryGroupIamPolicy
///       arguments:
///         entryGroup: ${basicEntryGroup.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_get_entry_group_iam_policy_get_entry_group_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntryGroupIamPolicyResult> getEntryGroupIamPolicy(
  GetEntryGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datacatalog/getEntryGroupIamPolicy:getEntryGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for policytag
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.datacatalog.getPolicyTagIamPolicy({
///     policyTag: basicPolicyTag.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.datacatalog.get_policy_tag_iam_policy(policy_tag=basic_policy_tag["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataCatalog.GetPolicyTagIamPolicy.Invoke(new()
///     {
///         PolicyTag = basicPolicyTag.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datacatalog.LookupPolicyTagIamPolicy(ctx, &datacatalog.LookupPolicyTagIamPolicyArgs{
/// 			PolicyTag: basicPolicyTag.Name,
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
/// import com.pulumi.gcp.datacatalog.DatacatalogFunctions;
/// import com.pulumi.gcp.datacatalog.inputs.GetPolicyTagIamPolicyArgs;
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
///         final var policy = DatacatalogFunctions.getPolicyTagIamPolicy(GetPolicyTagIamPolicyArgs.builder()
///             .policyTag(basicPolicyTag.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:datacatalog:getPolicyTagIamPolicy
///       arguments:
///         policyTag: ${basicPolicyTag.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_get_policy_tag_iam_policy_get_policy_tag_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyTagIamPolicyResult> getPolicyTagIamPolicy(
  GetPolicyTagIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datacatalog/getPolicyTagIamPolicy:getPolicyTagIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyTagIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for tagtemplate
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.datacatalog.getTagTemplateIamPolicy({
///     tagTemplate: basicTagTemplate.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.datacatalog.get_tag_template_iam_policy(tag_template=basic_tag_template["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataCatalog.GetTagTemplateIamPolicy.Invoke(new()
///     {
///         TagTemplate = basicTagTemplate.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datacatalog.LookupTagTemplateIamPolicy(ctx, &datacatalog.LookupTagTemplateIamPolicyArgs{
/// 			TagTemplate: basicTagTemplate.Name,
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
/// import com.pulumi.gcp.datacatalog.DatacatalogFunctions;
/// import com.pulumi.gcp.datacatalog.inputs.GetTagTemplateIamPolicyArgs;
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
///         final var policy = DatacatalogFunctions.getTagTemplateIamPolicy(GetTagTemplateIamPolicyArgs.builder()
///             .tagTemplate(basicTagTemplate.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:datacatalog:getTagTemplateIamPolicy
///       arguments:
///         tagTemplate: ${basicTagTemplate.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_get_tag_template_iam_policy_get_tag_template_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagTemplateIamPolicyResult> getTagTemplateIamPolicy(
  GetTagTemplateIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datacatalog/getTagTemplateIamPolicy:getTagTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagTemplateIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for taxonomy
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.datacatalog.getTaxonomyIamPolicy({
///     taxonomy: basicTaxonomy.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.datacatalog.get_taxonomy_iam_policy(taxonomy=basic_taxonomy["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataCatalog.GetTaxonomyIamPolicy.Invoke(new()
///     {
///         Taxonomy = basicTaxonomy.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datacatalog.LookupTaxonomyIamPolicy(ctx, &datacatalog.LookupTaxonomyIamPolicyArgs{
/// 			Taxonomy: basicTaxonomy.Name,
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
/// import com.pulumi.gcp.datacatalog.DatacatalogFunctions;
/// import com.pulumi.gcp.datacatalog.inputs.GetTaxonomyIamPolicyArgs;
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
///         final var policy = DatacatalogFunctions.getTaxonomyIamPolicy(GetTaxonomyIamPolicyArgs.builder()
///             .taxonomy(basicTaxonomy.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:datacatalog:getTaxonomyIamPolicy
///       arguments:
///         taxonomy: ${basicTaxonomy.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_get_taxonomy_iam_policy_get_taxonomy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaxonomyIamPolicyResult> getTaxonomyIamPolicy(
  GetTaxonomyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datacatalog/getTaxonomyIamPolicy:getTaxonomyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaxonomyIamPolicyResult.fromMap(result);
}
