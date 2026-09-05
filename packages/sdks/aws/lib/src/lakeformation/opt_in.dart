import 'package:pulumi/pulumi.dart' as pulumi;
import 'opt_in_args.dart';
import 'opt_in_condition.dart';
import 'opt_in_principal.dart';
import 'opt_in_resource_data.dart';
import 'opt_in_state.dart';

/// Resource for managing an AWS Lake Formation Opt In.
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
/// const example = new aws.lakeformation.OptIn("example", {
///     principals: [{
///         dataLakePrincipalIdentifier: exampleAwsIamRole.arn,
///     }],
///     resourceDatas: [{
///         database: {
///             name: exampleAwsGlueCatalogDatabase.name,
///             catalogId: current.accountId,
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.OptIn("example",
///     principals=[{
///         "data_lake_principal_identifier": example_aws_iam_role["arn"],
///     }],
///     resource_datas=[{
///         "database": {
///             "name": example_aws_glue_catalog_database["name"],
///             "catalog_id": current["accountId"],
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LakeFormation.OptIn("example", new()
///     {
///         Principals = new[]
///         {
///             new Aws.LakeFormation.Inputs.OptInPrincipalArgs
///             {
///                 DataLakePrincipalIdentifier = exampleAwsIamRole.Arn,
///             },
///         },
///         ResourceDatas = new[]
///         {
///             new Aws.LakeFormation.Inputs.OptInResourceDataArgs
///             {
///                 Database = new Aws.LakeFormation.Inputs.OptInResourceDataDatabaseArgs
///                 {
///                     Name = exampleAwsGlueCatalogDatabase.Name,
///                     CatalogId = current.AccountId,
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lakeformation.NewOptIn(ctx, "example", &lakeformation.OptInArgs{
/// 			Principals: lakeformation.OptInPrincipalArray{
/// 				&lakeformation.OptInPrincipalArgs{
/// 					DataLakePrincipalIdentifier: pulumi.Any(exampleAwsIamRole.Arn),
/// 				},
/// 			},
/// 			ResourceDatas: lakeformation.OptInResourceDataArray{
/// 				&lakeformation.OptInResourceDataArgs{
/// 					Database: &lakeformation.OptInResourceDataDatabaseArgs{
/// 						Name:      pulumi.Any(exampleAwsGlueCatalogDatabase.Name),
/// 						CatalogId: pulumi.Any(current.AccountId),
/// 					},
/// 				},
/// 			},
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
/// resource "aws_lakeformation_optin" "example" {
///   principals {
///     data_lake_principal_identifier = exampleAwsIamRole.arn
///   }
///   resource_datas {
///     database = {
///       name       = exampleAwsGlueCatalogDatabase.name
///       catalog_id = current.accountId
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lakeformation.OptIn;
/// import com.pulumi.aws.lakeformation.OptInArgs;
/// import com.pulumi.aws.lakeformation.inputs.OptInPrincipalArgs;
/// import com.pulumi.aws.lakeformation.inputs.OptInResourceDataArgs;
/// import com.pulumi.aws.lakeformation.inputs.OptInResourceDataDatabaseArgs;
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
///         var example = new OptIn("example", OptInArgs.builder()
///             .principals(OptInPrincipalArgs.builder()
///                 .dataLakePrincipalIdentifier(exampleAwsIamRole.arn())
///                 .build())
///             .resourceDatas(OptInResourceDataArgs.builder()
///                 .database(OptInResourceDataDatabaseArgs.builder()
///                     .name(exampleAwsGlueCatalogDatabase.name())
///                     .catalogId(current.accountId())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lakeformation:OptIn
///     properties:
///       principals:
///         - dataLakePrincipalIdentifier: ${exampleAwsIamRole.arn}
///       resourceDatas:
///         - database:
///             name: ${exampleAwsGlueCatalogDatabase.name}
///             catalogId: ${current.accountId}
/// ```
class OptIn extends pulumi.CustomResource {
  /// Lake Formation condition, which applies to permissions and opt-ins that contain an expression. See `condition` Block for more details.
  late final pulumi.Output<List<OptInCondition>?> conditions;
  /// Last modified date and time of the record.
  late final pulumi.Output<String> lastModified;
  /// User who updated the record.
  late final pulumi.Output<String> lastUpdatedBy;
  /// Lake Formation principal. Supported principals are IAM users or IAM roles. See `principal` Block for more details.
  late final pulumi.Output<List<OptInPrincipal>> principals;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Structure for the resource. See `resourceData` Block for more details.
  late final pulumi.Output<List<OptInResourceData>?> resourceDatas;

  /// Creates a new [OptIn].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OptIn]. {@macro pulumi_lakeformation_opt_in_opt_in_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OptIn(
    String name, {
    OptInArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/optIn:OptIn',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    conditions = registerOutput<List<OptInCondition>?>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OptInCondition>(guardedValue, (value) => OptInCondition.fromMap((value as Map).cast<String, dynamic>())); });
    lastModified = registerOutput<String>('lastModified');
    lastUpdatedBy = registerOutput<String>('lastUpdatedBy');
    principals = registerOutput<List<OptInPrincipal>>('principals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OptInPrincipal>(guardedValue, (value) => OptInPrincipal.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    resourceDatas = registerOutput<List<OptInResourceData>?>('resourceDatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OptInResourceData>(guardedValue, (value) => OptInResourceData.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [OptIn] resource's state with the given [name] and [id].
  static OptIn get(
    String name,
    pulumi.Input<String> id, {
    OptInState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OptIn._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OptIn._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/optIn:OptIn',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    conditions = registerOutput<List<OptInCondition>?>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OptInCondition>(guardedValue, (value) => OptInCondition.fromMap((value as Map).cast<String, dynamic>())); });
    lastModified = registerOutput<String>('lastModified');
    lastUpdatedBy = registerOutput<String>('lastUpdatedBy');
    principals = registerOutput<List<OptInPrincipal>>('principals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OptInPrincipal>(guardedValue, (value) => OptInPrincipal.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    resourceDatas = registerOutput<List<OptInResourceData>?>('resourceDatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OptInResourceData>(guardedValue, (value) => OptInResourceData.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [OptIn] resource.
  OptIn.reference(String urn)
    : super(
        'aws:lakeformation/optIn:OptIn',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    conditions = registerOutput<List<OptInCondition>?>('conditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OptInCondition>(guardedValue, (value) => OptInCondition.fromMap((value as Map).cast<String, dynamic>())); });
    lastModified = registerOutput<String>('lastModified');
    lastUpdatedBy = registerOutput<String>('lastUpdatedBy');
    principals = registerOutput<List<OptInPrincipal>>('principals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OptInPrincipal>(guardedValue, (value) => OptInPrincipal.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    resourceDatas = registerOutput<List<OptInResourceData>?>('resourceDatas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OptInResourceData>(guardedValue, (value) => OptInResourceData.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
